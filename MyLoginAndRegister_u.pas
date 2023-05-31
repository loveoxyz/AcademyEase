unit MyLoginAndRegister_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, dmUsers_u, DB, ExtCtrls, DBCtrls, Grids,
  DBGrids, clsUser_u;

type
  TfrmMyLoginAndRegister = class(TForm)
    pgcMyLoginAndRegister: TPageControl;
    tsLogin: TTabSheet;
    lblLoginUsername: TLabel;
    lblLoginPassword: TLabel;
    edtLoginUsername: TEdit;
    edtLoginPassword: TEdit;
    btnLogin: TButton;
    tsRegister: TTabSheet;
    lblRegisterName: TLabel;
    lblRegisterSurname: TLabel;
    btnRegister: TButton;
    lblRegisterEmail: TLabel;
    lblRegisterPassword: TLabel;
    lblRegisterConfirmPassword: TLabel;
    edtRegisterName: TEdit;
    edtRegisterSurname: TEdit;
    edtRegisterEmail: TEdit;
    edtRegisterPassword: TEdit;
    edtRegisterConfirmPassword: TEdit;
    lblRegisterUsername: TLabel;
    edtRegisterUsername: TEdit;
    tsWelcome: TTabSheet;
    lblWelcome: TLabel;
    memWelcome: TMemo;
    lblRegister: TLabel;
    lblLogin: TLabel;
    btnWelcomeRegister: TButton;
    btnWelcomeLogin: TButton;
    function RegisterToDatabase(sUsername, sFirstName, sSurname, sEmail, sPassword: String): boolean;
    procedure btnLoginClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnWelcomeRegisterClick(Sender: TObject);
    procedure btnWelcomeLoginClick(Sender: TObject);

    // Custom functions and procedures

  private
    { Private declarations }
  public
    { Public declarations }
    // Defining the logged in user
    sLoggedInUser : String ;
  end;

var
  frmMyLoginAndRegister: TfrmMyLoginAndRegister;

implementation
  uses MySchool_u;

{$R *.dfm}

function TfrmMyLoginAndRegister.RegisterToDatabase(sUsername, sFirstName,
  sSurname, sEmail, sPassword: String): boolean;
begin
  dmUsers.tblUsers.Open;
  dmUsers.tblUsers.Insert;
  dmUsers.tblUsers['Username'] := sUsername;
  dmUsers.tblUsers['Firstname'] := sFirstName;
  dmUsers.tblUsers['Surname'] := sSurname;
  dmUsers.tblUsers['Email'] := sEmail;
  dmUsers.tblUsers['Password'] := sPassword;
  dmUsers.tblUsers.Post;

  if dmUsers.tblUsers.Locate('Username', sUsername, []) then
  begin
    result := true;
    dmUsers.tblUsers.Close;
  end
  else
  begin
    result := false;
    dmUsers.tblUsers.Close;
  end;
end;

procedure TfrmMyLoginAndRegister.btnLoginClick(Sender: TObject);
var
   // Temporary variables which will later be assigned to public variables
   sUser, sPass : String;
   // This will be used to validate the password entered
   sDBPassword: String;
begin

  // Extracting data from edits
  sUser := edtLoginUsername.Text;
  sPass := edtLoginPassword.Text;

  // First we'll validate the username
  // Also check if it actually exists in the database
  dmUsers.tblUsers.Open;
  if dmUsers.tblUsers.Locate('Username', sUser, []) then
  begin
    sLoggedInUser := sUser;
    sDBPassword := dmUsers.tblUsers['Password'];
    dmUsers.tblUsers.Close;
    // Username present and correct
    // Password validation check
    if sPass = sDBPassword then
    begin
      // Proceed to main form
      ShowMessage('Welcome back ' + sUser + '. Proceeding to main application....');
      frmMyLoginAndRegister.Hide;
      frmMySchool.Show;
    end
    else
    begin
      // Show some shit here
      ShowMessage('Incorrect.');
    end;
  end
  else
  begin
    ShowMessage('No user with the email: "' + sUser + '" found in database.')
  end;
end;


procedure TfrmMyLoginAndRegister.btnRegisterClick(Sender: TObject);
var
  // These variables should only be used here hence i wont declare them as public
  sName, sSurname, sUser, sTempEmail : String;
  Results : Boolean;
  // This variable will be used to check whether the given username/email is already present in database
  sDBUser, SDBEmail : Boolean;
  // These im gonna declare for validation check then assign them to the public sPassword variable
  sTempPassword, sTempConfirmPassword : String;
begin

  // Extracting data from edits
  sName := edtRegisterName.Text;
  sSurname := edtRegisterSurname.Text;
  sUser := edtRegisterUsername.Text;
  sTempEmail := edtRegisterEmail.Text;
  sTempPassword := edtRegisterPassword.Text;
  sTempConfirmPassword := edtRegisterConfirmPassword.Text;

  dmUsers.tblUsers.Open;
  if dmUsers.tblUsers.Locate('Username', sUser, []) then
  begin
    sDBUser := true;
  end
  else
  begin
    sDBUser := false;
  end;
  if dmUsers.tblUsers.Locate('Email', sTempEmail, []) then
  begin
    sDBEmail := true;
  end
  else
  begin
    sDBEmail := false;
  end;
  dmUsers.tblUsers.Close;
  // For the time being im just going to do a password validation check
  if (sTempPassword <> sTempConfirmPassword) or (length(sTempPassword) and length(sTempConfirmPassword) < 8) then
  begin
    // id prolly wanna display this better
    ShowMessage('The password provided does not meet the required length or does not match the confirmed password.');
  end
  else
  begin
    if sDBUser or sDBEmail then
    begin
      ShowMessage('Username/Email already in database.');
    end
    else
    begin
      Results := RegisterToDatabase(sUser, sName, sSurname, sTempEmail, sTempPassword);
      if Results then
      begin
        // Confirmation message asking if the user would like to go to the login screen
        if MessageDlg('Registration for user: "'+ sUser + '" complete. Would you like to login?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
        begin
          exit;
        end
        else
        begin
          // Set the page control activepageindex to 0 (first page)
          pgcMyLoginAndRegister.ActivePageIndex := 0;
          // Enter the username saving the user time
          edtLoginUsername.Text := sUser;
          // Exit the dailog
          exit;
        end;
      end
      else
      begin
        ShowMessage('Registration failed.');
      end;
    end;
  end;
end;


procedure TfrmMyLoginAndRegister.btnWelcomeLoginClick(Sender: TObject);
begin

  pgcMyLoginAndRegister.ActivePageIndex := 1;

end;

procedure TfrmMyLoginAndRegister.btnWelcomeRegisterClick(Sender: TObject);
begin

  pgcMyLoginAndRegister.ActivePageIndex := 2;

end;

procedure TfrmMyLoginAndRegister.FormActivate(Sender: TObject);
begin
  // Welcome Screen
  memWelcome.Lines.Clear;
  memWelcome.Lines.Add('Introducing MySchool - the ultimate management application designed to streamline the lives of school staff. From student personal details to mark management and report generation, MySchool has it all.');

  // REMOVE BEFORE SUBMITTING
  edtLoginUsername.Text := 'kronikx';
  edtLoginPassword.Text := 'getbeamedretard2790@';

  // Normal Testing
  // MessageDlg('Test', mtWarning, [mbYes, mbNo], 0); = No clue what this does
  // Database testing
end;



end.

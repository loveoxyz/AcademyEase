unit frmLoginAndRegister_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, dmUsers_u, clsUser_u;

type
  TfrmLoginAndRegister = class(TForm)
    pgcLoginAndRegister: TPageControl;
    tsMain: TTabSheet;
    tsLogin: TTabSheet;
    tsRegister: TTabSheet;
    lblHeading: TLabel;
    pnlHeading: TPanel;
    pnlInsight: TPanel;
    redInsight: TRichEdit;
    btnLoginRedirect: TButton;
    btnRegisterRedirect: TButton;
    pnRegisterHeading: TPanel;
    pnlLoginHeading: TPanel;
    lblRegisterHeading: TLabel;
    lblLoginHeading: TLabel;
    lblLoginUsername: TLabel;
    lblLoginPassword: TLabel;
    edtLoginUsername: TEdit;
    edtLoginPassword: TEdit;
    btnLogin: TButton;
    lblRegisterName: TLabel;
    edtRegisterName: TEdit;
    lblSurname: TLabel;
    edtRegisterSurname: TEdit;
    lblRegisterEmail: TLabel;
    edtRegisterEmail: TEdit;
    lblRegisterPassword: TLabel;
    edtRegisterPassword: TEdit;
    lblRegisterConfirmPassword: TLabel;
    edtRegisterConfirmPassword: TEdit;
    btnRegister: TButton;
    edtRegisterUsername: TEdit;
    lblRegisterUsername: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnLoginRedirectClick(Sender: TObject);
    procedure btnRegisterRedirectClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);

    // Custom Functions
    function RegisterToDatabase(sUsername, sFirstName, sSurname, sEmail, sPassword: String): boolean;
    procedure btnRegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sLoggedInUser : String;
  end;

var
  frmLoginAndRegister: TfrmLoginAndRegister;

implementation
  uses frmAcademyEase_u;

{$R *.dfm}

// Register Function
procedure TfrmLoginAndRegister.btnLoginClick(Sender: TObject);
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
      frmLoginAndRegister.Hide;
      frmAcademyEase.Show;
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


procedure TfrmLoginAndRegister.btnLoginRedirectClick(Sender: TObject);
begin
  pgcLoginAndRegister.ActivePageIndex := 0;
end;

procedure TfrmLoginAndRegister.btnRegisterClick(Sender: TObject);
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
          pgcLoginAndRegister.ActivePageIndex := 0;
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
procedure TfrmLoginAndRegister.btnRegisterRedirectClick(Sender: TObject);
begin
  pgcLoginAndRegister.ActivePageIndex := 2;
end;

procedure TfrmLoginAndRegister.FormActivate(Sender: TObject);
begin

  // Making sure that when the application starts
  // the welcome page is shown
  pgcLoginAndRegister.ActivePageIndex := 1;

  // Clearing the pre-existing content
  // Main Page
  redInsight.Lines.Clear;

  // Login Page
  edtLoginUsername.Text := 'oxy';
  edtLoginPassword.Text := 'josh@12345';

  // Register Page
  edtRegisterName.Text := '';
  edtRegisterSurname.Text := '';
  edtRegisterEmail.Text := '';
  edtRegisterPassword.Text := '';
  edtRegisterConfirmPassword.Text := '';

  // Welcome text and instructions
  redInsight.Lines.Add(#9 + 'Welcome to AcademyEase!');
  redInsight.Lines.Add(
    'Your all-in-one solution for seamless school administration. Simplify tasks, enhance collaboration, and empower your school staff. Lets embark on a journey of effortless efficiency together!');
end;

function TfrmLoginAndRegister.RegisterToDatabase(sUsername, sFirstName,
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

end.

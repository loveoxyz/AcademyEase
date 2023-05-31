unit MySchool_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, dmUsers_u, clsUser_u, OleCtrls,
  SHDocVw, jpeg;

type
  TfrmMySchool = class(TForm)
    pgcMain: TPageControl;
    tsMain: TTabSheet;
    pnlHeader: TPanel;
    lblHeader: TLabel;
    lblSignedInAs: TLabel;
    tsDetails: TTabSheet;
    tsMarks: TTabSheet;
    tsProfile: TTabSheet;
    imgProfilePicture: TImage;
    imgMainPicture: TImage;
    btnProfile: TButton;
    lbledtUsername: TLabeledEdit;
    lbledtFirstname: TLabeledEdit;
    lbledtSurname: TLabeledEdit;
    pnlUserInfo: TPanel;
    lbledtEmail: TLabeledEdit;
    btnSaveChanges: TButton;
    pnlSecurity: TPanel;
    lblUserInformation: TLabel;
    lblSecurity: TLabel;
    pnlDetialsPreview: TPanel;
    pnlMarksPreview: TPanel;
    memPasswordChange: TMemo;
    btnSaveChange: TButton;
    lblCurrentPassword: TLabel;
    lblNewPassword: TLabel;
    lblConfirmNewPassword: TLabel;
    edtCurrentPassword: TEdit;
    edtNewPassword: TEdit;
    edtConfirmNewPassword: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnProfileClick(Sender: TObject);
    procedure btnSaveChangesClick(Sender: TObject);

    // Custom procedures and functions
    function PopulateUserObject(sUsername: String): Boolean;
    function UpdateUserRow(sUsername: String): Boolean;
  private
    { Private declarations }
  public
    objUser: tUser;
    { Public declarations }
  end;

var
  frmMySchool: TfrmMySchool;

implementation

uses MyLoginAndRegister_u;
{$R *.dfm}

procedure TfrmMySchool.btnProfileClick(Sender: TObject);
begin

  pgcMain.ActivePageIndex := pgcMain.PageCount - 1;

end;

procedure TfrmMySchool.btnSaveChangesClick(Sender: TObject);
var
  sUsername, sFirstname, sSurname, sEmail, sPassword: String;
begin

  sUsername := lbledtUsername.Text;
  sFirstname := lbledtFirstname.Text;
  sSurname := lbledtSurname.Text;
  sEmail := lbledtEmail.Text;
  sPassword := InputBox('Confirm changes', 'Enter your password:', 'password');

  dmUsers.tblUsers.Open;
  if dmUsers.tblUsers.Locate('Username', sUsername, []) then
  begin
    dmUsers.tblUsers.Close;
    ShowMessage('The username you have choosen is currently in use already. Please choose another one.')
  end
  else
  begin
    if sPassword = objUser.GetPassword then
    begin
      if MessageDlg('Are you sure youd like to keep these changes?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
      begin
        objUser.Free;

        objUser.Create(sUsername, sFirstname, sSurname, sEmail, sPassword);
        UpdateUserRow(sUsername);

        lblSignedInAs.Caption := 'Signed In As: ' + objUser.GetUsername;
      end
      else
      begin
        ShowMessage('Wrong Password entered. Please try again.');
      end;
    end;
  end;
end;

procedure TfrmMySchool.FormActivate(Sender: TObject);
var
  User: Boolean;
begin
  // Population User object
  User := PopulateUserObject(frmMyLoginAndRegister.sLoggedInUser);
  if not User then
  begin
    ShowMessage(
      'Unable to populate user object. (Probably a problem with the provided username or database)');
  end
  else
  begin
    // Setting user for lblSignedInAs
    lblSignedInAs.Caption := 'Signed in as: ' +
      frmMyLoginAndRegister.sLoggedInUser;
    pgcMain.ActivePageIndex := 0;

    // Filling all edit boxes
    // -> Profile Page
    lbledtUsername.Text := objUser.GetUsername;
    lbledtFirstname.Text := objUser.GetFirstName;
    lbledtSurname.Text := objUser.GetSurname;
    lbledtEmail.Text := objUser.GetEmail;

    // Password change insight
    memPasswordChange.Lines.Clear;
    memPasswordChange.Lines.Add(
      'To change your password, select "Change Password,"'
      + 'enter current password, choose a strong new password, and confirm.'
      + 'Stay secure by updating passwords regularly.');
  end;
end;

procedure TfrmMySchool.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Closing the main form so it ends the entire application
  UpdateUserRow(objUser.GetUsername);

  frmMyLoginAndRegister.Close;
  objUser.Free;
end;

function TfrmMySchool.PopulateUserObject(sUsername: String): Boolean;
var
  sFirstname, sSurname, sEmail, sPassword: String;
begin

  // Finding the collumn relating to the given username
  dmUsers.tblUsers.Open;
  if dmUsers.tblUsers.Locate('Username', sUsername, []) then
  begin
    // Populating all fields of the object
    sFirstname := dmUsers.tblUsers['Firstname'];
    sSurname := dmUsers.tblUsers['Surname'];
    sEmail := dmUsers.tblUsers['Email'];
    sPassword := dmUsers.tblUsers['Password'];
    dmUsers.tblUsers.Close;
  end;

  objUser := tUser.Create(sUsername, sFirstname, sSurname, sEmail, sPassword);

  if objUser.GetUsername = sUsername then
  begin
    result := true;
  end
  else
  begin
    result := false;
  end;

end;

function TfrmMySchool.UpdateUserRow(sUsername: String): Boolean;
begin

  dmUsers.tblUsers.Open;
  dmUsers.tblUsers.Edit;
  if dmUsers.tblUsers.Locate('Username', sUsername, []) then begin
    dmUsers.tblUsers['Username'] := objUser.GetUsername;
    dmUsers.tblUsers['Firstname'] := objUser.GetFirstName;
    dmUsers.tblUsers['Surname'] := objUser.GetSurname;
    dmUsers.tblUsers['Email'] := objUser.GetEmail;
    dmUsers.tblUsers['Password'] := objUser.GetPassword;
    dmUsers.tblUsers.Close;

    result := true;
  end
  else begin
    result := false;
  end;


end;

end.

unit frmAcademyEase_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, dmUsers_u, clsUser_u, Buttons, ComCtrls;

type
  TfrmAcademyEase = class(TForm)
    pnlNavbar: TPanel;
    lblNavbarHeading: TLabel;
    lblUser: TLabel;
    btnProfile: TButton;
    btnLogout: TButton;
    bmbClose: TBitBtn;
    pnlNavigation: TPanel;
    lblNavigation: TLabel;
    btnInventory: TButton;
    btnLeave: TButton;
    pnlInventoryManagement: TPanel;
    pnlLeaveManagement: TPanel;
    lblInventoryManagement: TLabel;
    lblLeaveManagement: TLabel;
    redLeaveManagement: TRichEdit;
    redInventoryManagement: TRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnProfileClick(Sender: TObject);

    function PopulateUserObject(sUsername: String): Boolean;
    procedure btnLogoutClick(Sender: TObject);
    procedure btnInventoryClick(Sender: TObject);
    procedure btnLeaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    objUser: tUser;
  end;

var
  frmAcademyEase: TfrmAcademyEase;

implementation
  uses frmLoginAndRegister_u, frmLeaveManagement_u, frmInventoryManagement_u, frmUserProfile_u;

{$R *.dfm}

function TfrmAcademyEase.PopulateUserObject(sUsername: String): Boolean;
var
  sFirstname, sSurname, sEmail, sPassword: String;
begin

  // Finding the collumn relating to the given username
  dmUsers.tblUsers.Open;
  if dmUsers.tblUsers.Locate('Username', sUsername, []) then
  begin
    // Populating all fields of the object
    sUsername := dmUsers.tblUsers['Username'];
    sFirstname := dmUsers.tblUsers['Firstname'];
    sSurname := dmUsers.tblUsers['Surname'];
    sEmail := dmUsers.tblUsers['Email'];
    sPassword := dmUsers.tblUsers['Password'];
    dmUsers.tblUsers.Close;
  end;

  objUser := tUser.Create(sUsername, sFirstname, sSurname, sEmail, sPassword);

  if objUser.GetEmail = sEmail then
  begin
    result := true;
  end
  else
  begin
    result := false;
  end;

end;

procedure TfrmAcademyEase.btnInventoryClick(Sender: TObject);
begin
  frmInventoryManagement.Show;
  frmAcademyEase.Hide;
end;

procedure TfrmAcademyEase.btnLeaveClick(Sender: TObject);
begin
  frmLeaveManagement.Show;
  frmAcademyEase.Hide;
end;

procedure TfrmAcademyEase.btnLogoutClick(Sender: TObject);
begin
  frmAcademyEase.Hide;
  frmLoginAndRegister.Show;
  objUser.Free;
end;

procedure TfrmAcademyEase.btnProfileClick(Sender: TObject);
begin
  frmAcademyEase.Hide;
  frmUserProfile.Show;
end;

procedure TfrmAcademyEase.FormActivate(Sender: TObject);
begin
  lblUser.Caption := 'User: ' + frmLoginAndRegister.sLoggedInUser;
  PopulateUserObject(frmLoginAndRegister.sLoggedInUser);

  // Clear rich edits
  redInventoryManagement.Lines.Clear;
  redLeaveManagement.Lines.Clear;

  // Filling rich edits
  redInventoryManagement.Lines.Add('Manage your current inventory.');
  redLeaveManagement.Lines.Add('Manage your leave.');
end;

procedure TfrmAcademyEase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLoginAndRegister.Close;
end;

end.

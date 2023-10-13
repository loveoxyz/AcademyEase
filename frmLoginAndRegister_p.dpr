program frmLoginAndRegister_p;

uses
  Forms,
  frmLoginAndRegister_u in 'frmLoginAndRegister_u.pas' {frmLoginAndRegister},
  dmUsers_u in 'dmUsers_u.pas' {dmUsers: TDataModule},
  clsUser_u in 'clsUser_u.pas',
  frmAcademyEase_u in 'frmAcademyEase_u.pas' {frmAcademyEase},
  frmLeaveManagement_u in 'frmLeaveManagement_u.pas' {frmLeaveManagement},
  frmInventoryManagement_u in 'frmInventoryManagement_u.pas' {frmInventoryManagement},
  frmUserProfile_u in 'frmUserProfile_u.pas' {frmUserProfile};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoginAndRegister, frmLoginAndRegister);
  Application.CreateForm(TdmUsers, dmUsers);
  Application.CreateForm(TfrmAcademyEase, frmAcademyEase);
  Application.CreateForm(TfrmLeaveManagement, frmLeaveManagement);
  Application.CreateForm(TfrmInventoryManagement, frmInventoryManagement);
  Application.CreateForm(TfrmUserProfile, frmUserProfile);
  Application.Run;
end.

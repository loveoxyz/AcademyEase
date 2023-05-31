program MySchool_p;

uses
  Forms,
  MyLoginAndRegister_u in 'MyLoginAndRegister_u.pas' {frmMyLoginAndRegister},
  dmUsers_u in 'dmUsers_u.pas' {dmUsers: TDataModule},
  MySchool_u in 'MySchool_u.pas' {frmMySchool},
  clsUser_u in 'clsUser_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMyLoginAndRegister, frmMyLoginAndRegister);
  Application.CreateForm(TdmUsers, dmUsers);
  Application.CreateForm(TfrmMySchool, frmMySchool);
  Application.Run;
end.

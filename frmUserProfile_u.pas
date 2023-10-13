unit frmUserProfile_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmUserProfile = class(TForm)
    pnlHeading: TPanel;
    pnlUserDetails: TPanel;
    lblHeading: TLabel;
    lblName: TLabel;
    lblEmail: TLabel;
    lblSurname: TLabel;
    edtName: TEdit;
    edtSurname: TEdit;
    edtEmail: TEdit;
    lblPassword: TLabel;
    edtPassword: TEdit;
    btnHome: TButton;
    edtUsername: TEdit;
    lblUsername: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHomeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserProfile: TfrmUserProfile;

implementation
  uses frmAcademyEase_u;

{$R *.dfm}

procedure TfrmUserProfile.btnHomeClick(Sender: TObject);
begin
  frmAcademyEase.Show;
  frmUserProfile.Close;
end;

procedure TfrmUserProfile.FormActivate(Sender: TObject);
begin
  edtUsername.Clear;
  edtName.Clear;
  edtSurname.Clear;
  edtEmail.Clear;
  edtPassword.Clear;

  edtUsername.Text := frmAcademyEase.objUser.GetUsername;
  edtName.Text := frmAcademyEase.objUser.GetFirstName;
  edtSurname.Text := frmAcademyEase.objUser.GetSurname;
  edtEmail.Text := frmAcademyEase.objUser.GetEmail;
  edtPassword.Text := frmAcademyEase.objUser.GetPassword;
end;

procedure TfrmUserProfile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmAcademyEase.Show;
end;

end.

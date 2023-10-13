unit AcademyEase_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmAcademyEase = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcademyEase: TfrmAcademyEase;

implementation
  uses frmLoginAndRegister_u;

{$R *.dfm}

procedure TfrmAcademyEase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLoginAndRegister.Close;
end;
end.

unit frmLeaveManagement_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmLeaveManagement = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeaveManagement: TfrmLeaveManagement;

implementation
  uses frmAcademyEase_u;

{$R *.dfm}

procedure TfrmLeaveManagement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmAcademyEase.Show;
end;

end.

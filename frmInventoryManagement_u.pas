unit frmInventoryManagement_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfrmInventoryManagement = class(TForm)
    pnlNavigation: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInventoryManagement: TfrmInventoryManagement;

implementation
  uses frmAcademyEase_u;

{$R *.dfm}

procedure TfrmInventoryManagement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmAcademyEase.Show;
end;

end.

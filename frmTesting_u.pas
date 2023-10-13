unit frmTesting_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dmUsers_u, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TfrmTesting = class(TForm)
    redOutput: TRichEdit;
    btnLoadChat: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLoadChatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTesting: TfrmTesting;

implementation
  uses frmAcademyEase_u;

{$R *.dfm}

procedure TfrmTesting.btnLoadChatClick(Sender: TObject);
begin
  dmUsers.qryChat.SQL.Text := 'SELECT * FROM tblChat';
  dmUsers.qryChat.Open;
  while not dmUsers.qryChat.Eof do begin
    redOutput.Lines.Add(dmUsers.qryChat['Message']);
  end;
end;

procedure TfrmTesting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmAcademyEase.Show;
end;

end.

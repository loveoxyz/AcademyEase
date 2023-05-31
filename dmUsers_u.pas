unit dmUsers_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmUsers = class(TDataModule)
    conUsers: TADOConnection;
    dsrUsers: TDataSource;
    tblUsers: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUsers: TdmUsers;

implementation

{$R *.dfm}

end.

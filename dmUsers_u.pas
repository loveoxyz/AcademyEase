unit dmUsers_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmUsers = class(TDataModule)
    conAcademyEase: TADOConnection;
    dsrUsers: TDataSource;
    tblUsers: TADOTable;
    tblInventory: TADOTable;
    dsrInventory: TDataSource;
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

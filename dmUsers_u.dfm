object dmUsers: TdmUsers
  OldCreateOrder = False
  Height = 331
  Width = 477
  object conUsers: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\User\OneDrive\Documents\School shit\Delphi\Grade 11 PAT\PAT ' +
      '2\src\beta\Database\MySchool.mdb;Mode=ReadWrite;Persist Security' +
      ' Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path' +
      '="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet O' +
      'LEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2' +
      ';Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Pas' +
      'sword="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encryp' +
      't Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Je' +
      't OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 48
  end
  object dsrUsers: TDataSource
    DataSet = tblUsers
    Left = 168
    Top = 40
  end
  object tblUsers: TADOTable
    Connection = conUsers
    CursorType = ctStatic
    TableName = 'tblUsers'
    Left = 104
    Top = 104
  end
end

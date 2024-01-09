object dmUsers: TdmUsers
  OldCreateOrder = False
  Height = 217
  Width = 284
  object conAcademyEase: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\joshb\OneDrive\Documents\RAD Studio\Projects\AcademyEase!\Ac' +
      'ademyEase.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OLE' +
      'DB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Datab' +
      'ase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locki' +
      'ng Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global B' +
      'ulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:' +
      'Create System Database=False;Jet OLEDB:Encrypt Database=False;Je' +
      't OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wit' +
      'hout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 72
  end
  object dsrUsers: TDataSource
    DataSet = tblUsers
    Left = 144
    Top = 72
  end
  object tblUsers: TADOTable
    Connection = conAcademyEase
    TableName = 'tblUsers'
    Left = 88
    Top = 72
  end
  object tblChat: TADOTable
    Active = True
    Connection = conAcademyEase
    CursorType = ctStatic
    TableName = 'tblChat'
    Left = 88
    Top = 136
  end
  object dsrChat: TDataSource
    DataSet = tblChat
    Left = 144
    Top = 136
  end
  object qryChat: TADOQuery
    Connection = conAcademyEase
    DataSource = dsrChat
    Parameters = <>
    Left = 200
    Top = 136
  end
end

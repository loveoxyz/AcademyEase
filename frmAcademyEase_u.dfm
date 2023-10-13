object frmAcademyEase: TfrmAcademyEase
  Left = 0
  Top = 0
  Caption = 'Academy Ease'
  ClientHeight = 352
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlNavbar: TPanel
    Left = 8
    Top = 8
    Width = 601
    Height = 57
    Color = clGrayText
    ParentBackground = False
    TabOrder = 0
    object lblNavbarHeading: TLabel
      Left = 16
      Top = 15
      Width = 151
      Height = 30
      Caption = 'AcademyEase'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblUser: TLabel
      Left = 184
      Top = 29
      Width = 29
      Height = 13
      Caption = 'User: '
    end
    object btnProfile: TButton
      Left = 358
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Profile'
      TabOrder = 0
      OnClick = btnProfileClick
    end
    object btnLogout: TButton
      Left = 439
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Log Out'
      TabOrder = 1
      OnClick = btnLogoutClick
    end
    object bmbClose: TBitBtn
      Left = 520
      Top = 17
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object pnlNavigation: TPanel
    Left = 8
    Top = 88
    Width = 601
    Height = 49
    Color = clGrayText
    ParentBackground = False
    TabOrder = 1
    object lblNavigation: TLabel
      Left = 227
      Top = 8
      Width = 126
      Height = 30
      Caption = 'Navigation:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlInventoryManagement: TPanel
    Left = 8
    Top = 160
    Width = 289
    Height = 177
    Color = clGrayText
    ParentBackground = False
    TabOrder = 2
    object lblInventoryManagement: TLabel
      Left = 16
      Top = 24
      Width = 264
      Height = 30
      Caption = 'Inventory Management:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnInventory: TButton
      Left = 72
      Top = 128
      Width = 133
      Height = 25
      Caption = 'Inventory Management'
      TabOrder = 0
      OnClick = btnInventoryClick
    end
    object redInventoryManagement: TRichEdit
      Left = 40
      Top = 72
      Width = 201
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'RichEdit1')
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnlLeaveManagement: TPanel
    Left = 320
    Top = 160
    Width = 289
    Height = 177
    Color = clGrayText
    ParentBackground = False
    TabOrder = 3
    object lblLeaveManagement: TLabel
      Left = 35
      Top = 24
      Width = 222
      Height = 30
      Caption = 'Leave Management:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnLeave: TButton
      Left = 86
      Top = 128
      Width = 115
      Height = 25
      Caption = 'Leave Management'
      TabOrder = 0
      OnClick = btnLeaveClick
    end
    object redLeaveManagement: TRichEdit
      Left = 40
      Top = 72
      Width = 201
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'redLeaveManagement')
      ParentFont = False
      TabOrder = 1
    end
  end
end

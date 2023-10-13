object frmUserProfile: TfrmUserProfile
  Left = 0
  Top = 0
  Caption = 'User Profile'
  ClientHeight = 268
  ClientWidth = 313
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
  object pnlHeading: TPanel
    Left = 8
    Top = 8
    Width = 289
    Height = 49
    Color = clGrayText
    ParentBackground = False
    TabOrder = 0
    object lblHeading: TLabel
      Left = 13
      Top = 10
      Width = 131
      Height = 30
      Caption = 'User Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnHome: TButton
      Left = 200
      Top = 13
      Width = 67
      Height = 25
      Caption = 'Home'
      TabOrder = 0
      OnClick = btnHomeClick
    end
  end
  object pnlUserDetails: TPanel
    Left = 8
    Top = 72
    Width = 289
    Height = 188
    Color = clGrayText
    ParentBackground = False
    TabOrder = 1
    object lblEmail: TLabel
      Left = 37
      Top = 117
      Width = 31
      Height = 15
      Caption = 'Email:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblSurname: TLabel
      Left = 16
      Top = 82
      Width = 52
      Height = 15
      Caption = 'Surname:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblPassword: TLabel
      Left = 13
      Top = 157
      Width = 55
      Height = 15
      Caption = 'Password:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblName: TLabel
      Left = 33
      Top = 48
      Width = 35
      Height = 15
      Caption = 'Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblUsername: TLabel
      Left = 10
      Top = 16
      Width = 58
      Height = 15
      Caption = 'Username:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 88
      Top = 46
      Width = 179
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'edtName'
    end
    object edtSurname: TEdit
      Left = 88
      Top = 80
      Width = 179
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'Edit1'
    end
    object edtEmail: TEdit
      Left = 88
      Top = 115
      Width = 179
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = 'Edit1'
    end
    object edtPassword: TEdit
      Left = 88
      Top = 155
      Width = 179
      Height = 21
      ReadOnly = True
      TabOrder = 3
      Text = 'edtPassword'
    end
    object edtUsername: TEdit
      Left = 88
      Top = 14
      Width = 179
      Height = 21
      ReadOnly = True
      TabOrder = 4
      Text = 'edtName'
    end
  end
end

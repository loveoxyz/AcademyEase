object frmMyLoginAndRegister: TfrmMyLoginAndRegister
  Left = 0
  Top = 0
  Caption = 'My School'
  ClientHeight = 267
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMyLoginAndRegister: TPageControl
    Left = 0
    Top = 0
    Width = 437
    Height = 267
    ActivePage = tsWelcome
    Align = alClient
    TabOrder = 0
    object tsWelcome: TTabSheet
      Caption = 'Welcome'
      ImageIndex = 2
      object lblWelcome: TLabel
        Left = 104
        Top = 16
        Width = 200
        Height = 24
        Caption = 'Welcome To MySchool'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegister: TLabel
        Left = 72
        Top = 176
        Width = 52
        Height = 18
        Caption = 'Register'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLogin: TLabel
        Left = 304
        Top = 176
        Width = 33
        Height = 18
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object memWelcome: TMemo
        Left = 16
        Top = 46
        Width = 393
        Height = 107
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'memWelcome')
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object btnWelcomeRegister: TButton
        Left = 56
        Top = 200
        Width = 91
        Height = 25
        Caption = 'Register'
        TabOrder = 1
        OnClick = btnWelcomeRegisterClick
      end
      object btnWelcomeLogin: TButton
        Left = 280
        Top = 200
        Width = 91
        Height = 25
        Caption = 'Login'
        TabOrder = 2
        OnClick = btnWelcomeLoginClick
      end
    end
    object tsLogin: TTabSheet
      Caption = 'Log In'
      object lblLoginUsername: TLabel
        Left = 82
        Top = 56
        Width = 91
        Height = 23
        Caption = 'Username:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLoginPassword: TLabel
        Left = 88
        Top = 112
        Width = 85
        Height = 23
        Caption = 'Password:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtLoginUsername: TEdit
        Left = 200
        Top = 61
        Width = 161
        Height = 21
        TabOrder = 0
      end
      object edtLoginPassword: TEdit
        Left = 200
        Top = 117
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
      end
      object btnLogin: TButton
        Left = 160
        Top = 165
        Width = 97
        Height = 33
        Caption = 'Login'
        TabOrder = 2
        OnClick = btnLoginClick
      end
    end
    object tsRegister: TTabSheet
      Caption = 'Register'
      ImageIndex = 1
      object lblRegisterName: TLabel
        Left = 106
        Top = 27
        Width = 49
        Height = 21
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterSurname: TLabel
        Left = 84
        Top = 54
        Width = 71
        Height = 21
        Caption = 'Surname:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterEmail: TLabel
        Left = 108
        Top = 105
        Width = 47
        Height = 21
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterPassword: TLabel
        Left = 78
        Top = 132
        Width = 77
        Height = 21
        Caption = 'Password:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterConfirmPassword: TLabel
        Left = 16
        Top = 159
        Width = 139
        Height = 21
        Caption = 'Confirm Password:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterUsername: TLabel
        Left = 74
        Top = 81
        Width = 81
        Height = 21
        Caption = 'Username:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btnRegister: TButton
        Left = 216
        Top = 192
        Width = 97
        Height = 33
        Caption = 'Register'
        TabOrder = 0
        OnClick = btnRegisterClick
      end
      object edtRegisterName: TEdit
        Left = 176
        Top = 27
        Width = 193
        Height = 21
        TabOrder = 1
      end
      object edtRegisterSurname: TEdit
        Left = 176
        Top = 54
        Width = 193
        Height = 21
        TabOrder = 2
      end
      object edtRegisterEmail: TEdit
        Left = 176
        Top = 105
        Width = 193
        Height = 21
        TabOrder = 3
      end
      object edtRegisterPassword: TEdit
        Left = 176
        Top = 132
        Width = 193
        Height = 21
        PasswordChar = '*'
        TabOrder = 4
      end
      object edtRegisterConfirmPassword: TEdit
        Left = 176
        Top = 159
        Width = 193
        Height = 21
        PasswordChar = '*'
        TabOrder = 5
      end
      object edtRegisterUsername: TEdit
        Left = 176
        Top = 81
        Width = 193
        Height = 21
        TabOrder = 6
      end
    end
  end
end

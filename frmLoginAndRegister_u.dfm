object frmLoginAndRegister: TfrmLoginAndRegister
  Left = 0
  Top = 0
  Caption = 'AcademyEase!'
  ClientHeight = 380
  ClientWidth = 430
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
  object pgcLoginAndRegister: TPageControl
    Left = 0
    Top = 0
    Width = 433
    Height = 377
    ActivePage = tsLogin
    TabOrder = 0
    object tsLogin: TTabSheet
      Caption = 'Login'
      ImageIndex = 1
      object lblLoginUsername: TLabel
        Left = 68
        Top = 128
        Width = 77
        Height = 20
        Caption = 'Username:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLoginPassword: TLabel
        Left = 72
        Top = 184
        Width = 73
        Height = 20
        Caption = 'Password:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object pnlLoginHeading: TPanel
        Left = 72
        Top = 23
        Width = 281
        Height = 49
        Color = clGrayText
        ParentBackground = False
        TabOrder = 0
        object lblLoginHeading: TLabel
          Left = 104
          Top = 8
          Width = 60
          Height = 30
          Caption = 'Login'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = 30
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object edtLoginUsername: TEdit
        Left = 168
        Top = 131
        Width = 185
        Height = 21
        TabOrder = 1
        Text = 'edtLoginUsername'
      end
      object edtLoginPassword: TEdit
        Left = 168
        Top = 187
        Width = 185
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
        Text = 'Edit1'
      end
      object btnLogin: TButton
        Left = 153
        Top = 256
        Width = 112
        Height = 41
        Caption = 'Login'
        TabOrder = 3
        OnClick = btnLoginClick
      end
    end
    object tsMain: TTabSheet
      Caption = 'Welcome!'
      object pnlInsight: TPanel
        Left = 40
        Top = 96
        Width = 337
        Height = 153
        Color = clGrayText
        ParentBackground = False
        TabOrder = 0
        object redInsight: TRichEdit
          Left = 24
          Top = 24
          Width = 281
          Height = 97
          Font.Charset = ANSI_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            'redInsight')
          ParentFont = False
          TabOrder = 0
        end
      end
      object btnLoginRedirect: TButton
        Left = 40
        Top = 288
        Width = 97
        Height = 25
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnLoginRedirectClick
      end
      object btnRegisterRedirect: TButton
        Left = 280
        Top = 288
        Width = 97
        Height = 25
        Caption = 'Register'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnRegisterRedirectClick
      end
      object pnlHeading: TPanel
        Left = 64
        Top = 23
        Width = 281
        Height = 49
        Color = clGrayText
        ParentBackground = False
        TabOrder = 3
        object lblHeading: TLabel
          Left = 64
          Top = 8
          Width = 159
          Height = 30
          Caption = 'AcademyEase!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = 30
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object tsRegister: TTabSheet
      Caption = 'Register'
      ImageIndex = 2
      object lblRegisterName: TLabel
        Left = 102
        Top = 124
        Width = 47
        Height = 20
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSurname: TLabel
        Left = 80
        Top = 163
        Width = 69
        Height = 20
        Caption = 'Surname:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterEmail: TLabel
        Left = 104
        Top = 202
        Width = 45
        Height = 20
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterPassword: TLabel
        Left = 76
        Top = 240
        Width = 73
        Height = 20
        Caption = 'Password:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterConfirmPassword: TLabel
        Left = 14
        Top = 280
        Width = 135
        Height = 20
        Caption = 'Confirm Password:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblRegisterUsername: TLabel
        Left = 72
        Top = 92
        Width = 77
        Height = 20
        Caption = 'Username:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object pnRegisterHeading: TPanel
        Left = 72
        Top = 23
        Width = 281
        Height = 49
        Color = clGrayText
        ParentBackground = False
        TabOrder = 0
        object lblRegisterHeading: TLabel
          Left = 88
          Top = 8
          Width = 90
          Height = 30
          Caption = 'Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = 30
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object edtRegisterName: TEdit
        Left = 168
        Top = 127
        Width = 185
        Height = 21
        TabOrder = 1
        Text = 'edtLoginUsername'
      end
      object edtRegisterSurname: TEdit
        Left = 168
        Top = 162
        Width = 185
        Height = 21
        TabOrder = 2
        Text = 'edtLoginUsername'
      end
      object edtRegisterEmail: TEdit
        Left = 168
        Top = 201
        Width = 185
        Height = 21
        TabOrder = 3
        Text = 'edtLoginUsername'
      end
      object edtRegisterPassword: TEdit
        Left = 168
        Top = 239
        Width = 185
        Height = 21
        PasswordChar = '*'
        TabOrder = 4
        Text = 'edtLoginUsername'
      end
      object edtRegisterConfirmPassword: TEdit
        Left = 168
        Top = 279
        Width = 185
        Height = 21
        PasswordChar = '*'
        TabOrder = 5
        Text = 'edtLoginUsername'
      end
      object btnRegister: TButton
        Left = 160
        Top = 314
        Width = 90
        Height = 32
        Caption = 'Register'
        TabOrder = 6
        OnClick = btnRegisterClick
      end
      object edtRegisterUsername: TEdit
        Left = 168
        Top = 95
        Width = 185
        Height = 21
        TabOrder = 7
        Text = 'edtLoginUsername'
      end
    end
  end
end

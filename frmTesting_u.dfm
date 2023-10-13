object frmTesting: TfrmTesting
  Left = 0
  Top = 0
  Caption = 'Testing'
  ClientHeight = 299
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object redOutput: TRichEdit
    Left = 8
    Top = 8
    Width = 533
    Height = 253
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redOutput')
    ParentFont = False
    TabOrder = 0
  end
  object btnLoadChat: TButton
    Left = 466
    Top = 267
    Width = 75
    Height = 25
    Caption = 'Load Chat'
    TabOrder = 1
    OnClick = btnLoadChatClick
  end
end

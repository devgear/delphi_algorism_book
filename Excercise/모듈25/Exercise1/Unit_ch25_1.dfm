object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 541
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 463
    Height = 265
    Lines.Strings = (
      '1'
      '22'
      '333'
      '4444'
      '55555'
      '666666'
      '7777777'
      '88888888'
      '999999999'
      '0000000000')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 439
    Width = 463
    Height = 41
    Caption = #51677#49688' '#47928#51088#50676'-->File2 '#54848#49688#51064' '#47928#51088#50676'-->File3'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 8
    Top = 288
    Width = 463
    Height = 145
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 8
    Top = 486
    Width = 463
    Height = 41
    Caption = #51200#51109#46108' '#54028#51068' '#54869#51064#54616#44592
    TabOrder = 3
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 72
    Top = 360
  end
  object SaveDialog1: TSaveDialog
    Left = 48
    Top = 352
  end
end

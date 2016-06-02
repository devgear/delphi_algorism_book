object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 540
  ClientWidth = 463
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
    Width = 447
    Height = 273
    Lines.Strings = (
      'hi 11  22  test 33'
      '1 hello  2 3'
      '2'
      '3 test 4')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button2: TButton
    Left = 8
    Top = 491
    Width = 447
    Height = 41
    Caption = #53581#49828#53944' '#54028#51068' '#50676#50612#49436' '#54869#51064#54616#44592
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo2: TMemo
    Left = 8
    Top = 287
    Width = 447
    Height = 145
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object Button1: TButton
    Left = 8
    Top = 438
    Width = 447
    Height = 41
    Caption = #47928#51088#50676#44544#51032' '#49707#51088#46308#51012' '#54633#49328#54616#50668' '#49352#54028#51068#50640' '#44592#47197#54616#44592
    TabOrder = 3
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    Left = 328
    Top = 376
  end
  object SaveDialog1: TSaveDialog
    Left = 360
    Top = 376
  end
end

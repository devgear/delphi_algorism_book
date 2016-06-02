object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 480
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Memo1: TMemo
    Left = 16
    Top = 8
    Width = 476
    Height = 201
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 258
    Width = 476
    Height = 35
    Caption = #52280#44032' '#54617#49373#51060' '#44032#51109' '#51201#51008' '#54617#44368' '#51060#47492' '#51201#50612#48372#44592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 299
    Width = 477
    Height = 32
    Caption = #49368#54540' '#54028#51068' '#48520#47084#50724#44592'('#51060'  '#50696#51228#50640#49436#45716' '#48120#47532' '#51089#49457#54644#45459#51008' MyTest.txt'#47484' '#49324#50857#54633#45768#45796'.'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Memo2: TMemo
    Left = 8
    Top = 337
    Width = 476
    Height = 135
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 448
    Top = 344
  end
end

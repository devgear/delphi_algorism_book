object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 473
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 312
    Top = 8
    Width = 48
    Height = 13
    Caption = #44208#44284#54364#49884
  end
  object Label1: TLabel
    Left = 18
    Top = 8
    Width = 90
    Height = 13
    Caption = #51200#51109#54624' '#54028#51068' '#51060#47492
  end
  object Memo1: TMemo
    Left = 16
    Top = 34
    Width = 273
    Height = 276
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button2: TButton
    Left = 16
    Top = 316
    Width = 561
    Height = 49
    Caption = #47928#51109#51032' '#49707#51088' '#54633#44228#44032' '#51677#49688#51064' '#51460#51012' '#45796#47492' '#54028#51068#50640' '#50734#44200' '#51201#50612#48372#51088
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo2: TMemo
    Left = 318
    Top = 34
    Width = 265
    Height = 276
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 376
    Width = 561
    Height = 39
    Caption = #49368#54540' '#53581#49828#53944' '#54028#51068' '#48520#47084#50724#44592
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 18
    Top = 421
    Width = 561
    Height = 39
    Caption = #49368#54540' '#53581#49828#53944' '#54028#51068' '#51200#51109#54616#44592'('#54596#50836#49884' '#49324#50857')'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 120
    Top = 8
    Width = 153
    Height = 20
    TabOrder = 5
    Text = 'Test.txt'
  end
  object OpenDialog1: TOpenDialog
    Left = 360
    Top = 88
  end
  object SaveDialog1: TSaveDialog
    Left = 440
    Top = 88
  end
end

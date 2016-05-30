object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 351
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
    Left = 88
    Top = 60
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 88
    Top = 139
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 88
    Top = 24
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 101
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 256
    Top = 21
    Width = 73
    Height = 27
    Caption = #49884#49549'-- '#52488#49549
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 101
    Width = 75
    Height = 27
    Caption = #52488#49549'-->'#49884#49549
    TabOrder = 3
    OnClick = Button2Click
  end
  object StaticText1: TStaticText
    Left = 198
    Top = 28
    Width = 27
    Height = 17
    Caption = 'km/h'
    TabOrder = 4
  end
  object StaticText2: TStaticText
    Left = 198
    Top = 60
    Width = 21
    Height = 17
    Caption = 'm/s'
    TabOrder = 5
  end
  object StaticText3: TStaticText
    Left = 198
    Top = 105
    Width = 21
    Height = 17
    Caption = 'm/s'
    TabOrder = 6
  end
  object StaticText4: TStaticText
    Left = 198
    Top = 135
    Width = 27
    Height = 17
    Caption = 'km/h'
    TabOrder = 7
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 331
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
    Top = 24
    Width = 41
    Height = 20
    Caption = 'Red'
    Color = clRed
    ParentColor = False
    Transparent = False
  end
  object Label2: TLabel
    Left = 32
    Top = 61
    Width = 41
    Height = 25
    Caption = 'Yellow'
    Color = clYellow
    ParentColor = False
    Transparent = False
  end
  object Label3: TLabel
    Left = 32
    Top = 99
    Width = 41
    Height = 22
    Caption = 'Blue'
    Color = clBlue
    ParentColor = False
    Transparent = False
  end
  object Button1: TButton
    Left = 128
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 128
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 2
    OnClick = Button3Click
  end
end

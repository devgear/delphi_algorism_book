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
    Left = 48
    Top = 24
    Width = 24
    Height = 13
    Caption = #49453#50472
  end
  object Label2: TLabel
    Left = 48
    Top = 68
    Width = 24
    Height = 13
    Caption = #54868#50472
  end
  object Edit1: TEdit
    Left = 104
    Top = 21
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 56
    Width = 97
    Height = 25
    TabOrder = 1
  end
  object Button1: TButton
    Left = 224
    Top = 21
    Width = 73
    Height = 27
    Caption = #49453#50472'-- '#54868#50472
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 222
    Top = 54
    Width = 75
    Height = 27
    Caption = #54868#50472'-->'#49453#50472
    TabOrder = 3
    OnClick = Button2Click
  end
end

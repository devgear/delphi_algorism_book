object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 402
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 104
    Width = 497
    Height = 161
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object Button1: TButton
    Left = 440
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 296
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 8
    Top = 223
    Width = 185
    Height = 162
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object Button2: TButton
    Left = 216
    Top = 271
    Width = 201
    Height = 50
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 344
    Width = 201
    Height = 41
    Caption = 'Button3'
    TabOrder = 6
    OnClick = Button3Click
  end
end

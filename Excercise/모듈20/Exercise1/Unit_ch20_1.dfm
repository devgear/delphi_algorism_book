object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 317
  ClientWidth = 470
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
    Left = 8
    Top = 29
    Width = 64
    Height = 13
    Caption = #54665'/'#52972#47100#44079#49688
  end
  object Edit1: TEdit
    Left = 80
    Top = 26
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 56
    Width = 446
    Height = 185
    TabOrder = 1
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
  object Button9: TButton
    Left = 16
    Top = 264
    Width = 446
    Height = 45
    Caption = #54364#49884#54616#44592
    TabOrder = 2
    OnClick = Button9Click
  end
end

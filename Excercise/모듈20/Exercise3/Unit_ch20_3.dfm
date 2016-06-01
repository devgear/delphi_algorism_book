object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 475
  ClientWidth = 498
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
    Top = 8
    Width = 48
    Height = 13
    Caption = #52972#47100#44079#49688
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 48
    Height = 13
    Caption = #47196#50864#44079#49688
  end
  object Label3: TLabel
    Left = 232
    Top = 8
    Width = 36
    Height = 13
    Caption = #52572#49548#44050
  end
  object Label4: TLabel
    Left = 232
    Top = 38
    Width = 36
    Height = 13
    Caption = #52572#45824#44050
  end
  object Edit_Column: TEdit
    Left = 80
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object Edit_Row: TEdit
    Left = 80
    Top = 35
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 62
    Width = 475
    Height = 129
    TabOrder = 2
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
    Left = 16
    Top = 197
    Width = 475
    Height = 46
    Caption = #54364#49884#54616#44592
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit_Min: TEdit
    Left = 305
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object Edit_Max: TEdit
    Left = 305
    Top = 35
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 5
  end
  object Button2: TButton
    Left = 16
    Top = 416
    Width = 467
    Height = 49
    Caption = #45824#44033#49440#51004#47196' '#48148#44984#44592
    TabOrder = 6
    OnClick = Button2Click
  end
  object StringGrid2: TStringGrid
    Left = 8
    Top = 249
    Width = 475
    Height = 152
    TabOrder = 7
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
end

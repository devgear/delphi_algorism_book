object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 475
  ClientWidth = 437
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
    Left = 15
    Top = 62
    Width = 411
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
    Width = 410
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
    TabOrder = 4
  end
  object Edit_Max: TEdit
    Left = 305
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button2: TButton
    Left = 8
    Top = 416
    Width = 193
    Height = 49
    Caption = #54848#49688' '#54665#50640' '#51080#45716#44050' '#54364#49884
    TabOrder = 6
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 248
    Width = 193
    Height = 162
    ItemHeight = 13
    TabOrder = 7
  end
  object ListBox2: TListBox
    Left = 232
    Top = 249
    Width = 194
    Height = 162
    ItemHeight = 13
    TabOrder = 8
  end
  object Button3: TButton
    Left = 232
    Top = 418
    Width = 194
    Height = 49
    Caption = #54848#49688#50676#50640' '#51080#45716' '#50577#49688' '#44050' '#54364#49884
    TabOrder = 9
    OnClick = Button3Click
  end
end

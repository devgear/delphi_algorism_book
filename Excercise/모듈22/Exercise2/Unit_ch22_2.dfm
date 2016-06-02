object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 444
  ClientWidth = 406
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
    Left = 8
    Top = 18
    Width = 114
    Height = 13
    Caption = #52395' '#48264#51704' '#49688#50629#49884#51089#49884#44036
  end
  object Label3: TLabel
    Left = 8
    Top = 51
    Width = 72
    Height = 13
    Caption = #49688#50629#49660#50836#49884#44036
  end
  object Label4: TLabel
    Left = 8
    Top = 85
    Width = 119
    Height = 13
    Caption = #55092#49885#49548#50836#49884#44036'('#50696' 10'#48516')'
  end
  object Label1: TLabel
    Left = 8
    Top = 121
    Width = 48
    Height = 13
    Caption = #49688#50629#54943#49688
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 176
    Width = 390
    Height = 161
    ColCount = 3
    FixedCols = 0
    RowCount = 6
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    ColWidths = (
      64
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24
      24)
  end
  object Edit_Start: TEdit
    Left = 160
    Top = 8
    Width = 193
    Height = 21
    TabOrder = 1
    Text = '9:00'
  end
  object Edit_During: TEdit
    Left = 160
    Top = 39
    Width = 193
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = '40'
  end
  object Edit_Break: TEdit
    Left = 160
    Top = 76
    Width = 193
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    Text = '10'
  end
  object Button1: TButton
    Left = 8
    Top = 352
    Width = 390
    Height = 57
    Caption = #49884#44036#54364' '#44536#47532#44592
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit_Cnt: TEdit
    Left = 160
    Top = 114
    Width = 193
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    Text = '5'
  end
end

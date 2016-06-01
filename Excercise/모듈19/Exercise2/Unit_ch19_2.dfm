object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 283
  ClientWidth = 422
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
    Left = 18
    Top = 191
    Width = 48
    Height = 13
    Caption = #49892#54744#54943#49688
  end
  object Label2: TLabel
    Left = 224
    Top = 191
    Width = 36
    Height = 13
    Caption = #44032#51473#52824
  end
  object StringGrid1: TStringGrid
    Left = 18
    Top = 16
    Width = 396
    Height = 161
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
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
  object Edit_Cnt: TEdit
    Left = 18
    Top = 210
    Width = 183
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object Edit_Value: TEdit
    Left = 224
    Top = 210
    Width = 190
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object Button8: TButton
    Left = 18
    Top = 239
    Width = 183
    Height = 36
    Caption = ' '#54364#49884#54616#44592'('#52769#51221#46108'  '#44050#51008' '#51649#51217' '#51077#47141')'
    TabOrder = 3
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 224
    Top = 237
    Width = 190
    Height = 33
    Caption = #44228#49328#54616#44592
    TabOrder = 4
    OnClick = Button9Click
  end
end

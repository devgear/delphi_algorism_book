object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 271
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 235
    Width = 284
    Height = 16
    Caption = #49688#49345#51068#51088#47484' '#49688#51221#54616#50668' '#53580#49828#53944' '#54644#48372#49901#49884#50724
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
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
  object Button1: TButton
    Left = 8
    Top = 175
    Width = 390
    Height = 38
    Caption = #52572#50672#49548' '#49688#49345#51648' '#51060#47492#51008' ?'
    TabOrder = 1
    OnClick = Button1Click
  end
end

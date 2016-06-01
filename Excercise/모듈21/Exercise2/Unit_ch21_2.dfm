object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 336
  ClientWidth = 472
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
    Left = 24
    Top = 16
    Width = 48
    Height = 13
    Caption = #52972#47100#44079#49688
  end
  object Label2: TLabel
    Left = 24
    Top = 43
    Width = 45
    Height = 13
    Caption = #54665'   '#44079#49688
  end
  object Label3: TLabel
    Left = 256
    Top = 16
    Width = 68
    Height = 13
    Caption = #52572#49548#44050'('#51221#49688')'
  end
  object Label4: TLabel
    Left = 256
    Top = 43
    Width = 68
    Height = 13
    Caption = #52572#45824#44050'('#51221#49688')'
  end
  object Label5: TLabel
    Left = 24
    Top = 312
    Width = 417
    Height = 13
    Caption = #51060' '#50696#51228#45716' '#46041#51201' '#48176#50676#51012' '#49324#50857#54616#50688#51004#47728' Zeor '#44592#48152#51032' '#48176#50676#51012' '#49324#50857#54616#50688#49845#45768#45796'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 72
    Width = 457
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
    Left = 8
    Top = 239
    Width = 457
    Height = 61
    Caption = #44536#47532#46300#50640' '#54364#49884#54616#44592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit_Column: TEdit
    Left = 96
    Top = 13
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object Edit_Row: TEdit
    Left = 96
    Top = 40
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object Edit_Min: TEdit
    Left = 344
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit_Max: TEdit
    Left = 344
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 5
  end
end

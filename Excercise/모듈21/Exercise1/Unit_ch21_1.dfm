object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 351
  ClientWidth = 735
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
    Left = 27
    Top = 43
    Width = 48
    Height = 13
    Caption = #52972#47100#44079#49688
  end
  object Label2: TLabel
    Left = 27
    Top = 67
    Width = 45
    Height = 13
    Caption = #54665'   '#44079#49688
  end
  object Label3: TLabel
    Left = 256
    Top = 40
    Width = 68
    Height = 13
    Caption = #52572#49548#44050'('#51221#49688')'
  end
  object Label4: TLabel
    Left = 256
    Top = 67
    Width = 68
    Height = 13
    Caption = #52572#45824#44050'('#51221#49688')'
  end
  object Label5: TLabel
    Left = 8
    Top = 8
    Width = 721
    Height = 16
    Caption = #51060' '#50696#51228#45716' '#48176#50676#51012' '#46041#51201#51004#47196' '#49373#49457#54616#45716' '#48169#48277#51012' '#49324#50857#54616#50688#44256'  '#51060#48264#50640#45716' zero '#44592#48152#51032' '#48176#50676#51012' '#49324#50857#54616#50688#49845#45768#45796'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 91
    Width = 474
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
    Top = 272
    Width = 227
    Height = 57
    Caption = #44536#47532#46300#50640' '#54364#49884#54616#44592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit_Column: TEdit
    Left = 96
    Top = 37
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object Edit_Row: TEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 488
    Top = 91
    Width = 225
    Height = 161
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object Button2: TButton
    Left = 488
    Top = 276
    Width = 217
    Height = 50
    Caption = #47700#47784#51109#50640' '#54364#49884#54616#44592
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit_Min: TEdit
    Left = 344
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit_Max: TEdit
    Left = 344
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 7
  end
end

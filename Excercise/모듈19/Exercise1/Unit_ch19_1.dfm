object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = Edit_Column
  Caption = 'Form1'
  ClientHeight = 445
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
  object Label2: TLabel
    Left = 16
    Top = 167
    Width = 51
    Height = 13
    Caption = #54665#51032' '#44079#49688
  end
  object Label1: TLabel
    Left = 16
    Top = 213
    Width = 51
    Height = 13
    Caption = #50676#51032' '#44079#49688
  end
  object Label3: TLabel
    Left = 16
    Top = 259
    Width = 75
    Height = 13
    Caption = #44256#51221#54665#51032' '#44079#49688
  end
  object Label4: TLabel
    Left = 16
    Top = 305
    Width = 75
    Height = 13
    Caption = #44256#51221#50676#51032' '#44079#49688
  end
  object Label5: TLabel
    Left = 160
    Top = 167
    Width = 79
    Height = 13
    Caption = #51648#51221#54665'/'#50676' '#48264#54840
  end
  object MyGrid: TStringGrid
    Left = 10
    Top = 8
    Width = 396
    Height = 153
    DrawingStyle = gdsClassic
    FixedColor = clInactiveCaption
    TabOrder = 5
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
  object Edit_Column: TEdit
    Left = 16
    Top = 186
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object Edit_Row: TEdit
    Left = 16
    Top = 232
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object Edit_FixColumn: TEdit
    Left = 16
    Top = 278
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object Edit_FixRow: TEdit
    Left = 16
    Top = 323
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object Button1: TButton
    Left = 293
    Top = 412
    Width = 121
    Height = 25
    Caption = #51648#51221' '#50741#49496#51004#47196' '#44536#47532#46300' '#54364#49884#54616#44592
    TabOrder = 4
    OnClick = Button1Click
  end
  object btnCelRed: TButton
    Left = 16
    Top = 350
    Width = 121
    Height = 25
    Caption = #49472' '#49353#49345'(Red)'
    TabOrder = 6
    OnClick = btnCelRedClick
  end
  object btnFCGreen: TButton
    Left = 160
    Top = 350
    Width = 111
    Height = 25
    Caption = #44256#51221#49360#49353#49345'(Green)'
    TabOrder = 7
    OnClick = btnFCGreenClick
  end
  object Button2: TButton
    Left = 16
    Top = 381
    Width = 121
    Height = 25
    Caption = #49472' '#49353#49345'(Yello)'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 412
    Width = 121
    Height = 25
    Caption = #49472' '#49353#49345'(Blue)'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 160
    Top = 381
    Width = 111
    Height = 25
    Caption = #44256#51221#49360#49353#49345'(Silver)'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 160
    Top = 412
    Width = 111
    Height = 25
    Caption = #44256#51221#49360#49353#49345'(Aqua)'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Memo1: TMemo
    Left = 160
    Top = 214
    Width = 254
    Height = 130
    Lines.Strings = (
      '')
    TabOrder = 12
  end
  object Button6: TButton
    Left = 293
    Top = 349
    Width = 121
    Height = 25
    Caption = #52972#47100#45936#51060#53552#54364#49884
    TabOrder = 13
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 293
    Top = 381
    Width = 121
    Height = 25
    Caption = #54665#45936#51060#53552#54364#49884
    TabOrder = 14
    OnClick = Button7Click
  end
  object Edit1: TEdit
    Left = 160
    Top = 186
    Width = 254
    Height = 21
    NumbersOnly = True
    TabOrder = 15
  end
end

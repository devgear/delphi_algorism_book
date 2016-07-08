object frmGrid: TfrmGrid
  Left = 0
  Top = 0
  Caption = 'frmGrid'
  ClientHeight = 407
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
  object edtLine: TEdit
    Left = 24
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtStolb: TEdit
    Left = 24
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtFline: TEdit
    Left = 24
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtFstolb: TEdit
    Left = 24
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object sgdMy: TStringGrid
    Left = 24
    Top = 144
    Width = 409
    Height = 233
    DrawingStyle = gdsClassic
    TabOrder = 4
  end
  object btnTabl: TButton
    Left = 160
    Top = 21
    Width = 75
    Height = 25
    Caption = #47564#46308#44592
    TabOrder = 5
    OnClick = btnTablClick
  end
  object btnCellRed: TButton
    Left = 160
    Top = 83
    Width = 128
    Height = 25
    Caption = #48176#44221' '#48744#44036#49353' '#52832#54616#44592
    TabOrder = 6
    OnClick = btnCellRedClick
  end
  object btnFCGreen: TButton
    Left = 160
    Top = 52
    Width = 128
    Height = 25
    Caption = #44256#51221#49472' '#45433#49353' '#52832#54616#44592
    TabOrder = 7
    OnClick = btnFCGreenClick
  end
end

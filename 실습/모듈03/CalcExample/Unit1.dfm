object frmCalc: TfrmCalc
  Left = 0
  Top = 0
  Caption = 'frmCalc'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResult: TLabel
    Left = 48
    Top = 136
    Width = 40
    Height = 13
    Caption = 'lblResult'
  end
  object edtA: TEdit
    Left = 48
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtB: TEdit
    Left = 48
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnAdd: TButton
    Left = 175
    Top = 94
    Width = 122
    Height = 25
    Caption = #49707#51088' '#46160#44060#47484' '#45908#54616#44592
    TabOrder = 2
    OnClick = btnAddClick
  end
end

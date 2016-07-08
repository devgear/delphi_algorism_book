object frmCatheti: TfrmCatheti
  Left = 0
  Top = 0
  Caption = 'frmCatheti'
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
  object lblB: TLabel
    Left = 40
    Top = 112
    Width = 16
    Height = 13
    Caption = 'lblB'
  end
  object edtAlfa: TEdit
    Left = 40
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtA: TEdit
    Left = 40
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnRun: TButton
    Left = 167
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Run'
    TabOrder = 2
    OnClick = btnRunClick
  end
end

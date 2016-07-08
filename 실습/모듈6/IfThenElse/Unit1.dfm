object frmMy: TfrmMy
  Left = 0
  Top = 0
  Caption = 'frmMy'
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
  object lblMax: TLabel
    Left = 32
    Top = 88
    Width = 30
    Height = 13
    Caption = 'lblMax'
  end
  object btnMax: TButton
    Left = 168
    Top = 51
    Width = 75
    Height = 25
    Caption = 'btnMax'
    TabOrder = 0
    OnClick = btnMaxClick
  end
  object edtA: TEdit
    Left = 32
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtA'
  end
  object edtB: TEdit
    Left = 32
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtB'
  end
end

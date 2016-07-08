object frmArr: TfrmArr
  Left = 0
  Top = 0
  Caption = 'frmArr'
  ClientHeight = 327
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnGo: TButton
    Left = 151
    Top = 53
    Width = 75
    Height = 25
    Caption = 'btnGo'
    TabOrder = 0
    OnClick = btnGoClick
  end
  object memIsh: TMemo
    Left = 24
    Top = 96
    Width = 409
    Height = 177
    Lines.Strings = (
      'memIsh')
    TabOrder = 1
  end
  object edtBegin: TEdit
    Left = 24
    Top = 28
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtEnd: TEdit
    Left = 24
    Top = 55
    Width = 121
    Height = 21
    TabOrder = 3
  end
end

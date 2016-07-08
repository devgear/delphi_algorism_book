object frmQuadEq: TfrmQuadEq
  Left = 0
  Top = 0
  Caption = #51060#52264#48169#51221#49885' '#47928#51228' '#54400#51060
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
  object lblX1: TLabel
    Left = 40
    Top = 152
    Width = 22
    Height = 13
    Caption = 'lblX1'
    Visible = False
  end
  object lblX2: TLabel
    Left = 40
    Top = 184
    Width = 22
    Height = 13
    Caption = 'lblX2'
    Visible = False
  end
  object lblNo: TLabel
    Left = 40
    Top = 216
    Width = 73
    Height = 13
    Caption = #44540#51060' '#50630#49845#45768#45796'.'
    Visible = False
  end
  object lblCoefs: TLabel
    Left = 40
    Top = 29
    Width = 149
    Height = 13
    Caption = #51060#52264#48169#51221#49885' '#44228#49688#47484' '#51077#47140#54616#49464#50836
  end
  object btnFind: TButton
    Left = 167
    Top = 100
    Width = 106
    Height = 25
    Caption = #47928#51228' '#54400#44592
    TabOrder = 0
    OnClick = btnFindClick
  end
  object edtA: TEdit
    Left = 40
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtB: TEdit
    Left = 40
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtC: TEdit
    Left = 40
    Top = 102
    Width = 121
    Height = 21
    TabOrder = 3
  end
end

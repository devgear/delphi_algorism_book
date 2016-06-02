object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 161
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 32
    Top = 16
    Width = 409
    Height = 57
    Caption = 'Panel1'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 90
    Width = 409
    Height = 55
    Caption = #49884#44036' '#54364#49884
    TabOrder = 1
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 368
    Top = 88
  end
end

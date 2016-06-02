object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 179
  ClientWidth = 342
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
    Left = 32
    Top = 8
    Width = 71
    Height = 13
    Caption = #51228#54620' '#49884#44036'('#52488')'
  end
  object Panel1: TPanel
    Left = 32
    Top = 72
    Width = 297
    Height = 41
    Caption = 'Panel1'
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 32
    Top = 27
    Width = 297
    Height = 30
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 131
    Width = 297
    Height = 40
    Caption = #53440#51060#47672' '#49884#51089
    TabOrder = 2
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 192
    Top = 128
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 242
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
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = #53440#51060#47672' '#46041#51089
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 24
    Width = 75
    Height = 25
    Caption = #53440#51060#47672' '#51473#51648
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Button3: TButton
    Left = 24
    Top = 81
    Width = 75
    Height = 25
    Caption = #50640#46356#53944' '#51060#46041
    TabOrder = 3
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 336
    Top = 40
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 400
    Top = 40
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 336
    Top = 104
  end
end

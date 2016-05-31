object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 354
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 24
    Top = 8
    Width = 441
    Height = 121
    Lines.Strings = (
      '3'
      '5'
      '5'
      '-12'
      '11'
      '1'
      '0'
      '2')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 296
    Width = 447
    Height = 41
    Caption = 'ex1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 24
    Top = 144
    Width = 201
    Height = 129
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Memo3: TMemo
    Left = 256
    Top = 144
    Width = 209
    Height = 129
    TabOrder = 3
  end
end

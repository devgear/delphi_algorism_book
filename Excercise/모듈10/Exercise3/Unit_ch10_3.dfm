object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 480
  ClientWidth = 589
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
    Left = 272
    Top = 79
    Width = 48
    Height = 13
    Caption = #49440#51032#46160#44760
  end
  object Image1: TImage
    Left = 16
    Top = 98
    Width = 566
    Height = 335
  end
  object ComboBox1: TComboBox
    Left = 437
    Top = 71
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = '1'
    OnChange = ComboBox1Change
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
  end
  object ListBox1: TListBox
    Left = 16
    Top = 8
    Width = 249
    Height = 57
    ItemHeight = 13
    Items.Strings = (
      #49688#51649' '#46972#51064
      #49688#54217' '#46972#51064
      #50896
      #49324#44033#54805)
    TabOrder = 1
  end
  object ColorGrid1: TColorGrid
    Left = 280
    Top = 1
    Width = 300
    Height = 64
    TabOrder = 2
    OnChange = ColorGrid1Change
  end
  object Button1: TButton
    Left = 16
    Top = 439
    Width = 565
    Height = 42
    Caption = #46020#54805#44536#47532#44592
    TabOrder = 3
    OnClick = Button1Click
  end
end

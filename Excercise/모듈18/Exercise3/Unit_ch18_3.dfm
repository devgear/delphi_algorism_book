object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 372
  ClientWidth = 404
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
    Left = 16
    Top = 16
    Width = 63
    Height = 13
    Caption = 'From '#49892#49688#44050
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 51
    Height = 13
    Caption = 'To '#49892#49688#44050
  end
  object Label3: TLabel
    Left = 16
    Top = 75
    Width = 387
    Height = 13
    Caption = #51060' '#50696#51228#45716' '#44592#48376' '#50836#49548#51032' '#44079#49688#47484' 20'#51004#47196' '#51648#51221' '#49892#49688#51032' '#48276#51032#45716' (0 <= r  < 1.0 >)'
  end
  object Memo1: TMemo
    Left = 8
    Top = 98
    Width = 177
    Height = 223
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 96
    Top = 12
    Width = 289
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object Edit2: TEdit
    Left = 98
    Top = 45
    Width = 289
    Height = 21
    TabOrder = 2
    Text = '1.0'
  end
  object Memo2: TMemo
    Left = 210
    Top = 98
    Width = 177
    Height = 223
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button1: TButton
    Left = 8
    Top = 327
    Width = 379
    Height = 37
    Caption = #48176#50676#51032' '#50836#49548#51032' '#48152#51012' '#47582#48148#44984#44592
    TabOrder = 4
    OnClick = Button1Click
  end
end

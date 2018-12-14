object QazLatynConverterForm: TQazLatynConverterForm
  Left = 0
  Top = 0
  Caption = 'Qaz Latyn Converter Example'
  ClientHeight = 353
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object txtLatyn: TMemo
    Left = 0
    Top = 178
    Width = 666
    Height = 175
    Align = alClient
    Lines.Strings = (
      'mmo2')
    TabOrder = 0
  end
  object btnCyrl2Latyn: TButton
    Left = 0
    Top = 153
    Width = 666
    Height = 25
    Align = alTop
    Caption = #1050#1080#1088#1080#1083#1083' '#187' '#1051#1072#1090#1099#1085
    TabOrder = 1
    OnClick = btnCyrl2LatynClick
  end
  object txtCyrl: TMemo
    Left = 0
    Top = 0
    Width = 666
    Height = 153
    Align = alTop
    Lines.Strings = (
      'mmo1')
    TabOrder = 2
  end
end

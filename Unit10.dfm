object Redak: TRedak
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 120
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 24
    Height = 19
    Caption = #8470':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 8
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 33
    Width = 74
    Height = 19
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object name: TEdit
    Left = 88
    Top = 33
    Width = 337
    Height = 27
    TabOrder = 0
  end
  object Button1: TButton
    Left = 328
    Top = 77
    Width = 97
    Height = 27
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 264
    Top = 64
  end
end

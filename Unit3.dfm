object addstuds: Taddstuds
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 239
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'System'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 4
    Height = 16
  end
  object Label2: TLabel
    Left = 32
    Top = 21
    Width = 66
    Height = 16
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
  end
  object Label3: TLabel
    Left = 32
    Top = 53
    Width = 30
    Height = 16
    Caption = #1048#1084#1103':'
  end
  object Label4: TLabel
    Left = 32
    Top = 84
    Width = 65
    Height = 16
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
  end
  object Label5: TLabel
    Left = 32
    Top = 125
    Width = 104
    Height = 16
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
  end
  object Label6: TLabel
    Left = 32
    Top = 157
    Width = 52
    Height = 16
    Caption = #1043#1088#1091#1087#1087#1072':'
  end
  object Edit1: TEdit
    Left = 104
    Top = 13
    Width = 209
    Height = 24
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 43
    Width = 209
    Height = 24
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 76
    Width = 209
    Height = 24
    TabOrder = 2
  end
  object Button1: TButton
    Left = 472
    Top = 180
    Width = 89
    Height = 29
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object gpComboBox2: TDBLookupComboBox
    Left = 90
    Top = 155
    Width = 231
    Height = 24
    ListFieldIndex = 1
    ListSource = DataSource2
    TabOrder = 4
  end
  object spComboBox1: TDBLookupComboBox
    Left = 168
    Top = 125
    Width = 393
    Height = 24
    KeyField = 'id'
    ListField = 'name'
    ListFieldIndex = 1
    ListSource = DataModule4.sp_addDataSource
    TabOrder = 5
    OnClick = spComboBox1Click
  end
  object DataSource2: TDataSource
    DataSet = FDQuery13
    Left = 251
    Top = 193
  end
  object FDQuery: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 114
    Top = 192
  end
  object FDQuery13: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      '')
    Left = 184
    Top = 192
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 114
    Top = 256
  end
end

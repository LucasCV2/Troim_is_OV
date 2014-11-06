object addstuds: Taddstuds
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 299
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'System'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 20
  object Label1: TLabel
    Left = 30
    Top = 20
    Width = 4
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
  end
  object Label2: TLabel
    Left = 40
    Top = 26
    Width = 84
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
  end
  object Label3: TLabel
    Left = 40
    Top = 66
    Width = 40
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1048#1084#1103':'
  end
  object Label4: TLabel
    Left = 40
    Top = 105
    Width = 86
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
  end
  object Label5: TLabel
    Left = 40
    Top = 156
    Width = 135
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
  end
  object Label6: TLabel
    Left = 40
    Top = 196
    Width = 63
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1043#1088#1091#1087#1087#1072':'
  end
  object Edit1: TEdit
    Left = 130
    Top = 16
    Width = 261
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 130
    Top = 54
    Width = 261
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 130
    Top = 95
    Width = 261
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 2
  end
  object Button1: TButton
    Left = 590
    Top = 225
    Width = 111
    Height = 36
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object gpComboBox2: TDBLookupComboBox
    Left = 113
    Top = 194
    Width = 288
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ListFieldIndex = 1
    ListSource = DataSource2
    TabOrder = 4
  end
  object spComboBox1: TDBLookupComboBox
    Left = 210
    Top = 156
    Width = 491
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
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

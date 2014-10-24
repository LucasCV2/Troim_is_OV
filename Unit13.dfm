object group: Tgroup
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1088#1091#1087#1087
  ClientHeight = 345
  ClientWidth = 758
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
  object Label1: TLabel
    Left = 439
    Top = 8
    Width = 132
    Height = 19
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 401
    Height = 186
    DataSource = DataSource2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 613
    Top = 191
    Width = 137
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 613
    Top = 143
    Width = 137
    Height = 33
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 439
    Top = 60
    Width = 290
    Height = 21
    TabOrder = 3
  end
  object addsp: TButton
    Left = 613
    Top = 101
    Width = 137
    Height = 29
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = addspClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 439
    Top = 33
    Width = 311
    Height = 21
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataSource1
    TabOrder = 5
    OnClick = DBLookupComboBox1Click
  end
  object DataSource1: TDataSource
    DataSet = FDQuery4
    Left = 24
    Top = 240
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      'SELECT * FROM asu.groups;')
    Left = 88
    Top = 240
  end
  object FDQuery2: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 144
    Top = 240
  end
  object FDQuery3: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 208
    Top = 240
  end
  object FDQuery4: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      'SELECT * FROM asu.spec;')
    Left = 272
    Top = 240
  end
  object DataSource2: TDataSource
    DataSet = FDQuery1
    Left = 24
    Top = 296
  end
end

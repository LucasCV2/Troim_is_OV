object Ocenivanie: TOcenivanie
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = #1054#1094#1077#1085#1080#1074#1072#1085#1080#1077
  ClientHeight = 455
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 229
    Top = 14
    Width = 205
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 229
    Top = 72
    Width = 263
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1088#1091#1087#1087#1091' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 6
    Width = 217
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1091#1076#1077#1085#1090#1072' '#1075#1088#1091#1087#1087#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 229
    Top = 128
    Width = 152
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1088#1077#1076#1084#1077#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 229
    Top = 246
    Width = 345
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1084#1086#1076#1091#1083#1100' ('#1077#1089#1083#1080' '#1086#1094#1077#1085#1082#1072' '#1084#1086#1076#1091#1083#1100#1085#1072#1103'):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 229
    Top = 332
    Width = 141
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1094#1077#1085#1082#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 229
    Top = 188
    Width = 91
    Height = 19
    Caption = #1058#1080#1087' '#1086#1094#1077#1085#1082#1080':'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 229
    Top = 40
    Width = 369
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = 'name'
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.sp_addDataSource
    ParentFont = False
    TabOrder = 0
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 229
    Top = 97
    Width = 192
    Height = 29
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = DBLookupComboBox2Click
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 7
    Top = 33
    Width = 215
    Height = 332
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Caption = #1060#1040#1052#1048#1051#1048#1071
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imya'
        Title.Caption = #1048'.'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'otch'
        Title.Caption = #1054'.'
        Width = 17
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_1'
        Title.Caption = #1054#1062#1045#1053#1050#1040
        Width = 26
        Visible = True
      end>
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 229
    Top = 155
    Width = 369
    Height = 29
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.DataSourcedsp
    ParentFont = False
    TabOrder = 3
    OnClick = DBLookupComboBox3Click
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 229
    Top = 273
    Width = 370
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.DataSourcedspm_uchp
    ParentFont = False
    TabOrder = 4
    OnClick = DBLookupComboBox4Click
  end
  object sistem: TCheckBox
    Left = 229
    Top = 308
    Width = 370
    Height = 17
    Caption = #1055#1086' '#1087#1103#1090#1080#1073#1072#1083#1100#1085#1086#1081' '#1089#1080#1089#1090#1077#1084#1077' '#1086#1094#1077#1085#1080#1074#1072#1085#1080#1103
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 5
    OnClick = sistemClick
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 229
    Top = 359
    Width = 193
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.Sourcesitoceok
    ParentFont = False
    TabOrder = 6
  end
  object Button1: TButton
    Left = 8
    Top = 388
    Width = 121
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Button2: TButton
    Left = 428
    Top = 359
    Width = 132
    Height = 27
    Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1094#1077#1085#1082#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 135
    Top = 388
    Width = 122
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button3Click
  end
  object DBLookupComboBox6: TDBLookupComboBox
    Left = 229
    Top = 213
    Width = 192
    Height = 27
    Enabled = False
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.Sourcetipocenki
    TabOrder = 10
    OnClick = DBLookupComboBox6Click
  end
  object DBGrid2: TDBGrid
    Left = 603
    Top = 33
    Width = 190
    Height = 332
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataSource = DataSource3
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'st_id'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Width = 36
        Visible = True
      end>
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      
        'SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name,oce' +
        'nka.name From groups, studs LEft Join ocenka On studs.id=ocenka.' +
        'st_id WHERE groups.id=studs.gp_id')
    Left = 96
    Top = 512
  end
  object FDQuery2: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 456
    Top = 512
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 24
    Top = 512
  end
  object DataSource2: TDataSource
    DataSet = FDQuery3
    Left = 336
    Top = 512
  end
  object FDQuery3: TFDQuery
    IndexesActive = False
    Connection = DataModule4.FDConnection1
    Left = 280
    Top = 512
  end
  object FDQuery4: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 408
    Top = 512
  end
  object FDQuery5: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 544
    Top = 504
  end
  object FDQuery6: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 608
    Top = 504
  end
  object FDQuery7: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      
        'SELECT studs.id, studs.fam, ocenkanew.name FROM ocenkanew,studs ' +
        'WHERE ocenkanew.st_id=studs.id')
    Left = 840
    Top = 480
  end
  object DataSource3: TDataSource
    DataSet = FDQuery7
    Left = 776
    Top = 480
  end
end

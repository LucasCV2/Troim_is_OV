object Ocenivanie: TOcenivanie
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = #1054#1094#1077#1085#1080#1074#1072#1085#1080#1077
  ClientHeight = 723
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 24
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 262
    Height = 27
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 83
    Width = 337
    Height = 27
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1088#1091#1087#1087#1091' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 157
    Width = 280
    Height = 27
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1091#1076#1077#1085#1090#1072' '#1075#1088#1091#1087#1087#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 515
    Top = 157
    Width = 197
    Height = 27
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1088#1077#1076#1084#1077#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 517
    Top = 321
    Width = 448
    Height = 27
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1084#1086#1076#1091#1083#1100' ('#1077#1089#1083#1080' '#1086#1094#1077#1085#1082#1072' '#1084#1086#1076#1091#1083#1100#1085#1072#1103'):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 515
    Top = 433
    Width = 184
    Height = 27
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1094#1077#1085#1082#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 517
    Top = 230
    Width = 121
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1058#1080#1087' '#1086#1094#1077#1085#1082#1090#1080':'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 10
    Top = 42
    Width = 446
    Height = 35
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
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
    Left = 10
    Top = 115
    Width = 153
    Height = 35
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = DBLookupComboBox2Click
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 188
    Width = 491
    Height = 420
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -20
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
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imya'
        Title.Caption = #1048#1052#1071
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'otch'
        Title.Caption = #1054#1058#1063#1045#1057#1058#1042#1054
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_1'
        Title.Caption = #1054#1062#1045#1053#1050#1040
        Width = 99
        Visible = True
      end>
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 517
    Top = 188
    Width = 466
    Height = 35
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
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
    Left = 515
    Top = 355
    Width = 468
    Height = 35
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.DataSourcedspm_uchp
    ParentFont = False
    TabOrder = 4
  end
  object sistem: TCheckBox
    Left = 515
    Top = 404
    Width = 468
    Height = 22
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1055#1086' '#1087#1103#1090#1080#1073#1072#1083#1100#1085#1086#1081' '#1089#1080#1089#1090#1077#1084#1077' '#1086#1094#1077#1085#1080#1074#1072#1085#1080#1103
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 5
    OnClick = sistemClick
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 515
    Top = 465
    Width = 82
    Height = 35
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.Sourcesitoceok
    ParentFont = False
    TabOrder = 6
  end
  object Button1: TButton
    Left = 509
    Top = 566
    Width = 153
    Height = 42
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Button2: TButton
    Left = 669
    Top = 566
    Width = 153
    Height = 42
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Button3: TButton
    Left = 830
    Top = 566
    Width = 153
    Height = 42
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button3Click
  end
  object DBLookupComboBox6: TDBLookupComboBox
    Left = 517
    Top = 261
    Width = 242
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Enabled = False
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.Sourcetipocenki
    TabOrder = 10
    OnClick = DBLookupComboBox6Click
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
    Left = 400
    Top = 104
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
    Left = 272
    Top = 520
  end
  object FDQuery4: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 408
    Top = 512
  end
end

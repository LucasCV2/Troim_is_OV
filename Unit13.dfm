object group: Tgroup
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1088#1091#1087#1087
  ClientHeight = 450
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 354
    Top = 8
    Width = 188
    Height = 19
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 60
    Height = 19
    Caption = #1043#1088#1091#1087#1087#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 354
    Top = 65
    Width = 131
    Height = 19
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 354
    Top = 149
    Width = 170
    Height = 19
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1075#1088#1091#1087#1087#1091':'
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
    Top = 33
    Width = 305
    Height = 220
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = #8470
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 100
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 511
    Top = 216
    Width = 80
    Height = 31
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 354
    Top = 216
    Width = 131
    Height = 31
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 354
    Top = 90
    Width = 312
    Height = 27
    TabOrder = 3
  end
  object addsp: TButton
    Left = 584
    Top = 123
    Width = 81
    Height = 31
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = addspClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 354
    Top = 33
    Width = 311
    Height = 27
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataSource1
    TabOrder = 5
    OnClick = DBLookupComboBox1Click
  end
  object Edit2: TEdit
    Left = 354
    Top = 174
    Width = 312
    Height = 27
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = FDQuery4
    Left = 400
    Top = 256
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      'SELECT * FROM asu.groups;')
    Left = 576
    Top = 256
  end
  object FDQuery2: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 464
    Top = 256
  end
  object FDQuery3: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 520
    Top = 256
  end
  object FDQuery4: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      'SELECT * FROM asu.spec;')
    Left = 336
    Top = 256
  end
  object DataSource2: TDataSource
    DataSet = FDQuery1
    Left = 632
    Top = 256
  end
  object FDQuery5: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 280
    Top = 256
  end
end

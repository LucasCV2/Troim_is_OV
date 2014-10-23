object kat_rod: Tkat_rod
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1072#1090#1077#1075#1086#1088#1080#1080' '#1088#1086#1076#1089#1090#1074#1072
  ClientHeight = 246
  ClientWidth = 879
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
    Left = 526
    Top = 5
    Width = 220
    Height = 19
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1090#1077#1087#1077#1085#1080' '#1088#1086#1076#1089#1090#1074#1072':'
  end
  object Label2: TLabel
    Left = 526
    Top = 107
    Width = 251
    Height = 19
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1090#1077#1087#1077#1085#1080' '#1088#1086#1076#1089#1090#1074#1072':'
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 497
    Height = 215
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        Width = 354
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 526
    Top = 190
    Width = 139
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 701
    Top = 190
    Width = 139
    Height = 33
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 526
    Top = 30
    Width = 311
    Height = 27
    TabOrder = 3
  end
  object addsp: TButton
    Left = 701
    Top = 72
    Width = 137
    Height = 29
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = addspClick
  end
  object DBEdit1: TDBEdit
    Left = 526
    Top = 144
    Width = 311
    Height = 27
    DataField = 'name'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 24
    Top = 240
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      'SELECT * FROM asu.fam;')
    Left = 88
    Top = 240
  end
  object FDQuery2: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 152
    Top = 240
  end
  object FDQuery3: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 216
    Top = 240
  end
  object FDQuery4: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 272
    Top = 240
  end
end

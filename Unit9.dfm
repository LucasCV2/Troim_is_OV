object Specialnost: TSpecialnost
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1077#1081
  ClientHeight = 256
  ClientWidth = 846
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
    Width = 188
    Height = 19
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 497
    Height = 231
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
    Top = 125
    Width = 139
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 526
    Top = 70
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
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 536
    Top = 184
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      'SELECT * FROM asu.spec;')
    Left = 608
    Top = 184
  end
  object FDQuery2: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 672
    Top = 184
  end
  object FDQuery3: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 736
    Top = 184
  end
end

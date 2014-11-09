object spstuds: Tspstuds
  Left = 0
  Top = 0
  Hint = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
  BorderStyle = bsDialog
  Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
  ClientHeight = 494
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 24
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 82
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 145
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
    end
    object Label2: TLabel
      Left = 312
      Top = 10
      Width = 71
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1043#1088#1091#1087#1087#1072':'
    end
    object Label3: TLabel
      Left = 627
      Top = 10
      Width = 62
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1055#1086#1080#1089#1082':'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 20
      Top = 40
      Width = 284
      Height = 32
      Hint = #1042#1099#1073#1086#1088' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ImeName = 'name'
      KeyField = 'id'
      ListField = 'name'
      ListSource = DataModule4.sp_addDataSource
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 312
      Top = 40
      Width = 284
      Height = 32
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 1
      OnClick = DBLookupComboBox2Click
    end
    object Edit1: TEdit
      Left = 697
      Top = 4
      Width = 295
      Height = 29
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102', '#1080#1084#1103' '#1080#1083#1080' '#1086#1090#1095#1077#1089#1090#1074#1086
    end
    object Button1: TButton
      Left = 879
      Top = 42
      Width = 113
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 82
    Width = 1000
    Height = 412
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 990
      Height = 402
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Color = clBtnFace
      DataSource = DataModule4.spstudsDataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -20
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Touch.ParentTabletOptions = False
      Touch.TabletOptions = [toPressAndHold]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = #8470
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fam'
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'imya'
          Title.Caption = #1048#1084#1103
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'otch'
          Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Width = 149
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = #1043#1088#1091#1087#1087#1072
          Width = 92
          Visible = True
        end>
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 744
    Top = 328
    object N2: TMenuItem
      Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1072
      object N5: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1090#1077#1090#1100
        OnClick = N5Click
      end
      object N1: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100
        object N8: TMenuItem
          Caption = #1057#1090#1091#1076#1077#1085#1090
          OnClick = N8Click
        end
        object N9: TMenuItem
          Caption = #1056#1086#1076#1080#1090#1077#1083#1080
          OnClick = N9Click
        end
      end
      object N3: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
      end
    end
    object N6: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnClick = N6Click
    end
    object N12: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnClick = N12Click
    end
    object N7: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnClick = N7Click
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery2
    Left = 480
    Top = 313
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 560
    Top = 313
  end
  object FDQuery2: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 624
    Top = 313
  end
  object FDQuery3: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 680
    Top = 313
  end
  object FDQuery4: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 408
    Top = 313
  end
end

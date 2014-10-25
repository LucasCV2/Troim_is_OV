object uchplanst: Tuchplanst
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
  ClientHeight = 698
  ClientWidth = 1138
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 8
    Top = 295
    Width = 617
    Height = 177
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1091':'
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 28
      Width = 74
      Height = 19
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label3: TLabel
      Left = 16
      Top = 66
      Width = 138
      Height = 19
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1095#1072#1089#1086#1074':'
    end
    object Label4: TLabel
      Left = 16
      Top = 104
      Width = 132
      Height = 19
      Caption = #1053#1072#1095#1072#1083#1086' '#1080#1079#1091#1095#1077#1085#1080#1103':'
    end
    object name_pr: TEdit
      Left = 94
      Top = 25
      Width = 419
      Height = 27
      TabOrder = 0
      TextHint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
    end
    object chasi: TEdit
      Left = 160
      Top = 58
      Width = 193
      Height = 27
      TabOrder = 1
      TextHint = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1095#1072#1089#1086#1074
    end
    object gon_n: TDateTimePicker
      Left = 154
      Top = 91
      Width = 186
      Height = 27
      Date = 41936.893814108790000000
      Time = 41936.893814108790000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 424
      Top = 133
      Width = 83
      Height = 30
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 464
    Width = 617
    Height = 226
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1091':'
    TabOrder = 1
    object Label10: TLabel
      Left = 14
      Top = 41
      Width = 74
      Height = 19
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label11: TLabel
      Left = 16
      Top = 74
      Width = 138
      Height = 19
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1095#1072#1089#1086#1074':'
    end
    object Label12: TLabel
      Left = 16
      Top = 112
      Width = 132
      Height = 19
      Caption = #1053#1072#1095#1072#1083#1086' '#1080#1079#1091#1095#1077#1085#1080#1103':'
    end
    object chasi_red: TEdit
      Left = 160
      Top = 71
      Width = 193
      Height = 27
      TabOrder = 0
    end
    object name_pr_red: TEdit
      Left = 94
      Top = 38
      Width = 419
      Height = 27
      TabOrder = 1
    end
    object gon_n_red: TDateTimePicker
      Left = 154
      Top = 109
      Width = 186
      Height = 27
      Date = 41936.893814108790000000
      Time = 41936.893814108790000000
      TabOrder = 2
    end
    object Button2: TButton
      Left = 408
      Top = 175
      Width = 121
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 304
      Top = 175
      Width = 74
      Height = 34
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object arhiv: TCheckBox
      Left = 16
      Top = 154
      Width = 177
      Height = 17
      Hint = 
        #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072' '#1086#1090#1087#1072#1074#1083#1077#1085#1085#1072#1103' '#1074' '#1072#1088#1093#1080#1074' '#1085#1077' '#1086#1090#1086#1073#1088#1072#1078#1072#1077#1090#1089#1103' '#1074' '#1090#1072#1073#1083#1080#1094#1077' '#1089#1087#1077#1094#1080#1072#1083 +
        #1100#1085#1086#1089#1090#1077#1081
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1072#1088#1093#1080#1074
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 0
    Width = 625
    Height = 289
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099':'
    TabOrder = 2
    object Label2: TLabel
      Left = 12
      Top = 28
      Width = 118
      Height = 19
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 3
      Top = 53
      Width = 510
      Height = 27
      KeyField = 'id'
      ListField = 'name'
      ListSource = DataModule4.DataSourcesp_ucsp
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
    object DBGrid1: TDBGrid
      Left = -2
      Top = 86
      Width = 619
      Height = 187
      DataSource = DataModule4.DataSourcedsp
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 1
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
          Width = 50
          Visible = True
        end
        item
          DropDownRows = 40
          Expanded = False
          FieldName = 'name'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'chasi'
          Title.Caption = #1063#1072#1089#1099
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'god_n'
          Title.Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1074' '#1041#1044
          Width = 170
          Visible = True
        end>
    end
    object arhiv_box: TCheckBox
      Left = 168
      Top = 30
      Width = 172
      Height = 17
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1072#1088#1093#1080#1074#1086#1084
      TabOrder = 2
      OnClick = arhiv_boxClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 631
    Top = 0
    Width = 498
    Height = 377
    Caption = #1052#1086#1076#1091#1083#1080':'
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 3
      Top = 28
      Width = 478
      Height = 333
      DataSource = DataModule4.DataSourcedspm_uchp
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = #8470
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103
          Width = 380
          Visible = True
        end>
    end
  end
  object GroupBox5: TGroupBox
    Left = 631
    Top = 383
    Width = 500
    Height = 146
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1086#1076#1091#1083#1100':'
    TabOrder = 4
    object Label6: TLabel
      Left = 11
      Top = 44
      Width = 74
      Height = 19
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object name_mod: TEdit
      Left = 91
      Top = 41
      Width = 390
      Height = 27
      TabOrder = 0
      TextHint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103
    end
    object Button4: TButton
      Left = 391
      Top = 101
      Width = 83
      Height = 30
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 631
    Top = 535
    Width = 500
    Height = 155
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1086#1076#1091#1083#1100':'
    TabOrder = 5
    object Label7: TLabel
      Left = 19
      Top = 44
      Width = 74
      Height = 19
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object red_mod: TEdit
      Left = 99
      Top = 37
      Width = 382
      Height = 27
      TabOrder = 0
    end
    object Button5: TButton
      Left = 352
      Top = 86
      Width = 121
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 248
      Top = 86
      Width = 74
      Height = 34
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnClick = Button6Click
    end
  end
end

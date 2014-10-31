object kartastud: Tkartastud
  Left = 0
  Top = 0
  Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1072' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 528
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 844
    Height = 289
    Align = alTop
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 842
      Height = 287
      Align = alClient
      Caption = #1057#1090#1091#1076#1077#1085#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 96
        Top = 64
        Width = 50
        Height = 19
        Caption = #1040#1076#1088#1077#1089':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 96
        Top = 104
        Width = 71
        Height = 19
        Caption = #1058#1077#1083#1077#1092#1086#1085':'
      end
      object Label4: TLabel
        Left = 96
        Top = 144
        Width = 177
        Height = 19
        Caption = #1057#1077#1088#1080#1103', '#1085#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072':'
      end
      object Label5: TLabel
        Left = 448
        Top = 64
        Width = 119
        Height = 19
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
      end
      object Label6: TLabel
        Left = 448
        Top = 104
        Width = 39
        Height = 19
        Caption = #1048#1053#1053':'
      end
      object Label7: TLabel
        Left = 448
        Top = 144
        Width = 88
        Height = 19
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
      end
      object Label8: TLabel
        Left = 96
        Top = 184
        Width = 84
        Height = 19
        Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 448
        Top = 24
        Width = 56
        Height = 19
        Caption = #1060'.'#1048'.'#1054'.:'
      end
      object Label10: TLabel
        Left = 95
        Top = 24
        Width = 24
        Height = 19
        Caption = #8470':'
      end
      object fio: TLabel
        Left = 510
        Top = 24
        Width = 21
        Height = 19
        Caption = 'fio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object nomer: TLabel
        Left = 119
        Top = 24
        Width = 52
        Height = 19
        Caption = 'nomer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object adress: TLabel
        Left = 160
        Top = 64
        Width = 45
        Height = 19
        Caption = 'adress'
      end
      object tell: TLabel
        Left = 184
        Top = 104
        Width = 21
        Height = 19
        Caption = 'tell'
      end
      object pass: TLabel
        Left = 279
        Top = 144
        Width = 31
        Height = 19
        Caption = 'pass'
      end
      object vidan: TLabel
        Left = 186
        Top = 187
        Width = 38
        Height = 19
        Caption = 'vidan'
      end
      object dolgnost: TLabel
        Left = 560
        Top = 144
        Width = 61
        Height = 19
        Caption = 'dolgnost'
      end
      object inn: TLabel
        Left = 509
        Top = 104
        Width = 22
        Height = 19
        Caption = 'inn'
      end
      object dater: TLabel
        Left = 576
        Top = 64
        Width = 36
        Height = 19
        Caption = 'dater'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 289
    Width = 844
    Height = 239
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 842
      Height = 237
      Align = alClient
      Caption = #1056#1086#1076#1080#1090#1077#1083#1080':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        842
        237)
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 25
        Width = 518
        Height = 209
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        DataSource = DataModule4.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
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
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fio'
            Title.Caption = #1060#1040#1052#1048#1051#1048#1071' '#1048#1052#1071' '#1054#1058#1063#1045#1057#1058#1042#1054
            Width = 300
            Visible = True
          end>
      end
    end
    object Button1: TButton
      Left = 598
      Top = 24
      Width = 183
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 481
    Top = 209
  end
end

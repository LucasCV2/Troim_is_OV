object fam_card: Tfam_card
  Left = 0
  Top = 0
  Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1072' '#1088#1086#1076#1080#1090#1077#1083#1103
  ClientHeight = 367
  ClientWidth = 898
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
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 849
    Height = 284
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'fio'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048#1084#1103' '#1054#1090#1095#1077#1089#1090#1074#1086
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mesto_rab'
        Title.Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel_dom'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1076#1086#1084'.'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel_rab'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1088#1072#1073'.'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adress'
        Title.Caption = #1040#1076#1088#1077#1089#1089
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dolgnost'
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Width = 108
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 240
    Top = 208
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      
        'SELECT personal_r.fio, personal_r.mesto_rab, personal_r.tel_dom,' +
        ' personal_r.tel_rab, personal_r.adress, personal_r.dolgnost FROM' +
        ' asu.personal_r;')
    Left = 304
    Top = 208
  end
end

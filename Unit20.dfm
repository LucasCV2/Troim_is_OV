object Form20: TForm20
  Left = 0
  Top = 0
  Caption = 'Form20'
  ClientHeight = 505
  ClientWidth = 753
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
    Left = 8
    Top = 8
    Width = 353
    Height = 489
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
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1089#1090#1091#1076#1077#1085#1090#1072
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1054#1094#1077#1085#1082#1072
        Width = 50
        Visible = True
      end>
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      
        'Select ocenkanew.id, ocenkanew.name, studs.fam FROM ocenkanew, s' +
        'tuds WHERE ocenkanew.st_id=studs.id')
    Left = 440
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 512
    Top = 256
  end
end

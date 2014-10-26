object fam_card: Tfam_card
  Left = 0
  Top = 0
  Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1072' '#1088#1086#1076#1080#1090#1077#1083#1103
  ClientHeight = 300
  ClientWidth = 635
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
    Width = 619
    Height = 284
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 240
    Top = 208
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      
        'SELECT fio.personal_r, mesto_rab.personal_r, tel_dom.personal_r,' +
        ' tel_rab.personal_r, adress.personal_r, dolgnost.personal_r FROM' +
        ' asu.personal_r;')
    Left = 304
    Top = 208
  end
end

object Propuski: TPropuski
  Left = 0
  Top = 0
  Caption = 'Propuski'
  ClientHeight = 505
  ClientWidth = 840
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
  object Label1: TLabel
    Left = 376
    Top = 21
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label2: TLabel
    Left = 367
    Top = 67
    Width = 164
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1086#1087#1091#1097#1077#1085#1099#1093' '#1095#1072#1089#1086#1074':'
  end
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
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date'
        Title.Caption = #1044#1072#1090#1072' '#1087#1088#1086#1087#1091#1089#1082#1072
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'koll'
        Title.Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1087#1091#1097#1077#1085#1099#1093' '#1095#1072#1089#1086#1074
        Width = 140
        Visible = True
      end>
  end
  object DateTimePicker1: TDateTimePicker
    Left = 367
    Top = 40
    Width = 186
    Height = 21
    Date = 41958.415064837970000000
    Time = 41958.415064837970000000
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 367
    Top = 86
    Width = 35
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 414
    Top = 86
    Width = 75
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 559
    Top = 21
    Width = 266
    Height = 476
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      
        'Select propuski.id, propuski.date,propuski.koll FROM propuski, s' +
        'tuds WHERE propuski.st_id=studs.id')
    Left = 400
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 392
    Top = 248
  end
  object FDQuery2: TFDQuery
    Left = 504
    Top = 88
  end
  object FDQuery3: TFDQuery
    Left = 472
    Top = 168
  end
  object DataSource2: TDataSource
    Left = 512
    Top = 232
  end
end

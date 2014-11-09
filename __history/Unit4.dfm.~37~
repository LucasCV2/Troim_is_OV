object DataModule4: TDataModule4
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 594
  Width = 841
  object FDConnection1: TFDConnection
    Params.Strings = (
      'CharacterSet=cp1251'
      'Server=localhost'
      'Password=1234567890'
      'User_Name=root'
      'Database=asu'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 28
    Top = 9
  end
  object FDQuery15: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name fro' +
        'm studs,groups WHERE groups.id=studs.gp_id')
    Left = 104
    Top = 8
  end
  object spstudsDataSource: TDataSource
    DataSet = FDQuery15
    Left = 184
    Top = 8
  end
  object sp_addDataSource: TDataSource
    DataSet = specFDTable
    Left = 176
    Top = 64
  end
  object specFDTable: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'asu.spec'
    TableName = 'asu.spec'
    Left = 96
    Top = 64
  end
  object del_stbutton: TFDQuery
    Connection = FDConnection1
    Left = 16
    Top = 64
  end
  object redstform: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 184
  end
  object redstfirds: TDataSource
    DataSet = redstform2
    Left = 136
    Top = 128
  end
  object redstform2: TFDQuery
    Connection = FDConnection1
    Left = 72
    Top = 128
  end
  object updatest: TFDQuery
    Connection = FDConnection1
    Left = 208
    Top = 128
  end
  object dolDataSource: TDataSource
    DataSet = dolFDTable1
    Left = 208
    Top = 200
  end
  object dolFDTable1: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'asu.dolgnost'
    TableName = 'asu.dolgnost'
    Left = 136
    Top = 200
  end
  object kartastw: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 272
  end
  object kartastwdl: TFDQuery
    Connection = FDConnection1
    Left = 96
    Top = 272
  end
  object tipprodstva: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'asu.fam'
    TableName = 'asu.fam'
    Left = 168
    Top = 272
  end
  object tiprodstvaSource: TDataSource
    DataSet = tipprodstva
    Left = 256
    Top = 272
  end
  object Querysp_uchp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * From spec')
    Left = 528
    Top = 32
  end
  object DataSourcesp_ucsp: TDataSource
    DataSet = Querysp_uchp
    Left = 632
    Top = 32
  end
  object Querydsp_uchp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 520
    Top = 88
  end
  object DataSourcedsp: TDataSource
    DataSet = Querydsp_uchp
    Left = 624
    Top = 88
  end
  object Querydspm_uchp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 536
    Top = 144
  end
  object DataSourcedspm_uchp: TDataSource
    DataSet = Querydspm_uchp
    Left = 648
    Top = 144
  end
  object Queryinsdsp_ucp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 536
    Top = 192
  end
  object Query_inst_mod_uchp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 648
    Top = 192
  end
  object Queryarhiv: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 536
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 536
    Top = 304
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT personal_r.id,personal_r.fio FROM asu.personal_r WHERE st' +
        '_id=:id')
    Left = 480
    Top = 304
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 424
    Top = 304
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    Left = 593
    Top = 305
  end
  object FDQuery4: TFDQuery
    Connection = FDConnection1
    Left = 656
    Top = 304
  end
  object Querytipocenki: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tip_ocenki')
    Left = 488
    Top = 392
  end
  object Sourcetipocenki: TDataSource
    DataSet = Querytipocenki
    Left = 568
    Top = 392
  end
  object Querysitoceok: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tip_ocenki')
    Left = 480
    Top = 472
  end
  object Sourcesitoceok: TDataSource
    DataSet = Querysitoceok
    Left = 568
    Top = 464
  end
end

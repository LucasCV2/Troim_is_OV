object DataModule4: TDataModule4
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 441
  Width = 796
  object FDConnection1: TFDConnection
    Params.Strings = (
      'CharacterSet=cp1251'
      'Server=localhost'
      'Database=asu'
      'User_Name=root'
      'Password=1234567890'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 28
    Top = 9
  end
  object FDQuery15: TFDQuery
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
    Left = 8
    Top = 128
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
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'asu.dolgnost'
    TableName = 'asu.dolgnost'
    Left = 136
    Top = 200
  end
  object kartastw: TFDQuery
    Connection = FDConnection1
    Left = 8
    Top = 272
  end
  object kartastwdl: TFDQuery
    Connection = FDConnection1
    Left = 72
    Top = 272
  end
  object tipprodstva: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'asu.fam'
    TableName = 'asu.fam'
    Left = 184
    Top = 288
  end
  object tiprodstvaSource: TDataSource
    DataSet = tipprodstva
    Left = 256
    Top = 288
  end
end

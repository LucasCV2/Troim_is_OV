unit Unit4;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,IniFiles,
  FireDAC.Phys.MySQLDef;

type
  TDataModule4 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery15: TFDQuery;
    spstudsDataSource: TDataSource;
    sp_addDataSource: TDataSource;
    specFDTable: TFDTable;
    del_stbutton: TFDQuery;
    redstform: TFDQuery;
    redstfirds: TDataSource;
    redstform2: TFDQuery;
    updatest: TFDQuery;
    dolDataSource: TDataSource;
    dolFDTable1: TFDTable;
    kartastw: TFDQuery;
    kartastwdl: TFDQuery;
    tipprodstva: TFDTable;
    tiprodstvaSource: TDataSource;
    Querysp_uchp: TFDQuery;
    DataSourcesp_ucsp: TDataSource;
    Querydsp_uchp: TFDQuery;
    DataSourcedsp: TDataSource;
    Querydspm_uchp: TFDQuery;
    DataSourcedspm_uchp: TDataSource;
    Queryinsdsp_ucp: TFDQuery;
    Query_inst_mod_uchp: TFDQuery;
    Queryarhiv: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    Querytipocenki: TFDQuery;
    Sourcetipocenki: TDataSource;
    Querysitoceok: TFDQuery;
    Sourcesitoceok: TDataSource;
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;
  Ini: TIniFile;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule4.DataModuleCreate(Sender: TObject);
var
serv,usname, bdname,pasw:string;
begin
Ini:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
FDConnection1.Close;
FDConnection1.ConnectionString:=Ini.ReadString('main','db','');
FDConnection1.open;
fdquery15.Active:=True;
specFDTable.Active:=True;
dolFDTable1.Active:=True;
tipprodstva.Active:=True;
Querytipocenki.Active:=True;
end;



end.

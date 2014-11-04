unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Unit4,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TOcenivanie = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label6: TLabel;
    sistem: TCheckBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDQuery3: TFDQuery;
    Label7: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    FDQuery4: TFDQuery;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure sistemClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ocenivanie: TOcenivanie;

implementation

{$R *.dfm}

procedure TOcenivanie.Button3Click(Sender: TObject);
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('INSERT INTO ocenka (name,pr_id,mod_id,st_id,tp_id) VALUES (:name,:pr_id,:mod_id,:st_id,:tp_id)');
FDQuery4.ParamByName('name').AsString:=DBLookupComboBox5.Text;
FDQuery4.ParamByName('pr_id').AsString:=DBLookupComboBox3.KeyValue;
FDQuery4.ParamByName('mod_id').AsString:=DBLookupComboBox4.KeyValue;
FDQuery4.ParamByName('st_id').AsString:=DBGrid1.Fields[0].AsString;
FDQuery4.ParamByName('tp_id').AsString:=DBLookupComboBox6.KeyValue;
FDQuery4.ExecSQL;
FDQuery1.Refresh;

end;

procedure TOcenivanie.DBLookupComboBox1Click(Sender: TObject);
begin
FDquery2.SQL.Clear;
FDquery2.SQL.Add ('SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name from studs,groups WHERE groups.id=studs.gp_id and groups.sp_id=:in2 ');
FDQuery2.ParamByName('in2').AsString:=DBLookupComboBox1.KeyValue;
FDQuery2.open;
DataSource1.DataSet:=FDQuery2;
FDquery3.SQL.Clear;
FDquery3.SQL.Add ('select * from groups WHERE sp_id= :in2 ');
FDQuery3.ParamByName('in2').AsString:=DBLookupComboBox1.KeyValue;
FDQuery3.open;
DBLookupComboBox2.ListSource:=DataSource2;
DBLookupComboBox2.ListField:='name';
DBLookupComboBox2.KeyField:='id';
DataModule4.Querydsp_uchp.SQL.Clear;
DataModule4.Querydsp_uchp.SQL.Add ('select id,name from predmeti WHERE sp_id= :in3');
DataModule4.Querydsp_uchp.ParamByName('in3').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Querydsp_uchp.open;
DataModule4.DataSourcedsp.DataSet:=DataModule4.Querydsp_uchp;

end;

procedure TOcenivanie.DBLookupComboBox2Click(Sender: TObject);
begin
FDquery2.SQL.Clear;
FDquery2.SQL.Add ('SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name from studs,groups WHERE groups.id=studs.gp_id and studs.gp_id=:in2');
FDQuery2.ParamByName('in2').AsString:=DBLookupComboBox2.KeyValue;
FDQuery2.open;
DBLookupComboBox2.ListSource:= DataSource2;
DBLookupComboBox2.ListField:='name';
DBLookupComboBox2.KeyField:='id';
DataSource1.DataSet:=FDQuery2;
end;

procedure TOcenivanie.DBLookupComboBox3Click(Sender: TObject);
begin
if(DBLookupComboBox6.KeyValue=1) then
begin
DataModule4.Querydspm_uchp.SQL.Clear;
DataModule4.Querydspm_uchp.SQL.Add ('select id,name from modul WHERE pr_id= :in3');
DataModule4.Querydspm_uchp.ParamByName('in3').AsString:=DBLookupComboBox3.KeyValue;
DataModule4.Querydspm_uchp.open;
DataModule4.DataSourcedspm_uchp.Enabled:=true;
DataModule4.DataSourcedspm_uchp.DataSet:=DataModule4.Querydspm_uchp;
end
else
begin
DataModule4.DataSourcedspm_uchp.Enabled:=false;
end;

end;

procedure TOcenivanie.DBLookupComboBox6Click(Sender: TObject);
begin
if(DBLookupComboBox6.KeyValue=1) then
begin
DataModule4.Querydspm_uchp.SQL.Clear;
DataModule4.Querydspm_uchp.SQL.Add ('select id,name from modul WHERE pr_id= :in3');
DataModule4.Querydspm_uchp.ParamByName('in3').AsString:=DBLookupComboBox3.KeyValue;
DataModule4.Querydspm_uchp.open;
DataModule4.DataSourcedspm_uchp.Enabled:=true;
DataModule4.DataSourcedspm_uchp.DataSet:=DataModule4.Querydspm_uchp;
end
else
begin
DataModule4.DataSourcedspm_uchp.Enabled:=false;
end;
end;

procedure TOcenivanie.FormCreate(Sender: TObject);
begin
FDQuery1.Active:=True;
if(sistem.Checked=true) then
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 1');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end
else
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 0');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end;

end;

procedure TOcenivanie.sistemClick(Sender: TObject);
begin
if(sistem.Checked=true) then
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 1');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end
else
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 0');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end;
end;

end.

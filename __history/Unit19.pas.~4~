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
    CheckBox1: TCheckBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDQuery3: TFDQuery;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ocenivanie: TOcenivanie;

implementation

{$R *.dfm}

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

procedure TOcenivanie.FormCreate(Sender: TObject);
begin
FDQuery1.Active:=True;
end;

end.

unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.Mask;

type
  Tgroup = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    addsp: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource2: TDataSource;
    Label2: TLabel;
    FDQuery5: TFDQuery;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure addspClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  group: Tgroup;

implementation

{$R *.dfm}

procedure Tgroup.addspClick(Sender: TObject);
begin
FDQuery3.SQL.Clear;
FDQuery3.SQL.Add ('INSERT INTO groups (name,sp_id) VALUES (:name,:sp_id)');
FDQuery3.ParamByName('name').AsString:=Edit1.Text;
FDQuery3.ParamByName('sp_id').AsString:=DBLookupComboBox1.KeyValue;
FDQuery3.ExecSQL;
FDQuery1.Refresh;
Edit1.Clear;
end;

procedure Tgroup.Button2Click(Sender: TObject);
begin
FDQuery5.SQL.Clear;
FDQuery5.SQL.Add ('UPDATE groups SET name=:name WHERE id=:id');
FDQuery5.ParamByName('name').AsString:=Edit2.Text;
FDQuery5.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;
FDQuery5.ExecSQL;
FDQuery1.Refresh;
end;

procedure Tgroup.Button1Click(Sender: TObject);
begin
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add ('DELETE FROM groups  WHERE id=:id');
FDQuery2.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;
FDQuery2.ExecSQL;
FDQuery1.Refresh;
end;

procedure Tgroup.DBGrid1CellClick(Column: TColumn);
begin
Edit2.Text:=DBGrid1.Fields[1].AsString;
end;

procedure Tgroup.DBLookupComboBox1Click(Sender: TObject);
begin
FDquery1.SQL.Clear;
FDquery1.SQL.Add ('select * from groups WHERE sp_id= :in2 ');
FDQuery1.ParamByName('in2').AsString:=DBLookupComboBox1.KeyValue;
FDQuery1.Open;
DataSource2.DataSet:=FDQuery1;
end;

procedure Tgroup.FormCreate(Sender: TObject);
begin
FDQuery1.Active:=true;
FDQuery4.Active:=true;
end;

end.

unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Unit4;

type
  TSpecialnost = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    Button1: TButton;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    addsp: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure addspClick(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Specialnost: TSpecialnost;

implementation

uses Unit10;

{$R *.dfm}

procedure TSpecialnost.addspClick(Sender: TObject);
begin
FDQuery3.SQL.Clear;
FDQuery3.SQL.Add ('INSERT INTO spec (name) VALUES (:name)');
FDQuery3.ParamByName('name').AsString:=Edit1.Text;
FDQuery3.ExecSQL;
FDQuery1.Refresh;
Edit1.Clear;
end;

procedure TSpecialnost.Button1Click(Sender: TObject);
begin
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add ('DELETE FROM spec  WHERE id=:id');
FDQuery2.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;
FDQuery2.ExecSQL;
FDQuery1.Refresh;
end;

procedure TSpecialnost.Button2Click(Sender: TObject);
begin
Redak.show;
Redak.Label2.Caption:=DBGrid1.Fields[0].AsString;
Redak.name.Text:=DBGrid1.Fields[1].AsString;
end;

procedure TSpecialnost.FormCreate(Sender: TObject);
begin
fdquery1.Active:=true;
end;

end.

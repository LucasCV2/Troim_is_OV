unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdolgnost = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    addsp: TButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure addspClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dolgnost: Tdolgnost;

implementation

{$R *.dfm}

procedure Tdolgnost.addspClick(Sender: TObject);
begin
FDQuery3.SQL.Clear;
FDQuery3.SQL.Add ('INSERT INTO `dolgnost` (name) VALUES (:name)');
FDQuery3.ParamByName('name').AsString:=Edit1.Text;
FDQuery3.ExecSQL;
FDQuery1.Refresh;
Edit1.Clear;
end;

procedure Tdolgnost.Button1Click(Sender: TObject);
begin
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add ('DELETE FROM `dolgnost`  WHERE id=:id');
FDQuery2.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;
FDQuery2.ExecSQL;
FDQuery1.Refresh;
end;

procedure Tdolgnost.Button2Click(Sender: TObject);
begin
FDQuery3.SQL.Clear;
FDQuery3.SQL.Add ('UPDATE `dolgnost` SET name=:name WHERE id=:id');
FDQuery3.ParamByName('name').AsString:=DBEdit1.Text;
FDQuery3.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;
FDQuery3.ExecSQL;
FDQuery1.Refresh;
end;

procedure Tdolgnost.FormCreate(Sender: TObject);
begin
FDQuery1.Active:=true;
end;

end.

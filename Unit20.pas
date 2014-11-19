unit Unit20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TPropuski = class(TForm)
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    FDQuery2: TFDQuery;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DBGrid2: TDBGrid;
    FDQuery3: TFDQuery;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Propuski: TPropuski;

implementation

{$R *.dfm}

procedure TPropuski.Button1Click(Sender: TObject);
begin
FDquery2.SQL.Clear;
FDquery2.SQL.Add ('INSERT INTO propuski (date,koll) VALUES (:date,:koll)');
FDQuery2.ParamByName('date').AsDate:=DateTimePicker1.Date;
FDQuery2.ParamByName('koll').AsString:=Edit1.Text;
//FDQuery2.ParamByName('tell').AsString:=tell.Text;
FDQuery2.ExecSQL;
FDQuery1.Active:=True;
FDQuery1.Refresh;
end;

procedure TPropuski.FormCreate(Sender: TObject);
begin
FDQuery1.Active:=True;
FDQuery1.Refresh;
end;

end.

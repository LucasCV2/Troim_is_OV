unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TRedak = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    name: TEdit;
    Button1: TButton;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Redak: TRedak;

implementation

uses Unit9;

{$R *.dfm}

procedure TRedak.Button1Click(Sender: TObject);
begin
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add ('UPDATE spec SET name=:name WHERE id=:id');
FDQuery1.ParamByName('name').Value:=Redak.name.Text;
FDQuery1.ParamByName('id').AsString:=Redak.Label2.Caption;
FDQuery1.ExecSQL;
Specialnost.fdquery1.Refresh;
Redak.Close;
end;

end.

unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tnewlkrod = class(TForm)
    Label1: TLabel;
    fio: TEdit;
    mesto_rab: TEdit;
    dolgnost: TEdit;
    mestorab: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tel_dom: TEdit;
    tel_rab: TEdit;
    Label6: TLabel;
    adress: TEdit;
    Label7: TLabel;
    Button1: TButton;
    fam_id: TDBLookupComboBox;
    FDQuery: TFDQuery;
    Label8: TLabel;
    Label9: TLabel;
    fiol: TLabel;
    nomer: TLabel;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  newlkrod: Tnewlkrod;

implementation

{$R *.dfm}

procedure Tnewlkrod.Button1Click(Sender: TObject);
begin
FDquery.SQL.Clear;
FDquery.SQL.Add ('INSERT INTO personal_r (st_id,fam_id,fio,mesto_rab,tel_dom,tel_rab,dolgnost,adress) VALUES (:st_id,:fam_id,:fio,:mesto_rab,:tel_dom,:tel_rab,:dolgnost,:adress)');
FDQuery.ParamByName('st_id').AsString:=nomer.Caption;
FDQuery.ParamByName('adress').AsString:=adress.Text;
FDQuery.ParamByName('fio').AsString:=fio.Text;
FDQuery.ParamByName('mesto_rab').AsString:=mesto_rab.Text;
FDQuery.ParamByName('tel_dom').AsString:=tel_dom.Text;
FDQuery.ParamByName('tel_rab').AsString:=tel_rab.Text;
FDQuery.ParamByName('dolgnost').AsString:=dolgnost.Text;
FDQuery.ParamByName('fam_id').AsString:=fam_id.KeyValue;;
FDQuery.ExecSQL;
adress.Clear;
fio.Clear;
mesto_rab.Clear;
tel_dom.Clear;
tel_rab.Clear;
dolgnost.Clear;
newlkrod.Close;
end;

end.

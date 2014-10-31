unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Unit1;

type
  Tred_ks = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    fio2: TLabel;
    nomer2: TLabel;
    dolgnost2: TDBLookupComboBox;
    adress2: TEdit;
    tell2: TEdit;
    inn2: TEdit;
    dater2: TDateTimePicker;
    pass2: TEdit;
    vidan2: TEdit;
    Button1: TButton;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  red_ks: Tred_ks;

implementation

{$R *.dfm}


procedure Tred_ks.Button1Click(Sender: TObject);
begin
FDquery1.SQL.Clear;
FDquery1.SQL.Add ('UPDATE personal, dolgnost SET dolgnost.name=:name, personal.adress=:adress, personal.tell=:tell, personal.dater=:dater, personal.pass=:pass,personal.vidan=:vidan,personal.inn=:inn WHERE dolgnost.id=personal.st_id and personal.st_id=:in2');
FDquery1.ParamByName('id').AsString:=spstuds.DBGrid1.Fields[0].AsString;
FDQuery1.ParamByName('adress').AsString:=adress2.Text;
FDQuery1.ParamByName('tell').AsString:=tell2.Text;
FDQuery1.ParamByName('dater').AsDate:=dater2.Date;
FDQuery1.ParamByName('pass').AsString:=pass2.Text;
FDQuery1.ParamByName('vidan').AsString:=vidan2.Text;
FDQuery1.ParamByName('inn').AsString:=inn2.Text;
FDQuery1.ParamByName('name').AsString:=dolgnost2.KeyValue;;
FDQuery1.ExecSQL;
end;

end.

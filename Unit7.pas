unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Unit16, Unit4;

type
  Tnewlkst = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dolgnost: TDBLookupComboBox;
    adress: TEdit;
    tell: TEdit;
    inn: TEdit;
    dater: TDateTimePicker;
    pass: TEdit;
    Label7: TLabel;
    vidan: TEdit;
    Button1: TButton;
    Label8: TLabel;
    Label9: TLabel;
    fio: TLabel;
    nomer: TLabel;
    FDQuery: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  newlkst: Tnewlkst;

implementation

{$R *.dfm}

procedure Tnewlkst.Button1Click(Sender: TObject);
begin
FDquery.SQL.Clear;
FDquery.SQL.Add ('INSERT INTO personal (st_id,adress,tell,dater,pass,vidan,inn,dolgnost) VALUES (:st_id,:adress,:tell,:dater,:pass,:vidan,:inn,:dolgnost)');
FDQuery.ParamByName('st_id').AsString:=nomer.Caption;
FDQuery.ParamByName('adress').AsString:=adress.Text;
FDQuery.ParamByName('tell').AsString:=tell.Text;
FDQuery.ParamByName('dater').AsDate:=dater.Date;
FDQuery.ParamByName('pass').AsString:=pass.Text;
FDQuery.ParamByName('vidan').AsString:=vidan.Text;
FDQuery.ParamByName('inn').AsString:=inn.Text;
FDQuery.ParamByName('dolgnost').AsString:=dolgnost.KeyValue;;
FDQuery.ExecSQL;
adress.Clear;
tell.Clear;
pass.Clear;
vidan.Clear;
inn.Clear;
newlkst.Close;
end;

procedure Tnewlkst.DBGrid1DblClick(Sender: TObject);
begin
fam_card.show;
fam_card.fio.text:=newlkst.DBGrid1.Fields[0].AsString;
fam_card.mesto_rab.text:=newlkst.DBGrid1.Fields[1].AsString;
fam_card.tel_dom.text:=newlkst.DBGrid1.Fields[2].AsString;
fam_card.otch.text:=spstuds.DBGrid1.Fields[3].AsString;
DataModule4.redstform.SQL.Clear;
DataModule4.redstform.SQL.Add ('select id,sp_id from groups WHERE name= :in3');
DataModule4.redstform.ParamByName('in3').AsString:=DBGrid1.Fields[4].AsString;
DataModule4.redstform.open;
spid:=DataModule4.redstform.FieldByName('sp_id').AsInteger;
gpid:=DataModule4.redstform.FieldByName('id').AsInteger;
redstuds.spComboBox1.KeyValue:=spid;
DataModule4.redstform2.SQL.Clear;
DataModule4.redstform2.SQL.Add ('select * from groups WHERE sp_id= :in4 ');
DataModule4.redstform2.ParamByName('in4').AsInteger:=spid;
DataModule4.redstform2.open;
fam_card.gpComboBox2.ListSource:= DataModule4.redstfirds;
fam_card.gpComboBox2.ListField:='name';
fam_card.gpComboBox2.KeyField:='id';
fam_card.gpComboBox2.KeyValue:=gpid;
end;

procedure Tnewlkst.FormCreate(Sender: TObject);
begin
FDQuery1.Active:=true;
end;

end.

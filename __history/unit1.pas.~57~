unit unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMySQL, Data.FMTBcd,
  Datasnap.DBClient, Data.DB, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Datasnap.Provider, Vcl.Buttons, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, Unit4, Vcl.Menus, Vcl.StdCtrls;

type
  Tspstuds = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N12: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
  
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spstuds: Tspstuds;

implementation

{$R *.dfm}

uses Unit3, Unit5, Unit6, Unit7, Unit8, Unit17;

procedure Tspstuds.Button1Click(Sender: TObject);
var search:string;
begin
FDquery3.SQL.Clear;
FDquery3.SQL.Add ('SELECT studs.id, studs.fam,studs.imya,studs.otch,studs.gp_id,groups.name from studs LEFT JOIN groups on groups.id=studs.gp_id WHERE studs.otch like ''%'+edit1.text+'%'' or studs.fam like ''%'+edit1.text+'%'' or studs.imya like ''%'+edit1.text+'%''  ');
FDQuery3.open;
DataModule4.spstudsDataSource.DataSet:=FDQuery3;
end;



procedure Tspstuds.DBGrid1DblClick(Sender: TObject);
var
spid,gpid:integer;
begin
redstuds.show;
redstuds.nomer.text:=spstuds.DBGrid1.Fields[0].AsString;
redstuds.fam.text:=spstuds.DBGrid1.Fields[1].AsString;
redstuds.imya.text:=spstuds.DBGrid1.Fields[2].AsString;
redstuds.otch.text:=spstuds.DBGrid1.Fields[3].AsString;
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
redstuds.gpComboBox2.ListSource:= DataModule4.redstfirds;
redstuds.gpComboBox2.ListField:='name';
redstuds.gpComboBox2.KeyField:='id';
redstuds.gpComboBox2.KeyValue:=gpid;
end;

procedure Tspstuds.DBLookupComboBox1Click(Sender: TObject);
begin

FDquery1.SQL.Clear;
FDquery1.SQL.Add ('SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name from studs,groups WHERE groups.id=studs.gp_id and groups.sp_id=:in2 ');
FDQuery1.ParamByName('in2').AsString:=DBLookupComboBox1.KeyValue;
FDQuery1.open;
DataModule4.spstudsDataSource.DataSet:=FDQuery1;
FDquery2.SQL.Clear;
FDquery2.SQL.Add ('select * from groups WHERE sp_id= :in2 ');
FDQuery2.ParamByName('in2').AsString:=DBLookupComboBox1.KeyValue;
FDQuery2.open;
DBLookupComboBox2.ListSource:= DataSource1;
DBLookupComboBox2.ListField:='name';
DBLookupComboBox2.KeyField:='id';
end;

procedure Tspstuds.DBLookupComboBox2Click(Sender: TObject);
begin
FDquery1.SQL.Clear;
FDquery1.SQL.Add ('SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name from studs,groups WHERE groups.id=studs.gp_id and studs.gp_id=:in2');
FDQuery1.ParamByName('in2').AsString:=DBLookupComboBox2.KeyValue;
FDQuery1.open;
DBLookupComboBox2.ListSource:= DataSource1;
DBLookupComboBox2.ListField:='name';
DBLookupComboBox2.KeyField:='id';
DataModule4.spstudsDataSource.DataSet:=FDQuery1;
end;

procedure Tspstuds.N12Click(Sender: TObject);
var
spid,gpid:integer;
begin
redstuds.show;
redstuds.nomer.text:=spstuds.DBGrid1.Fields[0].AsString;
redstuds.fam.text:=spstuds.DBGrid1.Fields[1].AsString;
redstuds.imya.text:=spstuds.DBGrid1.Fields[2].AsString;
redstuds.otch.text:=spstuds.DBGrid1.Fields[3].AsString;
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
redstuds.gpComboBox2.ListSource:= DataModule4.redstfirds;
redstuds.gpComboBox2.ListField:='name';
redstuds.gpComboBox2.KeyField:='id';
redstuds.gpComboBox2.KeyValue:=gpid;
end;

procedure Tspstuds.N3Click(Sender: TObject);
var
dl:string;
begin
red_ks.fio2.Caption:=' '+spstuds.DBGrid1.Fields[1].AsString +' '+ spstuds.DBGrid1.Fields[2].AsString +' '+ spstuds.DBGrid1.Fields[3].AsString;
red_ks.nomer2.Caption:= spstuds.DBGrid1.Fields[0].AsString;
red_ks.show;
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('select * from personal WHERE st_id= :in6 ');
FDQuery4.ParamByName('in6').AsString:=DBGrid1.Fields[0].AsString;
FDQuery4.open;
red_ks.adress2.text:=FDQuery4.Fields[2].AsString;
red_ks.tell2.Text:=FDQuery4.Fields[3].AsString;
red_ks.dater2.date:=FDQuery4.Fields[4].AsDateTime;
red_ks.pass2.Text:=FDQuery4.Fields[5].AsString;
red_ks.vidan2.Text:=FDQuery4.Fields[6].AsString;
red_ks.inn2.Text:=FDQuery4.Fields[7].AsString;
dl:=FDQuery4.Fields[8].Asstring;
DataModule4.FDQuery4.SQL.Clear;
DataModule4.FDQuery4.SQL.Add ('select * from dolgnost WHERE id= :in7 ');
DataModule4.FDQuery4.ParamByName('in7').AsString:=dl;
DataModule4.FDQuery4.open;
red_ks.dolgnost2.KeyValue:=DataModule4.FDQuery4.fields[0].asstring;
red_ks.dolgnost2.KeyValue:=FDQuery4.Fields[8].Asstring;
end;

procedure Tspstuds.N5Click(Sender: TObject);
var
dl:string;
begin
kartastud.show;
kartastud.fio.Caption:=' '+spstuds.DBGrid1.Fields[1].AsString +' '+ spstuds.DBGrid1.Fields[2].AsString +' '+ spstuds.DBGrid1.Fields[3].AsString;
kartastud.nomer.Caption:= spstuds.DBGrid1.Fields[0].AsString;
DataModule4.kartastw.SQL.Clear;
DataModule4.kartastw.SQL.Add ('select * from personal WHERE st_id= :in6 ');
DataModule4.kartastw.ParamByName('in6').AsString:=DBGrid1.Fields[0].AsString;
DataModule4.kartastw.open;
kartastud.adress.Caption:=DataModule4.kartastw.fields[2].asstring;
kartastud.tell.Caption:=DataModule4.kartastw.fields[3].asstring;
kartastud.dater.Caption:=DataModule4.kartastw.fields[4].asstring;
kartastud.pass.Caption:=DataModule4.kartastw.fields[5].asstring;
kartastud.vidan.Caption:=DataModule4.kartastw.fields[6].asstring;
kartastud.inn.Caption:=DataModule4.kartastw.fields[7].asstring;
dl:=DataModule4.kartastw.fields[8].asstring;
DataModule4.kartastwdl.SQL.Clear;
DataModule4.kartastwdl.SQL.Add ('select name from dolgnost WHERE id= :in7 ');
DataModule4.kartastwdl.ParamByName('in7').AsString:=dl;
DataModule4.kartastwdl.open;
kartastud.dolgnost.Caption:=DataModule4.kartastwdl.fields[0].asstring;
DataModule4.FDQuery1.SQL.Clear;
DataModule4.FDQuery1.SQL.Add ('SELECT personal_r.id,personal_r.fio FROM asu.personal_r WHERE st_id=:id');
DataModule4.FDQuery1.ParamByName('id').AsString:=spstuds.DBGrid1.Fields[0].AsString;
DataModule4.FDQuery1.open;
end;

procedure Tspstuds.N6Click(Sender: TObject);
begin
addstuds.show;
end;

procedure Tspstuds.N7Click(Sender: TObject);
begin
DataModule4.del_stbutton.Close;
DataModule4.del_stbutton.SQL.Text:= 'DELETE studs,personal,personal_r FROM studs left JOIN personal on personal.st_id=studs.id left JOIN personal_r on personal_r.st_id=studs.id WHERE studs.id='+DBGrid1.Fields[0].DisplayText+'';
DataModule4.del_stbutton.ExecSQL;
DataModule4.FDQuery15.Refresh;
end;

procedure Tspstuds.N8Click(Sender: TObject);
begin
newlkst.show;
newlkst.fio.Caption:=' '+spstuds.DBGrid1.Fields[1].AsString +' '+ spstuds.DBGrid1.Fields[2].AsString +' '+ spstuds.DBGrid1.Fields[3].AsString;
newlkst.nomer.Caption:= spstuds.DBGrid1.Fields[0].AsString;
end;

procedure Tspstuds.N9Click(Sender: TObject);
begin
newlkrod.show;
newlkrod.fiol.Caption:=' '+spstuds.DBGrid1.Fields[1].AsString +' '+ spstuds.DBGrid1.Fields[2].AsString +' '+ spstuds.DBGrid1.Fields[3].AsString;
newlkrod.nomer.Caption:= spstuds.DBGrid1.Fields[0].AsString;
end;



end.

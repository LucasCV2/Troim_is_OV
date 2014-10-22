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
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, Unit4, Vcl.Menus;

type
  Tspstuds = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
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
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N12Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spstuds: Tspstuds;

implementation

{$R *.dfm}

uses Unit3, Unit5, Unit6, Unit7, Unit8;

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
end;

procedure Tspstuds.N6Click(Sender: TObject);
begin
addstuds.show;
end;

procedure Tspstuds.N7Click(Sender: TObject);
begin
DataModule4.del_stbutton.Close;
DataModule4.del_stbutton.SQL.Text:= 'DELETE from studs WHERE id='+DBGrid1.Fields[0].DisplayText+'';
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

procedure Tspstuds.SpeedButton1Click(Sender: TObject);
begin
addstuds.show;
end;

procedure Tspstuds.SpeedButton3Click(Sender: TObject);
begin
DataModule4.del_stbutton.Close;
DataModule4.del_stbutton.SQL.Text:= 'DELETE from studs WHERE id='+DBGrid1.Fields[0].DisplayText+'';
DataModule4.del_stbutton.ExecSQL;
DataModule4.FDQuery15.Refresh;

end;

end.

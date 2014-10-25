unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tuchplanst = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    name_pr: TEdit;
    Label3: TLabel;
    chasi: TEdit;
    Label4: TLabel;
    gon_n: TDateTimePicker;
    Button1: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    chasi_red: TEdit;
    name_pr_red: TEdit;
    gon_n_red: TDateTimePicker;
    Button2: TButton;
    Button3: TButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    name_mod: TEdit;
    Button4: TButton;
    Label7: TLabel;
    red_mod: TEdit;
    Button5: TButton;
    Button6: TButton;
    DBGrid2: TDBGrid;
    arhiv: TCheckBox;
    arhiv_box: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure arhiv_boxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uchplanst: Tuchplanst;

implementation

{$R *.dfm}

uses Unit4;

procedure Tuchplanst.arhiv_boxClick(Sender: TObject);
  begin
DataModule4.Querydsp_uchp.SQL.Clear;
DataModule4.Querydsp_uchp.SQL.Add ('select id,name,chasi,god_n from predmeti WHERE sp_id= :in3 and arhiv=:arhiv');
DataModule4.Querydsp_uchp.ParamByName('in3').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Querydsp_uchp.ParamByName('arhiv').AsBoolean:=arhiv_box.Checked;
DataModule4.Querydsp_uchp.open;
DataModule4.DataSourcedsp.DataSet:=DataModule4.Querydsp_uchp;
DataModule4.DataSourcedspm_uchp.Enabled:=false;
name_pr_red.Clear;
chasi_red.Clear;
arhiv.Checked:=false;
 end;

procedure Tuchplanst.Button1Click(Sender: TObject);
begin
DataModule4.Queryinsdsp_ucp.SQL.Clear;
DataModule4.Queryinsdsp_ucp.SQL.Add ('INSERT INTO predmeti (name,chasi,god_n,sp_id) VALUES (:name,:chasi,:god_n,:sp_id)');
DataModule4.Queryinsdsp_ucp.ParamByName('name').AsString:=name_pr.Text;
DataModule4.Queryinsdsp_ucp.ParamByName('chasi').AsString:=chasi.Text;
DataModule4.Queryinsdsp_ucp.ParamByName('god_n').AsDate:=gon_n.DateTime;
DataModule4.Queryinsdsp_ucp.ParamByName('sp_id').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Queryinsdsp_ucp.ExecSQL;
DataModule4.Querydsp_uchp.Refresh;
name_pr.Clear;
chasi.Clear;
end;

procedure Tuchplanst.Button2Click(Sender: TObject);
begin
DataModule4.Queryinsdsp_ucp.SQL.Clear;
DataModule4.Queryinsdsp_ucp.SQL.Add ('UPDATE predmeti SET name=:name,chasi=:chasi,god_n=:god_n,arhiv=:arhiv,sp_id=:sp_id WHERE id=:id');
DataModule4.Queryinsdsp_ucp.ParamByName('name').AsString:=name_pr_red.Text;
DataModule4.Queryinsdsp_ucp.ParamByName('chasi').AsString:=chasi_red.Text;
DataModule4.Queryinsdsp_ucp.ParamByName('god_n').AsDate:=gon_n_red.DateTime;
DataModule4.Queryinsdsp_ucp.ParamByName('arhiv').AsBoolean:=arhiv.Checked;
DataModule4.Queryinsdsp_ucp.ParamByName('sp_id').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Queryinsdsp_ucp.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;
DataModule4.Queryinsdsp_ucp.ExecSQL;
DataModule4.DataSourcedspm_uchp.Enabled:=false;
DataModule4.Querydsp_uchp.Refresh;
name_pr_red.Clear;
chasi_red.Clear;
arhiv.Checked:=false;
end;

procedure Tuchplanst.Button3Click(Sender: TObject);
begin
DataModule4.Queryinsdsp_ucp.SQL.Clear;
DataModule4.Queryinsdsp_ucp.SQL.Add ('DELETE predmeti,modul FROM predmeti left JOIN modul on modul.pr_id=predmeti.id  WHERE predmeti.id=:id');
DataModule4.Queryinsdsp_ucp.ParamByName('id').AsString:=DBGrid1.Fields[0].AsString;
DataModule4.Queryinsdsp_ucp.ExecSQL;
DataModule4.DataSourcedspm_uchp.Enabled:=false;
DataModule4.Querydsp_uchp.Refresh;
name_pr_red.Clear;
chasi_red.Clear;
end;

procedure Tuchplanst.Button4Click(Sender: TObject);
begin
DataModule4.Query_inst_mod_uchp.SQL.Clear;
DataModule4.Query_inst_mod_uchp.SQL.Add ('INSERT INTO modul (name,pr_id) VALUES (:name,:pr_id)');
DataModule4.Query_inst_mod_uchp.ParamByName('name').AsString:=name_mod.Text;
DataModule4.Query_inst_mod_uchp.ParamByName('pr_id').AsString:=DBGrid1.Fields[0].AsString;
DataModule4.Query_inst_mod_uchp.ExecSQL;
DataModule4.Querydspm_uchp.Refresh;
name_mod.Clear;

end;

procedure Tuchplanst.Button5Click(Sender: TObject);
begin
DataModule4.Query_inst_mod_uchp.SQL.Clear;
DataModule4.Query_inst_mod_uchp.SQL.Add ('UPDATE modul SET name=:name WHERE id=:id');
DataModule4.Query_inst_mod_uchp.ParamByName('name').AsString:=red_mod.Text;
DataModule4.Query_inst_mod_uchp.ParamByName('id').AsString:=DBGrid2.Fields[0].AsString;
DataModule4.Query_inst_mod_uchp.ExecSQL;
DataModule4.Querydspm_uchp.Refresh;
red_mod.Clear;
end;

procedure Tuchplanst.Button6Click(Sender: TObject);
begin
DataModule4.Query_inst_mod_uchp.SQL.Clear;
DataModule4.Query_inst_mod_uchp.SQL.Add ('DELETE FROM modul  WHERE id=:id');
DataModule4.Query_inst_mod_uchp.ParamByName('id').AsString:=DBGrid2.Fields[0].AsString;
DataModule4.Query_inst_mod_uchp.ExecSQL;
DataModule4.Querydspm_uchp.Refresh;
red_mod.Clear;
end;

procedure Tuchplanst.DBGrid1CellClick(Column: TColumn);
begin
DataModule4.Querydspm_uchp.SQL.Clear;
DataModule4.Querydspm_uchp.SQL.Add ('select id,name from modul WHERE pr_id= :in3');
DataModule4.Querydspm_uchp.ParamByName('in3').AsString:=DBGrid1.Fields[0].AsString;
DataModule4.Querydspm_uchp.open;
DataModule4.DataSourcedspm_uchp.Enabled:=true;
DataModule4.DataSourcedspm_uchp.DataSet:=DataModule4.Querydspm_uchp;
name_pr_red.Text:=DBGrid1.Fields[1].AsString;
chasi_red.Text:=DBGrid1.Fields[2].AsString;
gon_n_red.DateTime:=DBGrid1.Fields[3].AsDateTime;
DataModule4.Queryarhiv.SQL.Clear;
DataModule4.Queryarhiv.SQL.Add ('select arhiv from predmeti WHERE id= :in3 and arhiv=:arhiv');
DataModule4.Queryarhiv.ParamByName('in3').AsString:=DBGrid1.Fields[0].AsString;
DataModule4.Queryarhiv.ParamByName('arhiv').AsBoolean:=arhiv_box.Checked;
DataModule4.Queryarhiv.open;
arhiv.Checked:=DataModule4.Queryarhiv.fields[0].AsBoolean;
end;

procedure Tuchplanst.DBGrid2CellClick(Column: TColumn);
begin
red_mod.Text:= DBGrid2.Fields[1].AsString
end;

procedure Tuchplanst.DBLookupComboBox1Click(Sender: TObject);
begin
DataModule4.Querydsp_uchp.SQL.Clear;
DataModule4.Querydsp_uchp.SQL.Add ('select id,name,chasi,god_n from predmeti WHERE sp_id= :in3 and arhiv=:arhiv');
DataModule4.Querydsp_uchp.ParamByName('in3').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Querydsp_uchp.ParamByName('arhiv').AsBoolean:=arhiv_box.Checked;
DataModule4.Querydsp_uchp.open;
DataModule4.DataSourcedsp.DataSet:=DataModule4.Querydsp_uchp;
DataModule4.DataSourcedspm_uchp.Enabled:=false;
end;

procedure Tuchplanst.FormCreate(Sender: TObject);
var arhiv:Boolean;
begin
datamodule4.Querysp_uchp.Active:=true;
DBLookupComboBox1.KeyValue:=1;
DataModule4.Querydsp_uchp.SQL.Clear;
DataModule4.Querydsp_uchp.SQL.Add ('select id,name,chasi,god_n from predmeti WHERE sp_id= :in3 and arhiv=:arhiv');
DataModule4.Querydsp_uchp.ParamByName('in3').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Querydsp_uchp.ParamByName('arhiv').AsBoolean:=arhiv_box.Checked;
DataModule4.Querydsp_uchp.open;
DataModule4.DataSourcedsp.DataSet:=DataModule4.Querydsp_uchp;
DataModule4.DataSourcedspm_uchp.Enabled:=false;
end;

end.

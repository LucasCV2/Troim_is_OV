unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Unit4,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TOcenivanie = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label6: TLabel;
    sistem: TCheckBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDQuery3: TFDQuery;
    Label7: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    FDQuery4: TFDQuery;
    FDQuery5: TFDQuery;
    FDQuery6: TFDQuery;
    FDQuery7: TFDQuery;
    DataSource3: TDataSource;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    Label8: TLabel;
    FDQuery8: TFDQuery;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure sistemClick(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Selecte;
    procedure Inserte;
    procedure Update;
    procedure Delete;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ocenivanie: TOcenivanie;
  xi: string;

implementation

{$R *.dfm}

Procedure TOcenivanie.Selecte;
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('INSERT INTO ocenka (st_id) SELECT id FROM studs');
// переменной ИН2 присваиваем значение из второго комбика и заливаем
// айдишники студентов в таблицу оценок
FDQuery5.ExecSQL;
end;


procedure TOcenivanie.Inserte;
begin
FDquery5.SQL.Clear;
FDquery5.SQL.Add ('INSERT INTO ocenka (st_id) SELECT id FROM studs WHERE studs.gp_id=:in2');
// переменной ИН2 присваиваем значение из второго комбика и заливаем
// айдишники студентов в таблицу оценок
FDQuery5.ParamByName('in2').AsString:=DBLookupComboBox2.KeyValue;
FDQuery5.ExecSQL;
end;

procedure TOcenivanie.Update;
begin
FDquery2.SQL.Clear; //  очищаем СКЮЛЬ второго ФДКвери
FDquery2.SQL.Add ('UPDATE ocenka SET pr_id=:in5');
FDQuery2.ParamByName('in5').AsString:=DBLookupComboBox3.KeyValue;
FDQuery2.ExecSQL;

FDquery2.SQL.Clear;
FDquery2.SQL.Add ('UPDATE ocenka SET mod_id=:m');
FDQuery2.ParamByName('m').AsString:=DBLookupComboBox4.KeyValue;
FDQuery2.ExecSQL;

FDquery2.SQL.Clear; //  очищаем СКЮЛЬ второго ФДКвери
FDquery2.SQL.Add ('UPDATE ocenka SET tp_id=:id');
FDQuery2.ParamByName('id').AsString:=DBLookupComboBox6.KeyValue;
// показываем их в комбике
FDQuery2.ExecSQL;
end;

procedure TOcenivanie.Delete;
begin
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add ('DELETE ocenka.* FROM ocenka, ocenkanew  WHERE ocenka.st_id=ocenkanew.st_id and ocenka.pr_id=ocenkanew.pr_id and ocenka.tp_id=ocenkanew.tp_id OR ocenka.mod_id=ocenkanew.mod_id ');
FDQuery6.ExecSQL;
// чистим табл от идентичных записей
end;


//кнопка Удалить
procedure TOcenivanie.Button1Click(Sender: TObject);
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('DELETE FROM ocenkanew WHERE st_id='+DBGrid2.Fields[0].DisplayText+'');
FDQuery4.ExecSQL;
if (DBLookupComboBox6.KeyValue=1)
then
begin
FDQuery7.Refresh;
end
else
FDQuery8.Refresh;
end;

procedure TOcenivanie.Button2Click(Sender: TObject);  // ПОСТАВИТЬ ОЦЕНКУ
begin
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('UPDATE ocenka SET name=:name WHERE st_id='+DBGrid1.Fields[0].DisplayText+'');
FDQuery4.ParamByName('name').AsString:=DBLookupComboBox5.Text;
FDQuery4.ExecSQL;
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('INSERT INTO ocenkanew (id,name,pr_id,mod_id,st_id,tp_id) SELECT * FROM ocenka WHERE name>1');
FDQuery4.ExecSQL;
FDQuery4.SQL.Clear;
FDQuery4.SQL.Add ('DELETE FROM ocenka WHERE name>1');
FDQuery4.ExecSQL;
FDQuery2.Refresh;
if (DBLookupComboBox6.KeyValue=1)
then
begin
FDQuery7.Refresh;
end
else
FDQuery8.Refresh;

end;




procedure TOcenivanie.Button3Click(Sender: TObject); // С О Х Р А Н И Т Ь
begin
DBLookupComboBox1.KeyValue:=-1;
DBLookupComboBox2.KeyValue:=-1;
DBLookupComboBox3.KeyValue:=-1;
DBLookupComboBox6.KeyValue:=-1;
DBLookupComboBox4.KeyValue:=-1;
DBLookupComboBox5.KeyValue:=-1;
DBGrid1.Visible:=False;
DBGrid2.Visible:=False;
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add ('DELETE FROM ocenka WHERE id<>0');
FDQuery6.ExecSQL;
FDQuery2.Refresh;
DBLookupComboBox1.Enabled:=true;

end;

//Кнопка Отменить
procedure TOcenivanie.Button5Click(Sender: TObject);
begin
DBLookupComboBox1.KeyValue:=-1;
DBLookupComboBox2.KeyValue:=-1;
DBLookupComboBox3.KeyValue:=-1;
DBLookupComboBox6.KeyValue:=-1;
DBLookupComboBox4.KeyValue:=-1;
DBLookupComboBox5.KeyValue:=-1;
FDQuery6.SQL.Clear;
FDQuery6.SQL.Add ('DELETE FROM ocenka WHERE id<>0');
FDQuery8.SQL.Add ('DELETE FROM ocenkanew WHERE id<>0');
FDQuery6.ExecSQL;
FDQuery2.Refresh;
//DBLookupComboBox1.Enabled:=true;
end;

procedure TOcenivanie.DBLookupComboBox1Click(Sender: TObject);
// С П Е Ц И А Л Ь Н О С Т Ь
begin
if (DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0)
then
begin
DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
end;
FDquery3.SQL.Clear; //
FDquery3.SQL.Add ('select * from groups WHERE sp_id= :in2 ');
//
FDQuery3.ParamByName('in2').AsString:=DBLookupComboBox1.KeyValue;
//
FDQuery3.Open;
DBLookupComboBox2.ListSource:=DataSource2;
//данные для второго комбика брать из DataSource2
DBLookupComboBox2.ListField:='name';
// показывать в комбике столбик name
DBLookupComboBox2.KeyField:='id'; //ключевое поле
DataModule4.Querydsp_uchp.SQL.Clear;
DataModule4.Querydsp_uchp.SQL.Add ('select id,name from predmeti WHERE sp_id= :in3');
DataModule4.Querydsp_uchp.ParamByName('in3').AsString:=DBLookupComboBox1.KeyValue;
DataModule4.Querydsp_uchp.open;
DataModule4.DataSourcedsp.DataSet:=DataModule4.Querydsp_uchp;
//DBLookupComboBox2.Enabled:=true;
//DBLookupComboBox1.Enabled:=false;
end;



procedure TOcenivanie.DBLookupComboBox2Click(Sender: TObject);
//Г Р У П П А

begin
Inserte;
Update;
Delete;
Selecte;
if (DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0)
then
begin
DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
end;
FDquery2.SQL.Clear; //  очищаем СКЮЛЬ второго ФДКвери
FDquery2.SQL.Add ('SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name,ocenka.name from studs,ocenka,groups WHERE groups.id=studs.gp_id and ocenka.st_id=studs.id and studs.gp_id=:in6');
// выбираем нужные данные из таблиц
FDQuery2.ParamByName('in6').AsString:=DBLookupComboBox2.KeyValue;
//  переменной ИН2 присваиваем значение из комбика
FDQuery2.Open;
FDQuery2.Refresh;
DataSource1.DataSet:=FDQuery2; // выводим данные из Квери в DBGrid
DBLookupComboBox2.ListField:='name';
// показывать в комбике столбик name
DBLookupComboBox2.KeyField:='id'; //ключевое поле

//DBLookupComboBox3.Enabled:=true;
//DBLookupComboBox2.Enabled:=false;
end;



procedure TOcenivanie.DBLookupComboBox3Click(Sender: TObject);
// П Р Е Д М Е Т
begin
Inserte;
Update;
Delete;
Selecte;
if (DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0)
then
begin
DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
end;


FDquery2.SQL.Clear; //  очищаем СКЮЛЬ второго ФДКвери
//  переменной ИН2 присваиваем значение из комбика
FDquery2.SQL.Add ('SELECT  studs.id, studs.fam,studs.imya,studs.otch,groups.name,ocenka.name from studs,ocenka,groups WHERE groups.id=studs.gp_id and ocenka.st_id=studs.id and ocenka.pr_id=:in5');
FDQuery2.ParamByName('in5').AsString:=DBLookupComboBox3.KeyValue;
// выбираем нужные данные из таблиц
//  переменной ИН2 присваиваем значение из комбика
FDQuery2.Open;
DataSource1.DataSet:=FDQuery2; // выводим данные из Квери в DBGrid


if(DBLookupComboBox6.KeyValue=1) then
begin
DataModule4.Querydspm_uchp.SQL.Clear;
DataModule4.Querydspm_uchp.SQL.Add ('select id,name from modul WHERE pr_id= :in3');
DataModule4.Querydspm_uchp.ParamByName('in3').AsString:=DBLookupComboBox3.KeyValue;
DataModule4.Querydspm_uchp.open;
DataModule4.DataSourcedspm_uchp.Enabled:=true;
DataModule4.DataSourcedspm_uchp.DataSet:=DataModule4.Querydspm_uchp;
end
else
begin
DataModule4.DataSourcedspm_uchp.Enabled:=false;
end;
//DBLookupComboBox6.Enabled:=true;
//DBLookupComboBox3.Enabled:=false;
FDQuery2.Refresh;
end;



procedure TOcenivanie.DBLookupComboBox4Click(Sender: TObject);
// В Ы Б Е Р И Т Е    М О Д У Л Ь
begin
Inserte;
Update;
Delete;
Selecte;

FDQuery6.SQL.Clear;
FDQuery6.SQL.Add ('DELETE ocenka.* FROM ocenka, ocenkanew  WHERE ocenka.st_id=ocenkanew.st_id and ocenka.pr_id=ocenkanew.pr_id and (ocenka.tp_id=ocenkanew.tp_id OR ocenka.mod_id=ocenkanew.mod_id) ');
FDQuery6.ExecSQL;

FDquery2.SQL.Clear; //  очищаем СКЮЛЬ второго ФДКвери
FDquery2.SQL.Add ('SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name,ocenka.name from studs,ocenka,groups WHERE groups.id=studs.gp_id and groups.id=:in9 and ocenka.st_id=studs.id and ocenka.mod_id=:in2');
// выбираем нужные данные из таблиц
FDQuery2.ParamByName('in2').AsString:=DBLookupComboBox4.KeyValue;
FDQuery2.ParamByName('in9').AsString:=DBLookupComboBox2.KeyValue;
FDQuery2.open;

FDQuery7.SQL.Clear;
FDQuery7.SQL.Add ('SELECT studs.id, studs.fam, studs.imya, studs.otch, ocenkanew.name FROM studs,ocenkanew WHERE (ocenkanew.mod_id=:in1 OR ocenkanew.tp_id=:in9) and ocenkanew.st_id=studs.id and studs.gp_id=:in6 and ocenkanew.pr_id=:in8');
FDQuery7.ParamByName('in6').AsString:=DBLookupComboBox2.KeyValue;
FDQuery7.ParamByName('in8').AsString:=DBLookupComboBox3.KeyValue;
FDQuery7.ParamByName('in9').AsString:=DBLookupComboBox6.KeyValue;
FDQuery7.ParamByName('in1').AsString:=DBLookupComboBox4.KeyValue;
FDQuery7.Open;
DataSource3.DataSet:=FDQuery7; // выводим данные из Квери в DBGrid
FDQuery2.Refresh;
//DBLookupComboBox4.Enabled:=false;
end;



procedure TOcenivanie.DBLookupComboBox6Click(Sender: TObject);
// Т И П   О Ц Е Н К И
begin
Inserte;
Update;
Delete;
Selecte;
if (DBLookupComboBox1.KeyValue>0) and (DBLookupComboBox2.KeyValue>0)
and (DBLookupComboBox3.KeyValue>0) and (DBLookupComboBox6.KeyValue>0)
then
begin
DBGrid1.Visible:=True;
DBGrid2.Visible:=True;
end;
if(DBLookupComboBox6.KeyValue=1) then
begin

DataModule4.Querydspm_uchp.SQL.Clear;
DataModule4.Querydspm_uchp.SQL.Add ('select  id,name from modul WHERE pr_id= :in3');
DataModule4.Querydspm_uchp.ParamByName('in3').AsString:=DBLookupComboBox3.KeyValue;
DataModule4.Querydspm_uchp.open;
DataModule4.DataSourcedspm_uchp.Enabled:=true;
DataModule4.DataSourcedspm_uchp.DataSet:=DataModule4.Querydspm_uchp;
//DBLookupComboBox6.Enabled:=false;
DBLookupComboBox4.Enabled:=true;
end
else
begin
FDquery2.SQL.Clear;
FDquery2.SQL.Add ('UPDATE ocenka SET mod_id = NULL');
FDQuery2.ExecSQL;
DataModule4.DataSourcedspm_uchp.Enabled:=false;





FDquery2.SQL.Clear; //  очищаем СКЮЛЬ второго ФДКвери
FDquery2.SQL.Add ('SELECT studs.id, studs.fam,studs.imya,studs.otch,groups.name,ocenka.name from studs,ocenka,groups WHERE groups.id=studs.gp_id and groups.id=:in9 and ocenka.st_id=studs.id and ocenka.tp_id=:in8');
// выбираем нужные данные из таблиц
FDQuery2.ParamByName('in8').AsString:=DBLookupComboBox6.KeyValue;
FDQuery2.ParamByName('in9').AsString:=DBLookupComboBox2.KeyValue;
//  переменной ИН2 присваиваем значение из комбика
FDQuery2.open;
DataSource1.DataSet:=FDQuery2; // выводим данные из Квери в DBGrid

DataSource3.DataSet:=FDQuery8; // выводим данные из Квери в DBGrid
FDQuery8.SQL.Clear;
FDQuery8.SQL.Add ('SELECT studs.id, studs.fam, studs.imya, studs.otch, ocenkanew.name FROM studs,ocenkanew WHERE ocenkanew.tp_id=:in9 and ocenkanew.st_id=studs.id and studs.gp_id=:in6 and ocenkanew.pr_id=:in8');
FDQuery8.ParamByName('in6').AsString:=DBLookupComboBox2.KeyValue;
FDQuery8.ParamByName('in8').AsString:=DBLookupComboBox3.KeyValue;
FDQuery8.ParamByName('in9').AsString:=DBLookupComboBox6.KeyValue;
FDQuery8.Open;


//DBLookupComboBox6.Enabled:=false;
end;
end;





procedure TOcenivanie.FormCreate(Sender: TObject);
begin
Selecte;
if(sistem.Checked=true) then
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 1');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end
else
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 0');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end;
end;




procedure TOcenivanie.sistemClick(Sender: TObject);
begin

if(sistem.Checked=true) then
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 1');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end
else
begin
DataModule4.Querysitoceok.SQL.Clear;
DataModule4.Querysitoceok.SQL.Add ('select id,name from sist_ocenok WHERE sistem = 0');
DataModule4.Querysitoceok.open;
DataModule4.Sourcesitoceok.Enabled:=true;
DataModule4.Sourcesitoceok.DataSet:=DataModule4.Querysitoceok;
end;
end;


end.

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
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    DateTimePicker3: TDateTimePicker;
    Button2: TButton;
    Button3: TButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Edit5: TEdit;
    Button4: TButton;
    Label7: TLabel;
    Edit6: TEdit;
    Button5: TButton;
    Button6: TButton;
    DBGrid2: TDBGrid;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
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

procedure Tuchplanst.FormCreate(Sender: TObject);
begin
datamodule4.Querysp_uchp.Active:=true;
end;

end.

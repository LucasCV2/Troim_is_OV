unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  Tkartastud = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    fio: TLabel;
    nomer: TLabel;
    adress: TLabel;
    tell: TLabel;
    pass: TLabel;
    vidan: TLabel;
    dolgnost: TLabel;
    inn: TLabel;
    dater: TLabel;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kartastud: Tkartastud;

implementation

{$R *.dfm}

uses Unit16, Unit4, unit1;

procedure Tkartastud.DBGrid1DblClick(Sender: TObject);
begin
fam_card.show;
fam_card.id.Caption:=DataModule4.FDQuery2.Fields[0].AsString;
fam_card.fio.Caption:=DataModule4.FDQuery2.Fields[3].AsString;
fam_card.mesto_rab.Caption:=DataModule4.FDQuery2.Fields[4].AsString;
fam_card.tell_dom.Caption:=DataModule4.FDQuery2.Fields[5].AsString;
fam_card.tell_rab.Caption:=DataModule4.FDQuery2.Fields[6].AsString;
fam_card.dolgnost.Caption:=DataModule4.FDQuery2.Fields[7].AsString;
fam_card.adress.Caption:=DataModule4.FDQuery2.Fields[8].AsString;
end;

end.

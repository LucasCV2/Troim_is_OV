program asu;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {main},
  unit1 in 'unit1.pas' {spstuds},
  Unit3 in 'Unit3.pas' {addstuds},
  Unit4 in 'Unit4.pas' {DataModule4: TDataModule},
  Unit5 in 'Unit5.pas' {redstuds},
  Unit6 in 'Unit6.pas' {kartastud},
  Unit7 in 'Unit7.pas' {newlkst},
  Unit8 in 'Unit8.pas' {newlkrod},
  Unit9 in 'Unit9.pas' {Specialnost},
  Unit10 in 'Unit10.pas' {Redak},
  Unit11 in 'Unit11.pas' {kat_rod},
  Unit12 in 'Unit12.pas' {Tip_ocenok},
  Unit14 in 'Unit14.pas' {dolgnost},
  Unit13 in 'Unit13.pas' {group},
  Unit15 in 'Unit15.pas' {uchplanst},
  Unit16 in 'Unit16.pas' {fam_card},
  Unit17 in 'Unit17.pas' {red_ks},
  Unit18 in 'Unit18.pas' {Redak_2},
  Unit19 in 'Unit19.pas' {Ocenivanie};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tspstuds, spstuds);
  Application.CreateForm(Taddstuds, addstuds);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.CreateForm(Tredstuds, redstuds);
  Application.CreateForm(Tkartastud, kartastud);
  Application.CreateForm(Tnewlkst, newlkst);
  Application.CreateForm(Tnewlkrod, newlkrod);
  Application.CreateForm(TSpecialnost, Specialnost);
  Application.CreateForm(TRedak, Redak);
  Application.CreateForm(Tkat_rod, kat_rod);
  Application.CreateForm(TTip_ocenok, Tip_ocenok);
  Application.CreateForm(Tdolgnost, dolgnost);
  Application.CreateForm(Tgroup, group);
  Application.CreateForm(Tuchplanst, uchplanst);
  Application.CreateForm(Tfam_card, fam_card);
  Application.CreateForm(Tred_ks, red_ks);
  Application.CreateForm(TRedak_2, Redak_2);
  Application.CreateForm(TOcenivanie, Ocenivanie);
  Application.CreateForm(TOcenivanie, Ocenivanie);
  Application.Run;
end.

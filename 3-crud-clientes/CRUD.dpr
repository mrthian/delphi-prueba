program CRUD;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {MainF},
  DMBases in 'DMBases.pas' {BasesDM: TDataModule},
  FCliente in 'forms\FCliente.pas' {ClienteF},
  FProducto in 'forms\FProducto.pas' {ProductoF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBasesDM, BasesDM);
  Application.CreateForm(TMainF, MainF);
  Application.Run;
end.

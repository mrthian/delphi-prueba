program CalcularSalario;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {MainF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainF, MainF);
  Application.Run;
end.

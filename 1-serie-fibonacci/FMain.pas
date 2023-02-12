unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainF = class(TForm)
    btnCalcular: TButton;
    EdtNumero: TEdit;
    mmResultado: TMemo;
    btnRecursividad: TButton;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnRecursividadClick(Sender: TObject);
    procedure EdtNumeroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainF: TMainF;

implementation

{$R *.dfm}

procedure showFibonacci(value: Integer);
begin
  with MainF do
  begin
    Application.ProcessMessages;
    mmResultado.Lines.Add(IntToStr(value));
    Application.ProcessMessages;
  end;
end;

function fibonacci(number: Integer): integer;
begin
  if number < 2 then
    Result := number
  else
  begin
    Result := fibonacci(number - 1) + fibonacci(number - 2);
  end;
end;

procedure TMainF.btnCalcularClick(Sender: TObject);
var
  number: Integer;
  i, a, b, c: Integer;
begin
  try
    try
      mmResultado.Lines.Clear;

      if EdtNumero.Text = '' then
      begin
        ShowMessage('El campo no puede estar vacio');
        EdtNumero.SetFocus;
        exit;
      end;

      number := StrToInt(EdtNumero.Text);
      if number < 2 then
      begin
        showFibonacci(number);
        exit;
      end;

      a := 1;
      b := 1;
      c := 0;
      for i := 1 to number do
      begin
        a := b;
        b := c;
        c := a + b;
        showFibonacci(c);
      end;
    except
      on e: Exception do
      begin
        ShowMessage(e.Message);
      end;
    end;
  finally
    EdtNumero.SetFocus
  end;
end;

procedure TMainF.btnRecursividadClick(Sender: TObject);
var
  number: integer;
begin
  mmResultado.Lines.Clear;
  if EdtNumero.Text = '' then
  begin
    ShowMessage('el campo no puede estar vacio');
    EdtNumero.SetFocus;
    exit;
  end;
  number := StrToInt(EdtNumero.Text);
  showFibonacci( fibonacci(number) );
end;

procedure TMainF.EdtNumeroExit(Sender: TObject);
var
  number: Integer;
begin
  if EdtNumero.Text <> '' then
  begin
    number := StrToInt(EdtNumero.Text);
    if (number < 1) or (number > 20) then
    begin
      ShowMessage('el valor esta fuera del rango, el rango permitido es de 1 a 20');
      EdtNumero.SetFocus;
      exit;
    end;
  end;
end;

end.

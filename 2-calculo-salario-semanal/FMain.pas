unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

const
  CANT_HORAS_NORMALES = 35;

type
  TMainF = class(TForm)
    panel: TPanel;
    grpSetting: TGroupBox;
    lblVlrHrNormal: TLabel;
    EdtVlrHrNormal: TEdit;
    lblVlrHrExtra: TLabel;
    EdtVlrHrExtra: TEdit;
    grpCalcular: TGroupBox;
    lblColaborador: TLabel;
    EdtColaborador: TEdit;
    lblCantHoras: TLabel;
    EdtCantHr: TEdit;
    btnCalcularSalario: TButton;
    procedure btnCalcularSalarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function ValidarForm: Boolean;
    function ObtenerCantHorasNormales: Integer;
    function ObtenerCantHorasExtras: Integer;
    function CalcularHrNormal(HourQty: Integer): Integer;
    function CalcularHrExtra(HourQty: Integer): Integer;
  public
    { Public declarations }
  end;

var
  MainF: TMainF;

implementation

{$R *.dfm}

{ TMainF }

procedure TMainF.btnCalcularSalarioClick(Sender: TObject);
var
  qtyNormal: Integer;
  qtyExtra: Integer;
  valueHrNormal: Integer;
  valueHrExtra: Integer;
begin
  if Self.ValidarForm then
  begin
    qtyNormal     := Self.ObtenerCantHorasNormales;
    qtyExtra      := Self.ObtenerCantHorasExtras;
    valueHrNormal := Self.CalcularHrNormal(qtyNormal);
    valueHrExtra  := Self.CalcularHrExtra(qtyExtra);

    // show message
    ShowMessage(
      'Colaborador: ' + UpperCase(EdtColaborador.Text) + Char(13) +
      '----------------------------------------------' + Char(13) +
      '  > Cant. Horas (Normal): ' + IntToStr(qtyNormal) + ' Hr.' + Char(13) +
      '  > Cant. Horas (Extras): ' + IntToStr(qtyExtra ) + ' Hr.' + Char(13) +
      '  > Cant. Horas (Total ): ' + IntToStr(qtyNormal + qtyExtra) + ' Hr.' + Char(13) +
      '----------------------------------------------' + Char(13) +
      '  > Valor Horas (Normal): $ ' + FormatFloat('#,##0', valueHrNormal) + Char(13) +
      '  > Valor Horas (Extras): $ ' + FormatFloat('#,##0', valueHrExtra ) + Char(13) +
      '----------------------------------------------' + Char(13) +
      ' Sueldo a pagar: $ ' + FormatFloat('#,##0', (valueHrNormal + valueHrExtra))
    );
  end;
end;

function TMainF.CalcularHrExtra(HourQty: Integer): Integer;
var
  Value: Integer;
begin
  Result := 0;

  if HourQty <= 0 then
    Exit;

  try
    Value := StrToInt(EdtVlrHrExtra.Text);
    Result := Value * HourQty;
  except
    on E: Exception do
    begin
      ShowMessage('ERROR: ' + E.Message);
    end;
  end;
end;

function TMainF.CalcularHrNormal(HourQty: Integer): Integer;
var
  Value: Integer;
begin
  try
    if HourQty <= 0 then
    begin
      ShowMessage('la cantidad de horas laboradas no puede ser menor o igual a cero');
      EdtCantHr.SetFocus;
      Exit;
    end;

    Value := StrToInt(EdtVlrHrNormal.Text);
    if Value <= 0 then
    begin
      ShowMessage('el valor de la hora normal no puede ser menor a cero');
      EdtVlrHrNormal.SetFocus;
      Exit;
    end;

    Result := HourQty * Value;
  except
    on E: Exception do
    begin
      ShowMessage('ERROR: ' + E.Message);
    end;
  end;
end;

procedure TMainF.FormShow(Sender: TObject);
begin
  EdtColaborador.SetFocus;
end;

function TMainF.ObtenerCantHorasExtras: Integer;
var
  intValue: Integer;
begin
  result := 0;
  intValue := StrToInt(EdtCantHr.Text);
  if intValue > CANT_HORAS_NORMALES then
  begin
    intValue := intValue - CANT_HORAS_NORMALES;
    if intValue < 0 then
      intValue := -1 * intValue;
    Result := intValue;
    Exit;
  end;
end;

function TMainF.ObtenerCantHorasNormales: Integer;
var
  intValue: Integer;
begin
  intValue := StrToInt(EdtCantHr.Text);
  if intValue > CANT_HORAS_NORMALES then
  begin
    Result := CANT_HORAS_NORMALES;
    Exit;
  end;
  Result := intValue;
end;

function TMainF.ValidarForm: Boolean;
var
  value: Integer;
begin
  Result := False;

  if Trim(EdtVlrHrNormal.Text) = '' then
  begin
    ShowMessage('el valor de la hora normal no puede ser vacio');
    EdtVlrHrNormal.SetFocus;
    Exit;
  end;

  if Trim(EdtVlrHrExtra.Text) = '' then
  begin
    ShowMessage('el valor de la hora extra no puede ser vacio');
  end;

  if Trim(EdtColaborador.Text) = '' then
  begin
    ShowMessage('el colaborador no puede estar vacio');
    EdtColaborador.SetFocus;
    Exit;
  end;

  if Trim(EdtCantHr.Text) = '' then
  begin
    ShowMessage('la cantidad de horas no puede estar vacia');
    EdtCantHr.SetFocus;
    Exit;
  end;

  try
    value := StrToInt(EdtCantHr.Text);
    if value <= 0 then
    begin
      ShowMessage('la cantidad de horas laboradas no puede ser igual a cero');
      EdtCantHr.SetFocus;
      Exit;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('ERROR: ' + e.Message);
    end;
  end;

  Result := True;
end;

end.

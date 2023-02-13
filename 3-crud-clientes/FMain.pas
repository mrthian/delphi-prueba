unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TMainF = class(TForm)
    MainMenu1: TMainMenu;
    Opciones1: TMenuItem;
    Clientes1: TMenuItem;
    Productos1: TMenuItem;
    Facturas1: TMenuItem;
    Salir1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Productos1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainF: TMainF;

implementation

uses
  FCliente, FProducto;

{$R *.dfm}

procedure TMainF.Clientes1Click(Sender: TObject);
begin
  ClienteF := TClienteF.Create(Self);
  try
    ClienteF.ShowModal;
  finally
    ClienteF.Free;
  end;
end;

procedure TMainF.Productos1Click(Sender: TObject);
begin
  ProductoF := TProductoF.Create(Self);
  try
    ProductoF.ShowModal;
  finally
    FreeAndNil(ProductoF);
  end;
end;

procedure TMainF.Salir1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.

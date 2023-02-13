unit FCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TClienteF = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource: TDataSource;
    DBEdtCodigo: TDBEdit;
    Label1: TLabel;
    DBEdtNombre: TDBEdit;
    lblNombre: TLabel;
    DBEdtDireccion: TDBEdit;
    lblDireccion: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteF: TClienteF;

implementation

uses
  DMBases;

{$R *.dfm}

procedure TClienteF.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  case Button of
    nbFirst: ;
    nbPrior: ;
    nbNext: ;
    nbLast: ;
    nbInsert:
    begin
      DBEdtCodigo.Enabled    := True;
      DBEdtNombre.Enabled    := True;
      DBEdtDireccion.Enabled := True;
      DBEdtCodigo.SetFocus;
    end;
    nbDelete: ;
    nbEdit:
    begin
      DBEdtCodigo.Enabled    := False;
      DBEdtNombre.Enabled    := True;
      DBEdtDireccion.Enabled := True;
      DBEdtNombre.SetFocus;
    end;
    nbPost: ;
    nbCancel:
    begin
      DBEdtCodigo.Enabled    := False;
      DBEdtNombre.Enabled    := False;
      DBEdtDireccion.Enabled := False;
    end;
    nbRefresh: ;
    nbApplyUpdates: ;
    nbCancelUpdates: ;
  end;
end;

procedure TClienteF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BasesDM.qryClientes.Close;
end;

procedure TClienteF.FormShow(Sender: TObject);
begin
  BasesDM.qryClientes.Open();
end;

end.

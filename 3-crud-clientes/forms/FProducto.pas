unit FProducto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TProductoF = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBEdtCodigo: TDBEdit;
    lblCodigo: TLabel;
    DBEdtNombre: TDBEdit;
    lblNombre: TLabel;
    DBEdtValor: TDBEdit;
    lblValor: TLabel;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductoF: TProductoF;

implementation

uses
  DMBases;

{$R *.dfm}

procedure TProductoF.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  case Button of
    nbFirst: ;
    nbPrior: ;
    nbNext: ;
    nbLast: ;
    nbInsert:
    begin
      DBEdtCodigo.Enabled := True;
      DBEdtNombre.Enabled := True;
      DBEdtValor.Enabled  := True;
      DBEdtCodigo.SetFocus;
    end;
    nbDelete: ;
    nbEdit:
    begin
      DBEdtCodigo.Enabled := False;
      DBEdtNombre.Enabled := True;
      DBEdtValor.Enabled  := True;
      DBEdtCodigo.SetFocus;
    end;
    nbPost:
    begin
      DBEdtCodigo.Enabled := False;
      DBEdtNombre.Enabled := False;
      DBEdtValor.Enabled  := False;
    end;
    nbCancel: ;
    nbRefresh: ;
    nbApplyUpdates: ;
    nbCancelUpdates: ;
  end;
end;

procedure TProductoF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BasesDM.qryProductos.Close;
end;

procedure TProductoF.FormShow(Sender: TObject);
begin
  BasesDM.qryProductos.Open();
end;

end.

unit DMBases;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.PG, System.IniFiles, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TBasesDM = class(TDataModule)
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    Database: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryClientes: TFDQuery;
    qryProductos: TFDQuery;
    qryClientescodigo: TWideStringField;
    qryClientesnombre: TWideStringField;
    qryClientesdireccion: TWideStringField;
    qryProductoscodigo: TWideStringField;
    qryProductosnombre: TWideStringField;
    qryProductosvalor: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BasesDM: TBasesDM;
  PathExe: String;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TBasesDM.DataModuleCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  PathExe := ExtractFilePath(ParamStr(0));
  PathExe := StringReplace(PathExe, '\', '/', [rfReplaceAll]);
  if PathExe[Length(PathExe)] <> '/' then
    PathExe := PathExe + '/';
  
  if FileExists(PathExe + 'config.ini') then
  begin
    iniFile := TIniFile.Create(PathExe + 'config.ini');
    try
      with self.Database do
      begin
        DriverName := 'PG';
        params.Values['DriverID'    ] := iniFile.ReadString('DATABASE', 'DRIVER', 'PG');
        Params.Values['CharacterSet'] := 'csLatin1';
        params.Values['Password'    ] := iniFile.ReadString('DATABASE', 'PASSWORD', 'sysdba');
        params.Values['User_Name'   ] := iniFile.ReadString('DATABASE', 'USERNAME', 'postgres');
        params.Values['Port'        ] := iniFile.ReadString('DATABASE', 'PORT'    , '5432');
        params.Values['Server'      ] := iniFile.ReadString('DATABASE', 'SERVER'  , 'localhost');
        Connected := True;
      end;
    finally
      FreeAndNil(iniFile);
    end;
  end;
end;

end.

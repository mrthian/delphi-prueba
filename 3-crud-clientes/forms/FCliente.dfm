object ClienteF: TClienteF
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Clientes'
  ClientHeight = 275
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblNombre: TLabel
    Left = 24
    Top = 51
    Width = 41
    Height = 13
    Caption = 'Nombre:'
  end
  object lblDireccion: TLabel
    Left = 24
    Top = 78
    Width = 47
    Height = 13
    Caption = 'Direcci'#243'n:'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 142
    Width = 297
    Height = 125
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Alignment = taCenter
        Title.Caption = 'Nombre'
        Width = 150
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 111
    Width = 287
    Height = 25
    DataSource = DataSource
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object DBEdtCodigo: TDBEdit
    Left = 83
    Top = 21
    Width = 121
    Height = 21
    DataField = 'codigo'
    DataSource = DataSource
    Enabled = False
    TabOrder = 2
  end
  object DBEdtNombre: TDBEdit
    Left = 83
    Top = 48
    Width = 238
    Height = 21
    DataField = 'nombre'
    DataSource = DataSource
    Enabled = False
    TabOrder = 3
  end
  object DBEdtDireccion: TDBEdit
    Left = 83
    Top = 75
    Width = 238
    Height = 21
    DataField = 'direccion'
    DataSource = DataSource
    Enabled = False
    TabOrder = 4
  end
  object DataSource: TDataSource
    DataSet = BasesDM.qryClientes
    Left = 248
    Top = 8
  end
end

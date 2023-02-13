object ProductoF: TProductoF
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Productos'
  ClientHeight = 264
  ClientWidth = 439
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
  object lblCodigo: TLabel
    Left = 8
    Top = 24
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblNombre: TLabel
    Left = 8
    Top = 51
    Width = 41
    Height = 13
    Caption = 'Nombre:'
  end
  object lblValor: TLabel
    Left = 8
    Top = 78
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 133
    Width = 417
    Height = 120
    DataSource = DataSource1
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
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Visible = True
      end>
  end
  object DBEdtCodigo: TDBEdit
    Left = 64
    Top = 21
    Width = 121
    Height = 21
    DataField = 'codigo'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 1
  end
  object DBEdtNombre: TDBEdit
    Left = 64
    Top = 48
    Width = 361
    Height = 21
    DataField = 'nombre'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdtValor: TDBEdit
    Left = 64
    Top = 75
    Width = 121
    Height = 21
    DataField = 'valor'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 102
    Width = 413
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 4
    OnClick = DBNavigator1Click
  end
  object DataSource1: TDataSource
    DataSet = BasesDM.qryProductos
    Left = 336
    Top = 8
  end
end

object BasesDM: TBasesDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 243
  Width = 305
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 16
    Top = 8
  end
  object Database: TFDConnection
    Params.Strings = (
      'DriverID=PG'
      'Server=localhost'
      'User_Name=postgres'
      'Password=sysdba'
      'Database=digitalware'
      'ApplicationName=prueba-tecnica')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 56
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 8
  end
  object qryClientes: TFDQuery
    Connection = Database
    SQL.Strings = (
      'SELECT *'
      '  FROM clientes'
      'ORDER BY codigo ASC')
    Left = 176
    Top = 8
    object qryClientescodigo: TWideStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object qryClientesnombre: TWideStringField
      FieldName = 'nombre'
      Origin = 'nombre'
      Size = 255
    end
    object qryClientesdireccion: TWideStringField
      FieldName = 'direccion'
      Origin = 'direccion'
      Size = 255
    end
  end
  object qryProductos: TFDQuery
    Connection = Database
    SQL.Strings = (
      'SELECT *'
      '  FROM productos'
      'ORDER BY codigo ASC')
    Left = 216
    Top = 8
    object qryProductoscodigo: TWideStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object qryProductosnombre: TWideStringField
      FieldName = 'nombre'
      Origin = 'nombre'
      Size = 255
    end
    object qryProductosvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
  end
end

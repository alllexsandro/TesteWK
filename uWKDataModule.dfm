object DTMWK: TDTMWK
  OldCreateOrder = False
  Height = 322
  Width = 423
  object FDCWK: TFDConnection
    Params.Strings = (
      'Database=C:\Wk2\Dados\WK.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object FDGUIxWaitCursorWK: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 168
  end
  object FDPDriverFB: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 56
    Top = 96
  end
  object DTSClientes: TDataSource
    DataSet = TABClientes
    Left = 144
    Top = 168
  end
  object UsuariosConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Usuarios')
    Connected = True
    LoginPrompt = False
    Left = 145
    Top = 26
  end
  object TABClientes: TFDQuery
    Active = True
    Connection = UsuariosConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 145
    Top = 98
    object TABClientesCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TABClientesNOME: TStringField
      DisplayWidth = 19
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object TABClientesCIDADE: TStringField
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object TABClientesUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object TABProdutos: TFDQuery
    Active = True
    Connection = UsuariosConnection
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 214
    Top = 96
    object TABProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TABProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object TABProdutosPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      Origin = 'PRECOVENDA'
    end
  end
  object DTSProdutos: TDataSource
    DataSet = TABProdutos
    Left = 216
    Top = 168
  end
end

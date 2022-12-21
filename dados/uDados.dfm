object dmDados: TdmDados
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object dsUsuario: TDataSource
    DataSet = fdqUsuario
    Left = 216
    Top = 130
  end
  object dsPesquisaProdutos: TDataSource
    DataSet = fdqPesquisaProdutos
    Left = 240
    Top = 197
  end
  object dsPesquisaUsuario: TDataSource
    DataSet = fdqPesquisaUsuario
    Left = 240
    Top = 288
  end
  object fdConexao: TFDConnection
    Params.Strings = (
      'User_Name=jairpn'
      'Password=japa0101'
      'Server=laplenovo'
      'Database=loja'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 104
    Top = 32
  end
  object fdqUsuario: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      
        'select * from usuarios where nome_usuario = :nome and senha_usua' +
        'rio = :senha')
    Left = 80
    Top = 112
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
      end>
    object fdqUsuarioidusuarios: TFDAutoIncField
      FieldName = 'idusuarios'
      Origin = 'idusuarios'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqUsuarionome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      Origin = 'nome_usuario'
      Size = 100
    end
    object fdqUsuariosenha_usuario: TWideStringField
      FieldName = 'senha_usuario'
      Origin = 'senha_usuario'
      Size = 200
    end
    object fdqUsuariousuario_ativo: TStringField
      FieldName = 'usuario_ativo'
      Origin = 'usuario_ativo'
      FixedChar = True
      Size = 1
    end
    object fdqUsuariodata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
  end
  object fdqPesquisaProdutos: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      
        'select * from produtos where descricao_produto like :descricao_p' +
        'roduto')
    Left = 96
    Top = 200
    ParamData = <
      item
        Name = 'DESCRICAO_PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object fdqPesquisaProdutosidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqPesquisaProdutoscodigo_produto: TWideStringField
      FieldName = 'codigo_produto'
      Origin = 'codigo_produto'
      Size = 100
    end
    object fdqPesquisaProdutoscodigo_barras: TWideStringField
      FieldName = 'codigo_barras'
      Origin = 'codigo_barras'
      Size = 100
    end
    object fdqPesquisaProdutosdescricao_produto: TWideStringField
      FieldName = 'descricao_produto'
      Origin = 'descricao_produto'
      Size = 200
    end
    object fdqPesquisaProdutosunidade_produto: TWideStringField
      FieldName = 'unidade_produto'
      Origin = 'unidade_produto'
      Size = 10
    end
    object fdqPesquisaProdutosvalor_unitario_produto: TFloatField
      FieldName = 'valor_unitario_produto'
      Origin = 'valor_unitario_produto'
    end
    object fdqPesquisaProdutosquantidade_produto: TIntegerField
      FieldName = 'quantidade_produto'
      Origin = 'quantidade_produto'
    end
    object fdqPesquisaProdutosvalor_total_produto: TFloatField
      FieldName = 'valor_total_produto'
      Origin = 'valor_total_produto'
    end
  end
  object fdqPesquisaUsuario: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      
        'select * from usuarios where nome_usuario like :nome_usuario and' +
        ' nome_usuario <> '#39'admin'#39
      '')
    Left = 96
    Top = 304
    ParamData = <
      item
        Name = 'NOME_USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object fdqPesquisaUsuarioidusuarios: TFDAutoIncField
      FieldName = 'idusuarios'
      Origin = 'idusuarios'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqPesquisaUsuarionome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      Origin = 'nome_usuario'
      Size = 100
    end
    object fdqPesquisaUsuariosenha_usuario: TWideStringField
      FieldName = 'senha_usuario'
      Origin = 'senha_usuario'
      Size = 200
    end
    object fdqPesquisaUsuariousuario_ativo: TStringField
      FieldName = 'usuario_ativo'
      Origin = 'usuario_ativo'
      FixedChar = True
      Size = 1
    end
    object fdqPesquisaUsuariodata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
  end
end

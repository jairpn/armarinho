object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Align = alRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Cadastro de Produtos'
  ClientHeight = 674
  ClientWidth = 980
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  DesignSize = (
    980
    674)
  TextHeight = 15
  object sbtnFechar: TSpeedButton
    Left = 929
    Top = 8
    Width = 31
    Height = 33
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    OnClick = sbtnFecharClick
  end
  object pnlFundo: TPanel
    Left = 144
    Top = 48
    Width = 633
    Height = 505
    Caption = 'pnlFundo'
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object pgcBuscaCadastro: TPageControl
      Left = 12
      Top = 36
      Width = 605
      Height = 452
      ActivePage = tbsCadastroProdutos
      TabOrder = 0
      object tbsPesquisa: TTabSheet
        Caption = 'Pesquisa de Produtos'
        object dbgPesquisaProdutos: TDBGrid
          Left = 0
          Top = 65
          Width = 597
          Height = 357
          Align = alClient
          DataSource = dmDados.dsPesquisaProdutos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = dbgPesquisaProdutosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo_produto'
              Title.Caption = 'C'#243'digo'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao_produto'
              Title.Caption = 'Descri'#231#227'o do Produto'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigo_barras'
              Title.Caption = 'Codigo de Barras'
              Width = 200
              Visible = True
            end>
        end
        object pnlBotoes: TPanel
          Left = 0
          Top = 0
          Width = 597
          Height = 65
          Align = alTop
          TabOrder = 1
          object lblPesquisa: TLabel
            Left = 16
            Top = 8
            Width = 187
            Height = 15
            Caption = 'Digite a pesquisa e clique no bot'#227'o:'
          end
          object edtBusca: TEdit
            Left = 16
            Top = 29
            Width = 401
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object btnBusca: TButton
            Left = 423
            Top = 26
            Width = 75
            Height = 25
            Caption = 'Busca'
            TabOrder = 1
            OnClick = btnBuscaClick
          end
          object btnLimpar: TButton
            Left = 511
            Top = 26
            Width = 75
            Height = 25
            Caption = 'Limpar'
            TabOrder = 2
            OnClick = btnLimparClick
          end
        end
      end
      object tbsCadastroProdutos: TTabSheet
        Caption = 'Produtos'
        ImageIndex = 1
        object lblReferencia: TLabel
          Left = 144
          Top = 22
          Width = 55
          Height = 15
          Caption = 'Refer'#234'ncia'
          FocusControl = dbeReferencia
        end
        object lblCodigoBarras: TLabel
          Left = 19
          Top = 22
          Width = 90
          Height = 15
          Caption = 'C'#243'digo de Barras'
          FocusControl = dbeCodigoBarras
        end
        object lblDescricao: TLabel
          Left = 250
          Top = 22
          Width = 114
          Height = 15
          Caption = 'Descri'#231#227'o do Produto'
          FocusControl = dbeDescricao
        end
        object lblUnidade: TLabel
          Left = 16
          Top = 75
          Width = 44
          Height = 15
          Caption = 'Unidade'
          FocusControl = dbeUnidade
        end
        object lblValorUnitario: TLabel
          Left = 176
          Top = 75
          Width = 71
          Height = 15
          Caption = 'Valor Unit'#225'rio'
          FocusControl = dbeValorUnitario
        end
        object lblQuantidade: TLabel
          Left = 312
          Top = 75
          Width = 122
          Height = 15
          Caption = 'Quantidade de compra'
          FocusControl = dbeQuantidade
        end
        object lblValorTotal: TLabel
          Left = 455
          Top = 75
          Width = 54
          Height = 15
          Caption = 'Valor Total'
          FocusControl = dbeValorTotal
        end
        object dbeReferencia: TDBEdit
          Left = 144
          Top = 43
          Width = 85
          Height = 23
          CharCase = ecUpperCase
          DataField = 'codigo_produto'
          DataSource = dmDados.dsPesquisaProdutos
          TabOrder = 0
        end
        object dbeCodigoBarras: TDBEdit
          Left = 20
          Top = 43
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          DataField = 'Codigo_barras'
          DataSource = dmDados.dsPesquisaProdutos
          TabOrder = 1
        end
        object dbeDescricao: TDBEdit
          Left = 250
          Top = 43
          Width = 303
          Height = 23
          CharCase = ecUpperCase
          DataField = 'descricao_produto'
          DataSource = dmDados.dsPesquisaProdutos
          TabOrder = 2
        end
        object dbeUnidade: TDBEdit
          Left = 17
          Top = 94
          Width = 103
          Height = 23
          CharCase = ecUpperCase
          DataField = 'unidade_produto'
          DataSource = dmDados.dsPesquisaProdutos
          TabOrder = 3
        end
        object dbeValorUnitario: TDBEdit
          Left = 176
          Top = 94
          Width = 120
          Height = 23
          CharCase = ecUpperCase
          DataField = 'valor_unitario_produto'
          DataSource = dmDados.dsPesquisaProdutos
          TabOrder = 4
        end
        object dbeQuantidade: TDBEdit
          Left = 312
          Top = 94
          Width = 137
          Height = 23
          CharCase = ecUpperCase
          DataField = 'quantidade_produto'
          DataSource = dmDados.dsPesquisaProdutos
          TabOrder = 5
        end
        object dbeValorTotal: TDBEdit
          Left = 455
          Top = 93
          Width = 114
          Height = 23
          DataField = 'valor_total_produto'
          DataSource = dmDados.dsPesquisaProdutos
          Enabled = False
          TabOrder = 6
        end
        object dbgProdutos: TDBGrid
          Left = 17
          Top = 123
          Width = 553
          Height = 215
          DataSource = dmDados.dsPesquisaProdutos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'descricao_produto'
              Title.Caption = 'Descri'#231#227'o do Produto'
              Width = 500
              Visible = True
            end>
        end
        object pnlBotoesBottom: TPanel
          Left = 0
          Top = 368
          Width = 597
          Height = 54
          Align = alBottom
          TabOrder = 8
          object pnlIncluir: TPanel
            Left = 16
            Top = 5
            Width = 70
            Height = 30
            Color = 16761220
            ParentBackground = False
            TabOrder = 0
            object sbtIncluir: TSpeedButton
              Left = 1
              Top = 1
              Width = 68
              Height = 28
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Incluir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = sbtIncluirClick
              ExplicitLeft = 7
            end
          end
          object pnlAlterar: TPanel
            Left = 97
            Top = 5
            Width = 70
            Height = 30
            Color = 16761220
            ParentBackground = False
            TabOrder = 1
            object sbtAlterar: TSpeedButton
              Left = 1
              Top = 1
              Width = 68
              Height = 28
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Alterar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = sbtAlterarClick
              ExplicitLeft = -5
            end
          end
          object pnlExcluir: TPanel
            Left = 179
            Top = 5
            Width = 70
            Height = 30
            Color = 16761220
            ParentBackground = False
            TabOrder = 2
            object sbtExcluir: TSpeedButton
              Left = 1
              Top = 1
              Width = 68
              Height = 28
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Excluir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = sbtExcluirClick
              ExplicitLeft = 8
            end
          end
          object pnlCancelar: TPanel
            Left = 261
            Top = 5
            Width = 70
            Height = 30
            Color = 16761220
            ParentBackground = False
            TabOrder = 3
            object sbtCancelar: TSpeedButton
              Left = 1
              Top = 1
              Width = 68
              Height = 28
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Cancelar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = sbtCancelarClick
              ExplicitLeft = 8
            end
          end
          object pnlSalvar: TPanel
            Left = 343
            Top = 5
            Width = 70
            Height = 30
            Color = 16761220
            ParentBackground = False
            TabOrder = 4
            object sbtSalvar: TSpeedButton
              Left = 1
              Top = 1
              Width = 68
              Height = 28
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Salvar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = sbtSalvarClick
              ExplicitLeft = -6
            end
          end
          object pnlSair: TPanel
            Left = 499
            Top = 5
            Width = 70
            Height = 30
            Color = 16761220
            ParentBackground = False
            TabOrder = 5
            object sbtSair: TSpeedButton
              Left = 1
              Top = 1
              Width = 68
              Height = 28
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Sair'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = sbtSairClick
              ExplicitLeft = -7
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 560
      Top = 15
      Width = 33
      Height = 26
      Caption = 'X'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = Panel1Click
    end
    object Edit1: TEdit
      Left = 266
      Top = 545
      Width = 93
      Height = 23
      TabOrder = 2
      Text = 'Edit1'
    end
  end
end

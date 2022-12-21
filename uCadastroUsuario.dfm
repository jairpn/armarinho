object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  Cursor = crHandPoint
  Align = alRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmCadastroUsuario'
  ClientHeight = 618
  ClientWidth = 913
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    913
    618)
  TextHeight = 15
  object sbtnFechar: TSpeedButton
    Left = 865
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
    ExplicitLeft = 592
  end
  object pnlFundo: TPanel
    Left = 144
    Top = 48
    Width = 625
    Height = 497
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
        Caption = 'Pesquisa de Usu'#225'rios'
        object dbgPesquisaProdutos: TDBGrid
          Left = 0
          Top = 65
          Width = 597
          Height = 357
          Align = alClient
          DataSource = dmDados.dsPesquisaUsuario
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
              FieldName = 'nome_usuario'
              Title.Caption = 'Nome de Usu'#225'rio'
              Width = 400
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
            Width = 172
            Height = 15
            Caption = 'Digite a nome e clique no bot'#227'o:'
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
            Top = 27
            Width = 75
            Height = 25
            Caption = 'Busca'
            TabOrder = 1
            OnClick = btnBuscaClick
          end
          object btnLimpar: TButton
            Left = 504
            Top = 27
            Width = 75
            Height = 25
            Caption = 'Limpar'
            TabOrder = 2
            OnClick = btnLimparClick
          end
        end
      end
      object tbsCadastroProdutos: TTabSheet
        Caption = 'Usu'#225'rios'
        ImageIndex = 1
        object lblReferencia: TLabel
          Left = 144
          Top = 22
          Width = 75
          Height = 15
          Caption = 'Senha Usu'#225'rio'
        end
        object lblCodigoBarras: TLabel
          Left = 19
          Top = 22
          Width = 76
          Height = 15
          Caption = 'Nome Usu'#225'rio'
          FocusControl = dbeCodigoBarras
        end
        object Label1: TLabel
          Left = 299
          Top = 22
          Width = 76
          Height = 15
          Caption = 'Usu'#225'rio Ativo?'
          FocusControl = dbeDescricao
        end
        object dbeCodigoBarras: TDBEdit
          Left = 19
          Top = 43
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          DataField = 'nome_usuario'
          DataSource = dmDados.dsPesquisaUsuario
          TabOrder = 0
        end
        object dbeDescricao: TDBEdit
          Left = 144
          Top = 43
          Width = 113
          Height = 23
          CharCase = ecUpperCase
          DataField = 'senha_usuario'
          DataSource = dmDados.dsPesquisaUsuario
          PasswordChar = '*'
          TabOrder = 1
        end
        object dbgProdutos: TDBGrid
          Left = 19
          Top = 88
          Width = 553
          Height = 257
          DataSource = dmDados.dsPesquisaUsuario
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nome_usuario'
              Title.Caption = 'Nome Usu'#225'rio'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usuario_ativo'
              Title.Caption = 'Usu'#225'rio Ativo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_cadastro'
              Title.Caption = 'Data de Cadastro'
              Width = 120
              Visible = True
            end>
        end
        object pnlBotoesBottom: TPanel
          Left = 0
          Top = 368
          Width = 597
          Height = 54
          Align = alBottom
          TabOrder = 3
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
        object Edit1: TEdit
          Left = 603
          Top = 188
          Width = 93
          Height = 23
          TabOrder = 4
          Text = 'Edit1'
        end
        object RadioButton1: TRadioButton
          Left = 299
          Top = 49
          Width = 113
          Height = 17
          Caption = 'Sim'
          Checked = True
          TabOrder = 5
          TabStop = True
        end
        object RadioButton2: TRadioButton
          Left = 359
          Top = 49
          Width = 113
          Height = 17
          Caption = 'N'#227'o'
          TabOrder = 6
        end
      end
    end
    object Panel1: TPanel
      Left = 576
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
  end
end

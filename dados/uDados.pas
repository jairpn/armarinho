unit uDados;

interface

uses
  System.SysUtils, System.Classes, UniProvider, SQLServerUniProvider, DBAccess, Uni,
Data.DB, MemDS, MySQLUniProvider, MemData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ;

type
  TdmDados = class(TDataModule)
    dsUsuario: TDataSource;
    dsPesquisaProdutos: TDataSource;
    dsPesquisaUsuario: TDataSource;
    fdConexao: TFDConnection;
    fdqUsuario: TFDQuery;
    fdqPesquisaProdutos: TFDQuery;
    fdqPesquisaUsuario: TFDQuery;
    fdqPesquisaProdutosidproduto: TFDAutoIncField;
    fdqPesquisaProdutoscodigo_produto: TWideStringField;
    fdqPesquisaProdutoscodigo_barras: TWideStringField;
    fdqPesquisaProdutosdescricao_produto: TWideStringField;
    fdqPesquisaProdutosunidade_produto: TWideStringField;
    fdqPesquisaProdutosvalor_unitario_produto: TFloatField;
    fdqPesquisaProdutosquantidade_produto: TIntegerField;
    fdqPesquisaProdutosvalor_total_produto: TFloatField;
    fdqPesquisaUsuarioidusuarios: TFDAutoIncField;
    fdqPesquisaUsuarionome_usuario: TWideStringField;
    fdqPesquisaUsuariosenha_usuario: TWideStringField;
    fdqPesquisaUsuariousuario_ativo: TStringField;
    fdqPesquisaUsuariodata_cadastro: TDateField;
    fdqUsuarioidusuarios: TFDAutoIncField;
    fdqUsuarionome_usuario: TWideStringField;
    fdqUsuariosenha_usuario: TWideStringField;
    fdqUsuariousuario_ativo: TStringField;
    fdqUsuariodata_cadastro: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure fdConexaoConnectionLost(Sender: TObject; Component: TComponent;
      ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
    private
      { Private declarations }
    public
      { Public declarations }
  end;

var
    dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
  fdConexao.Connected := False;
end;

procedure TdmDados.fdConexaoConnectionLost(Sender: TObject;
  Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin
  RetryMode := rmRaise;
end;

end.

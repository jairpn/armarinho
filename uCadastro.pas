unit uCadastro;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
    Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
    TfrmCadastro = class(TForm)
        pgcBuscaCadastro: TPageControl;
        tbsPesquisa: TTabSheet;
        dbgPesquisaProdutos: TDBGrid;
        pnlBotoes: TPanel;
        lblPesquisa: TLabel;
        edtBusca: TEdit;
        btnBusca: TButton;
        tbsCadastroProdutos: TTabSheet;
        lblReferencia: TLabel;
        lblCodigoBarras: TLabel;
        lblDescricao: TLabel;
        lblUnidade: TLabel;
        lblValorUnitario: TLabel;
        lblQuantidade: TLabel;
        lblValorTotal: TLabel;
        dbeReferencia: TDBEdit;
        dbeCodigoBarras: TDBEdit;
        dbeDescricao: TDBEdit;
        dbeUnidade: TDBEdit;
        dbeValorUnitario: TDBEdit;
        dbeQuantidade: TDBEdit;
        dbeValorTotal: TDBEdit;
        dbgProdutos: TDBGrid;
        pnlBotoesBottom: TPanel;
        pnlIncluir: TPanel;
        sbtIncluir: TSpeedButton;
        pnlAlterar: TPanel;
        sbtAlterar: TSpeedButton;
        pnlExcluir: TPanel;
        sbtExcluir: TSpeedButton;
        pnlCancelar: TPanel;
        sbtCancelar: TSpeedButton;
        pnlSalvar: TPanel;
        sbtSalvar: TSpeedButton;
        pnlSair: TPanel;
        sbtSair: TSpeedButton;
        pnlFundo: TPanel;
        Panel1: TPanel;
        btnLimpar: TButton;
        sbtnFechar: TSpeedButton;
        Edit1: TEdit;
        procedure FormActivate(Sender: TObject);
        procedure btnBuscaClick(Sender: TObject);
        procedure SpeedButton1Click(Sender: TObject);
        procedure dbgPesquisaProdutosDblClick(Sender: TObject);
        procedure sbtSairClick(Sender: TObject);
        procedure sbtIncluirClick(Sender: TObject);
        procedure sbtCancelarClick(Sender: TObject);
        procedure sbtAlterarClick(Sender: TObject);
        procedure sbtExcluirClick(Sender: TObject);
        procedure sbtSalvarClick(Sender: TObject);
        procedure Panel1Click(Sender: TObject);
        procedure btnLimparClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure sbtnFecharClick(Sender: TObject);
        private
            { Private declarations }
            procedure incluiAltera;
            procedure salvaCancela;
        public
            { Public declarations }
    end;

var
      frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}


uses uDados, uMenu;

procedure TfrmCadastro.btnBuscaClick(Sender: TObject);
begin
    dmDados.fdqPesquisaProdutos.Close;
    dmDados.fdqPesquisaProdutos.Params.ParamByName('descricao_produto').Value := edtBusca.Text + '%';
    dmDados.fdqPesquisaProdutos.Open;
end;

procedure TfrmCadastro.btnLimparClick(Sender: TObject);
begin
    edtBusca.Clear;
    dmDados.fdqPesquisaProdutos.Close;
end;

procedure TfrmCadastro.dbgPesquisaProdutosDblClick(Sender: TObject);
begin
    pgcBuscaCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastro.FormActivate(Sender: TObject);
begin
    pgcBuscaCadastro.ActivePageIndex := 0;
    pnlFundo.Left := Round((frmCadastro.Width - pnlFundo.Width) / 2);
    pnlFundo.Top := Round((frmCadastro.Height - pnlFundo.Height) / 2);
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
var
      i: integer;
begin

    for i := 0 to frmCadastro.ComponentCount - 1 do
        begin
            if (frmCadastro.Components[i]).ClassName = 'TDBEdit' then
                TDBEdit(frmCadastro.Components[i]).ReadOnly := True;
        end;

    salvaCancela;
end;

procedure TfrmCadastro.incluiAltera;
begin
    sbtIncluir.Enabled := False;
    sbtAlterar.Enabled := False;
    sbtExcluir.Enabled := False;
    sbtCancelar.Enabled := True;
    sbtSalvar.Enabled := True;
    dbeCodigoBarras.SetFocus;
end;

procedure TfrmCadastro.salvaCancela;
begin
    sbtIncluir.Enabled := True;
    sbtAlterar.Enabled := True;
    sbtExcluir.Enabled := True;
    sbtCancelar.Enabled := False;
    sbtSalvar.Enabled := False;
end;

procedure TfrmCadastro.Panel1Click(Sender: TObject);
begin
    frmMenu.SpeedButton2.Visible := True;
    Close;
end;

procedure TfrmCadastro.SpeedButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TfrmCadastro.sbtAlterarClick(Sender: TObject);
var
      i: integer;
begin
    for i := 0 to frmCadastro.ComponentCount - 1 do
        begin
            if (frmCadastro.Components[i]).ClassName = 'TDBEdit' then
                TDBEdit(frmCadastro.Components[i]).ReadOnly := False;
        end;
    dmDados.fdqPesquisaProdutos.Open;
    dmDados.fdqPesquisaProdutos.Edit;
    incluiAltera;
end;

procedure TfrmCadastro.sbtCancelarClick(Sender: TObject);
var
      i: integer;
begin
    for i := 0 to frmCadastro.ComponentCount - 1 do
        begin
            if (frmCadastro.Components[i]).ClassName = 'TDBEdit' then
                TDBEdit(frmCadastro.Components[i]).ReadOnly := True;
        end;
    dmDados.fdqPesquisaProdutos.Cancel;
    salvaCancela;
end;

procedure TfrmCadastro.sbtExcluirClick(Sender: TObject);
begin
    if (MessageDlg('Deseja excluir este registro? >> ' + dmDados.fdqPesquisaProdutosdescricao_produto.Value + ' <<', mtConfirmation, mbYesNo, 0) = mrYes) then
        dmDados.fdqPesquisaProdutos.Delete;
end;

procedure TfrmCadastro.sbtIncluirClick(Sender: TObject);
var
      i: integer;
begin
    for i := 0 to frmCadastro.ComponentCount - 1 do
        begin
            if (frmCadastro.Components[i]).ClassName = 'TDBEdit' then
                TDBEdit(frmCadastro.Components[i]).ReadOnly := False;
        end;

    dmDados.fdqPesquisaProdutos.Open;
    dmDados.fdqPesquisaProdutos.Append;
    incluiAltera;
end;

procedure TfrmCadastro.sbtnFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmCadastro.sbtSairClick(Sender: TObject);
begin
    if (dmDados.dsPesquisaProdutos.State in [dsInsert]) then
        dmDados.dsPesquisaProdutos.DataSet.Cancel;
    Close;
end;

procedure TfrmCadastro.sbtSalvarClick(Sender: TObject);
var
      valor_unitario, valor_total: Double;
    i, quantidade: integer;
begin

    Edit1.SetFocus;

    for i := 0 to frmCadastro.ComponentCount - 1 do
        begin
            if (frmCadastro.Components[i]).ClassName = 'TDBEdit' then
                TDBEdit(frmCadastro.Components[i]).ReadOnly := True;
        end;

    valor_unitario := dmDados.fdqPesquisaProdutosvalor_unitario_produto.Value; // StrToFloat(dbeValorUnitario.valu);
    quantidade := StrToInt(dbeQuantidade.Text);
    valor_total := valor_unitario * quantidade;

    dmDados.fdqPesquisaProdutosquantidade_produto.Value := quantidade;
    dmDados.fdqPesquisaProdutosvalor_total_produto.Value := valor_total; // dmDados.fdqPesquisaProdutosvalor_unitario_produto.Value * dmDados.fdqPesquisaProdutosquantidade_produto.Value;
    dmDados.fdqPesquisaProdutos.Post;
    ShowMessage('Registro salvo com sucesso!');
    Edit1.SetFocus;
    salvaCancela;
end;

end.

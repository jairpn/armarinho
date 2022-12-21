unit uCadastroUsuario;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Data.DB, Vcl.Mask,
    Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
    TfrmCadastroUsuario = class(TForm)
        sbtnFechar: TSpeedButton;
        pnlFundo: TPanel;
        pgcBuscaCadastro: TPageControl;
        tbsPesquisa: TTabSheet;
        dbgPesquisaProdutos: TDBGrid;
        pnlBotoes: TPanel;
        lblPesquisa: TLabel;
        edtBusca: TEdit;
        btnBusca: TButton;
        btnLimpar: TButton;
        tbsCadastroProdutos: TTabSheet;
        lblReferencia: TLabel;
        lblCodigoBarras: TLabel;
        dbeCodigoBarras: TDBEdit;
        dbeDescricao: TDBEdit;
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
        Edit1: TEdit;
        Panel1: TPanel;
        RadioButton1: TRadioButton;
        RadioButton2: TRadioButton;
        Label1: TLabel;
        procedure sbtnFecharClick(Sender: TObject);
        procedure FormResize(Sender: TObject);
        procedure sbtSairClick(Sender: TObject);
        procedure btnBuscaClick(Sender: TObject);
        procedure btnLimparClick(Sender: TObject);
        procedure sbtIncluirClick(Sender: TObject);
        procedure sbtAlterarClick(Sender: TObject);
        procedure sbtExcluirClick(Sender: TObject);
        procedure sbtCancelarClick(Sender: TObject);
        procedure sbtSalvarClick(Sender: TObject);
        procedure Panel1Click(Sender: TObject);
        procedure dbgPesquisaProdutosDblClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        function Criptografia(Senha, Chave: String): String;
        private
            { Private declarations }
            procedure incluiAltera;
            procedure salvaCancela;

        public
            { Public declarations }
    end;

var
      frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}


uses uDados, uMenu;

procedure TfrmCadastroUsuario.btnBuscaClick(Sender: TObject);
begin
    dmDados.fdqPesquisaUsuario.close;
    dmDados.fdqPesquisaUsuario.Params.Parambyname('nome_usuario').value := edtBusca.Text + '%';
    if (dmDados.fdqPesquisaUsuariousuario_ativo.value = 'N') then
        RadioButton2.Checked;
    dmDados.fdqPesquisaUsuario.OPen;
end;

procedure TfrmCadastroUsuario.btnLimparClick(Sender: TObject);
begin
    edtBusca.Clear;
    dmDados.fdqPesquisaUsuario.close;
end;

function TfrmCadastroUsuario.Criptografia(Senha, Chave: String): String;
var
      x, y: Integer;
    NovaSenha: String;
begin
    for x := 1 to Length(Chave) do
        begin
            NovaSenha := '';
            for y := 1 to Length(Senha) do
                begin
                    NovaSenha := NovaSenha + chr((ord(Chave[x]) xor ord(Senha[y])));
                end;
            Senha := NovaSenha;
        end;

    Result := Senha;

end;

procedure TfrmCadastroUsuario.dbgPesquisaProdutosDblClick(Sender: TObject);
begin
    pgcBuscaCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastroUsuario.FormResize(Sender: TObject);
begin

    pgcBuscaCadastro.ActivePageIndex := 0;
    pnlFundo.Left := Round((frmCadastroUsuario.Width - pnlFundo.Width) / 2);
    pnlFundo.Top := Round((frmCadastroUsuario.Height - pnlFundo.Height) / 2);
end;

procedure TfrmCadastroUsuario.FormShow(Sender: TObject);
begin
    salvaCancela;
end;

procedure TfrmCadastroUsuario.incluiAltera;
begin
    sbtIncluir.Enabled := False;
    sbtAlterar.Enabled := False;
    sbtExcluir.Enabled := False;
    sbtCancelar.Enabled := True;
    sbtSalvar.Enabled := True;
    dbeCodigoBarras.SetFocus;
end;

procedure TfrmCadastroUsuario.Panel1Click(Sender: TObject);
begin
    frmMenu.SpeedButton2.Visible := True;
    close;
end;

procedure TfrmCadastroUsuario.sbtSairClick(Sender: TObject);
begin
    close;
end;

procedure TfrmCadastroUsuario.sbtSalvarClick(Sender: TObject);
var
      SenhaFinal: string;
begin
    salvaCancela;
    if (RadioButton1.Checked) then
        dmDados.fdqPesquisaUsuariousuario_ativo.value := 'S'
    else
        dmDados.fdqPesquisaUsuariousuario_ativo.value := 'N';

    SenhaFinal := Criptografia(dbeDescricao.Text, 'jairpaivaneves');
    dbeDescricao.Text := SenhaFinal;

    dmDados.fdqPesquisaUsuario.Post;
    ShowMessage('Registro salvo com sucesso!');
end;

procedure TfrmCadastroUsuario.salvaCancela;
begin
    sbtIncluir.Enabled := True;
    sbtAlterar.Enabled := True;
    sbtExcluir.Enabled := True;
    sbtCancelar.Enabled := False;
    sbtSalvar.Enabled := False;
end;

procedure TfrmCadastroUsuario.sbtAlterarClick(Sender: TObject);
begin
    dmDados.fdqPesquisaUsuario.OPen;
    dmDados.fdqPesquisaUsuario.Edit;
    incluiAltera;
end;

procedure TfrmCadastroUsuario.sbtCancelarClick(Sender: TObject);
begin
    dmDados.fdqPesquisaUsuario.Cancel;
    salvaCancela;
end;

procedure TfrmCadastroUsuario.sbtExcluirClick(Sender: TObject);
begin
    if (MessageDlg('Deseja excluir este registro? >> ' + dmDados.fdqPesquisaUsuarionome_usuario.value + ' <<', mtConfirmation, mbYesNo, 0) = mrYes) then
        dmDados.fdqPesquisaUsuario.Delete;
end;

procedure TfrmCadastroUsuario.sbtIncluirClick(Sender: TObject);
begin
    dmDados.fdqPesquisaUsuario.OPen;
    dmDados.fdqPesquisaUsuario.Append;
    dmDados.fdqPesquisaUsuariodata_cadastro.value := Date();
    incluiAltera;
end;

procedure TfrmCadastroUsuario.sbtnFecharClick(Sender: TObject);
begin
    close;
end;

end.

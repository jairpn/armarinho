unit uLogin;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
    Vcl.Imaging.pngimage, Vcl.Buttons;

type
    TfrmLogin = class(TForm)
        pnlFundo: TPanel;
        pnlLateral: TPanel;
        lblBemvindo: TLabel;
        lblNomeSistema: TLabel;
        lblDesenvolvido: TLabel;
        lblVersao: TLabel;
        imgLogo: TImage;
        lblDigite: TLabel;
        lblNomeUsuario: TLabel;
        pnlNomeUsuario: TPanel;
        edtNomeUsuario: TEdit;
        pnlSenha: TPanel;
        lblSenha: TLabel;
        edtSenha: TEdit;
        sbtFechar: TSpeedButton;
        sbtConfirma: TSpeedButton;
        pnlConfirma: TPanel;
        procedure sbtFecharClick(Sender: TObject);
        procedure sbtConfirmaClick(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        private
            { Private declarations }
        public
            { Public declarations }
    end;

var
      frmLogin: TfrmLogin;

implementation

{$R *.dfm}


uses uCadastro, uDados, uCadastroUsuario;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
    pnlFundo.Left := Round((frmLogin.Width - pnlFundo.Width) / 2);
    pnlFundo.Top := Round((frmLogin.Height - pnlFundo.Height) / 2);
end;

procedure TfrmLogin.sbtFecharClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfrmLogin.sbtConfirmaClick(Sender: TObject);
begin
    dmDados.fdqUsuario.Close;
    dmDados.fdqUsuario.Params.ParamByName('nome').Value := edtNomeUsuario.Text;
    dmDados.fdqUsuario.Params.ParamByName('senha').Value := frmCadastroUsuario.Criptografia(edtSenha.Text, 'jairpaivaneves');
    dmDados.fdqUsuario.Open;

    if (dmDados.fdqUsuario.RecordCount >= 1) then
        begin
            if (dmDados.fdqUsuariousuario_ativo.Value = 'N') then
                begin
                    showmessage('Usuário Inativo!');
                    exit;
                end;
            // dmDados.fdqUsuario.Close;
            Close;
        end
    else
        begin
            showmessage('Usuário/Senha não cofere!');
        end;
end;

end.

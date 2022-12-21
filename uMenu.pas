unit uMenu;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
    Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
    TfrmMenu = class(TForm)
        btnCadastro: TSpeedButton;
        pnlLateral: TPanel;
        pnlBotao: TPanel;
        Panel2: TPanel;
        sbtnFechar: TSpeedButton;
        Image1: TImage;
        lblNomeSistema: TLabel;
        Panel1: TPanel;
        btnCadUsu: TSpeedButton;
        SpeedButton2: TSpeedButton;
        Panel3: TPanel;
        btnCadLoja: TSpeedButton;
        lblLogado: TLabel;
        procedure btnCadastroClick(Sender: TObject);
        procedure sbtnFecharClick(Sender: TObject);
        procedure FormResize(Sender: TObject);
        procedure btnCadUsuClick(Sender: TObject);
        procedure btnCadLojaClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        private
            { Private declarations }
        public
            { Public declarations }
            nomeUsuario: string;
    end;

const
      nomeUsuario = '';

var
      frmMenu: TfrmMenu;

implementation

{$R *.dfm}


uses uCadastro, uCadastroUsuario, uDados;

procedure TfrmMenu.btnCadastroClick(Sender: TObject);
begin
    SpeedButton2.Visible := False;
    if (frmCadastro = nil) then
        frmCadastro := TfrmCadastro.create(nil);
    frmCadastro.ShowModal;
end;

procedure TfrmMenu.FormResize(Sender: TObject);
begin
    Image1.Left := Round((frmMenu.Width - Image1.Width) / 2);
    Image1.Top := Round((frmMenu.Height - Image1.Height) / 2);

    lblNomeSistema.Left := Round((frmMenu.Width - lblNomeSistema.Width) / 2);
    lblNomeSistema.Top := 30;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
begin
    nomeUsuario := dmDados.fdqUsuarionome_usuario.Value;
    lblLogado.Caption := 'Usuário logado: ' + nomeUsuario;
end;

procedure TfrmMenu.sbtnFecharClick(Sender: TObject);
begin
    if (MessageDlg('Deseja realmente sair do Sistema?', mtConfirmation, mbYesNo, 0) = mrYes) then
        Application.Terminate;
end;

procedure TfrmMenu.btnCadUsuClick(Sender: TObject);
begin
    SpeedButton2.Visible := False;
    if (frmCadastroUsuario = nil) then
        frmCadastroUsuario := TfrmCadastroUsuario.create(nil);
    frmCadastroUsuario.ShowModal;
    FreeAndNil(frmCadastroUsuario);
end;

procedure TfrmMenu.btnCadLojaClick(Sender: TObject);
begin
    SpeedButton2.Visible := False;
    ShowMessage('Tela em desenvolvimento');
    SpeedButton2.Visible := True;
end;

end.

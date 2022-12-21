program loja;

uses
    Vcl.Forms,
    uLogin in 'uLogin.pas' {frmLogin} ,
    uCadastro in 'uCadastro.pas' {frmCadastro} ,
    uDados in 'dados\uDados.pas' {dmDados: TDataModule} ,
    Vcl.Themes,
    Vcl.Styles,
    uMenu in 'uMenu.pas' {frmMenu} ,
    uCadastroUsuario in 'uCadastroUsuario.pas' {frmCadastroUsuario};

{$R *.res}


begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;

    Application.CreateForm(TdmDados, dmDados);
    frmLogin := TfrmLogin.Create(nil);
    frmLogin.ShowModal;

    Application.CreateForm(TfrmMenu, frmMenu);

    frmLogin.Hide;
    frmLogin.Free;

    Application.Run;

end.

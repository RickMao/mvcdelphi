program login;

uses
  Vcl.Forms,
  uUsuarioController in 'controller\uUsuarioController.pas',
  uUsuarioControllerInterface in 'inteface\uUsuarioControllerInterface.pas',
  uUsuarioModeloInterface in 'inteface\uUsuarioModeloInterface.pas',
  uUsuarioLoginViewInterface in 'inteface\uUsuarioLoginViewInterface.pas',
  uUsuarioModel in 'model\uUsuarioModel.pas',
  uUsuarioLoginView in 'view\uUsuarioLoginView.pas',
  uAplicacaoObj in 'objeto\uAplicacaoObj.pas',
  uUsuarioDao in 'dao\uUsuarioDao.pas',
  uUsuarioLoginScreen in 'screen\uUsuarioLoginScreen.pas' {UsuarioLoginScreen},
  uUsuarioAcessoScreen in 'screen\uUsuarioAcessoScreen.pas' {UsuarioAcessoScreen},
  uUsuarioAcessoView in 'view\uUsuarioAcessoView.pas',
  uUsuarioAcessoViewInterface in 'inteface\uUsuarioAcessoViewInterface.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;

  Aplicacao := TAplicacao.Cria_Se;
  try
    Aplicacao.Execute_Se;
  finally
    Aplicacao.Destrua_Se;
  end;
end.

unit uAplicacaoObj;

interface

uses
  Winapi.Windows, System.Classes, Vcl.Dialogs, uConexao,
  uUsuarioControllerInterface, uUsuarioModeloInterface, uUsuarioViewInterface;

type
  TAplicacao = class
  private
    FConexao: TConexao;
    function logar:boolean;
    procedure SetConexao(const Value: TConexao);
  public
    constructor Cria_Se;
    destructor Destrua_Se;
    procedure Execute_Se;
    property Conexao:TConexao read FConexao write SetConexao;
  end;

var
  Aplicacao:TAplicacao;


implementation

uses
  uUsuarioController, uUsuarioModel, uUsuarioLoginView;

{ TAplicacao }

constructor TAplicacao.Cria_Se;
begin
  inherited;
  FConexao:=TConexao.Create;
end;

destructor TAplicacao.Destrua_Se;
begin
  FConexao.Destroy;
  inherited;
end;

procedure TAplicacao.Execute_Se;
begin
  if logar then ShowMessage('Logou')
  else ShowMessage('Não');
end;

function TAplicacao.logar: boolean;
var
  iUsuario:IUsuarioModelInterface;
  iView:TUsuarioView;
  iControle:IUsuarioControllerInterface;
  Tentativa:Integer;
begin
  Tentativa:=0;
  iUsuario:=TUsuarioModel.Cria_Se;
  iView:=TUsuarioView.Cria_Se;
  iControle:=TUsuarioController.Cria_Se(iView, iUsuario);
  iView.recebeControle(iControle);
  repeat
    Inc(Tentativa);
    case iView.login of
      0:Result:=False;
      1:Result:=True;
      2:
      begin
        Result:=False;
        Tentativa:=3;
      end;
    end;
  until  (Result=True) or (Tentativa = 3);
  iUsuario._Release;
  iControle._Release;
end;

procedure TAplicacao.SetConexao(const Value: TConexao);
begin
  FConexao := Value;
end;

end.

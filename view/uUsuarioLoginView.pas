unit uUsuarioLoginView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uUsuarioViewInterface, uUsuarioLoginScreen, uUsuarioControllerInterface;

type
  TUsuarioView = class(TInterfacedObject, IUsuarioViewInterface)
  protected
    FLogado:Integer;
    FTela:TUsuarioLoginScreen;
    FController:IUsuarioControllerInterface;
    function getNome:String;
    function getSenha:String;
    procedure setNome(const Value: String);
    procedure setSenha(const Value: String);
    property Nome:String read getNome write setNome;
    property Senha:String read getSenha write setSenha;
    procedure btnLogarclick(Sender:TObject);
    procedure btnCancelarclick(Sender:TObject);
  public
    constructor Cria_Se;
    destructor Destrua_Se;
    function login:Integer;
    procedure recebeControle(Controller:IUsuarioControllerInterface);
  end;

implementation

uses
  uUsuarioController;

{ TUsuarioView }

procedure TUsuarioView.btnCancelarclick(Sender: TObject);
begin
  FLogado:=2;
  FTela.Close;
end;

procedure TUsuarioView.btnLogarclick(Sender: TObject);
begin
  if FController.login then FLogado:=1;
  FTela.Close;
end;

constructor TUsuarioView.Cria_Se;
begin
  inherited;
  Application.CreateForm(TUsuarioLoginScreen, FTela);
  FTela.btnCancelar.OnClick:=btnCancelarclick;
  FTela.btnLogar.OnClick:=btnLogarclick;
  FLogado:=0;
end;

destructor TUsuarioView.Destrua_Se;
begin
  FreeAndNil(FTela);
  inherited;
end;

function TUsuarioView.getNome: String;
begin
  Result:=FTela.Nome.Text;
end;

function TUsuarioView.getSenha: String;
begin
  Result:=FTela.Senha.Text;
end;

function TUsuarioView.login: Integer;
begin
  FTela.Nome.Clear;
  FTela.Senha.Clear;
  FTela.ShowModal;
  Result:=FLogado;
end;

procedure TUsuarioView.recebeControle(Controller: IUsuarioControllerInterface);
begin
  FController:=Controller;
end;

procedure TUsuarioView.setNome(const Value: String);
begin
  FTela.Nome.Text:=Value;
end;

procedure TUsuarioView.setSenha(const Value: String);
begin
  FTela.Senha.Text:=Value;
end;

end.

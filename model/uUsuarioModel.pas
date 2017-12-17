unit uUsuarioModel;

interface

uses
  uUsuarioModeloInterface;

type
  TUsuarioModel = class(TInterfacedObject, IUsuarioModelInterface)
  protected
    FNome:String;
    FSenha:String;
    function getNome:String;
    function getSenha:String;
    procedure setNome(const Value: String);
    procedure setSenha(const Value: String);
  public
    constructor Cria_Se;
    destructor Destrua_Se;
    function logar:boolean;
    property Nome:String read getNome write setNome;
    property Senha:String read getSenha write setSenha;
  end;

implementation

{ TUsuarioModel }

uses uUsuarioDao;

constructor TUsuarioModel.Cria_Se;
begin
  inherited;

end;

destructor TUsuarioModel.Destrua_Se;
begin

  inherited;
end;

function TUsuarioModel.getNome: String;
begin
  Result:=FNome;
end;

function TUsuarioModel.getSenha: String;
begin
  Result:=FSenha;
end;

function TUsuarioModel.logar: boolean;
var
  Dados:TUsuarioDao;
begin
  Dados:=TUsuarioDao.Create;
  try
    Result:=Dados.carregar(Self);
  finally
    Dados.Destroy;
  end;
end;

procedure TUsuarioModel.setNome(const Value: String);
begin
  FNome:=Value;
end;

procedure TUsuarioModel.setSenha(const Value: String);
begin
  FSenha:=Value;
end;

end.

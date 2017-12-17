unit uUsuarioModeloInterface;

interface

type
  IUsuarioModelInterface = interface
    ['{32BD4239-EE55-4907-A0EF-5E40E70EFBAE}']
    function getNome:String;
    function getSenha:String;
    procedure setNome(const Value: String);
    procedure setSenha(const Value: String);
    property Nome:String read getNome write setNome;
    property Senha:String read getSenha write setSenha;
    function logar:boolean;
  end;

implementation

end.

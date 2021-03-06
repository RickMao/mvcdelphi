unit uUsuarioLoginViewInterface;

interface

type
  IUsuarioViewInterface = interface
    ['{E68A9E09-CC9D-464F-84FC-943F449EBB63}']
    function getNome:String;
    function getSenha:String;
    procedure setNome(const Value: String);
    procedure setSenha(const Value: String);
    property Nome:String read getNome write setNome;
    property Senha:String read getSenha write setSenha;
    function login:Integer;
  end;

implementation

end.

unit uUsuarioControllerInterface;

interface

uses
  uUsuarioLoginViewInterface,
  uUsuarioModeloInterface;

type
  IUsuarioControllerInterface = interface
    ['{09FF0249-909B-4555-8963-0475FDD12CED}']
    function getView:IUsuarioViewInterface;
    function getModel:IUsuarioModelInterface;
    procedure setView(const Value: IUsuarioViewInterface);
    procedure setModel(const Value: IUsuarioModelInterface);
    property View:IUsuarioViewInterface read getView write setView;
    property Model:IUsuarioModelInterface read getModel write setModel;
    function login:boolean;
  end;

implementation

end.

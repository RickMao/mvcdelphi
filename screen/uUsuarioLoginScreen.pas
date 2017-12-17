unit uUsuarioLoginScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TUsuarioLoginScreen = class(TForm)
    lbNome: TLabel;
    Nome: TEdit;
    lbSenha: TLabel;
    Senha: TEdit;
    btnCancelar: TButton;
    btnLogar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

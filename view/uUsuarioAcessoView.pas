unit uUsuarioAcessoView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uUsuarioAcessoScreen;

type
  TUsuarioAcessoView = class(TUsuarioAcessoScreen)
  protected
  public
    constructor Cria_Se;
    destructor Destrua_Se;
    procedure ShowView;
  end;

implementation

{ TUsuarioAcessoView }

constructor TUsuarioAcessoView.Cria_Se;
begin
  inherited;

end;

destructor TUsuarioAcessoView.Destrua_Se;
begin

  inherited;
end;

procedure TUsuarioAcessoView.ShowView;
begin
  ShowModal;
end;

end.

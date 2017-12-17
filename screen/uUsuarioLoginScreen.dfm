object UsuarioLoginScreen: TUsuarioLoginScreen
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 96
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 8
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lbSenha: TLabel
    Left = 200
    Top = 8
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Nome: TEdit
    Left = 8
    Top = 27
    Width = 186
    Height = 21
    TabOrder = 0
  end
  object Senha: TEdit
    Left = 200
    Top = 27
    Width = 164
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnCancelar: TButton
    Left = 289
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object btnLogar: TButton
    Left = 208
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Logar'
    TabOrder = 2
  end
end

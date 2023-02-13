object MainF: TMainF
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Men'#250' Principal'
  ClientHeight = 98
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 32
    Top = 8
    object Opciones1: TMenuItem
      Caption = 'Opciones'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Productos1: TMenuItem
        Caption = 'Productos'
        OnClick = Productos1Click
      end
      object Facturas1: TMenuItem
        Caption = 'Facturas'
      end
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      OnClick = Salir1Click
    end
  end
end

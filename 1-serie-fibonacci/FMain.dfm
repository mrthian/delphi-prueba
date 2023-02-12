object MainF: TMainF
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  Caption = 'Calcular Serie Fibonacci'
  ClientHeight = 211
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnCalcular: TButton
    Left = 8
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Fibonacci Normal'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
  object EdtNumero: TEdit
    Left = 8
    Top = 16
    Width = 248
    Height = 26
    NumbersOnly = True
    TabOrder = 0
    TextHint = 'Ingresar el numero a calcular'
    OnExit = EdtNumeroExit
  end
  object mmResultado: TMemo
    Left = 8
    Top = 79
    Width = 248
    Height = 124
    ReadOnly = True
    TabOrder = 2
  end
  object btnRecursividad: TButton
    Left = 135
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Fibonacci Recurs.'
    TabOrder = 3
    OnClick = btnRecursividadClick
  end
end

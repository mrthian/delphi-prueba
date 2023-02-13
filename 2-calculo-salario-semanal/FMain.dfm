object MainF: TMainF
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = [biSystemMenu]
  Caption = 'Calcular Salario Semanal'
  ClientHeight = 164
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel: TPanel
    Left = 0
    Top = 0
    Width = 596
    Height = 164
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 216
    ExplicitTop = 136
    ExplicitWidth = 185
    ExplicitHeight = 41
    object grpSetting: TGroupBox
      Left = 16
      Top = 16
      Width = 161
      Height = 137
      Caption = ' Configuraciones'
      TabOrder = 0
      object lblVlrHrNormal: TLabel
        Left = 16
        Top = 32
        Width = 70
        Height = 13
        Caption = 'Vlr. Hr Normal:'
      end
      object lblVlrHrExtra: TLabel
        Left = 16
        Top = 80
        Width = 63
        Height = 13
        Caption = 'Vlr. Hr Extra:'
      end
      object EdtVlrHrNormal: TEdit
        Left = 16
        Top = 51
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 0
        Text = '15000'
        TextHint = 'Valor hora normal'
      end
      object EdtVlrHrExtra: TEdit
        Left = 16
        Top = 99
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 1
        Text = '19000'
        TextHint = 'Valor hora extra'
      end
    end
    object grpCalcular: TGroupBox
      Left = 183
      Top = 16
      Width = 402
      Height = 137
      TabOrder = 1
      object lblColaborador: TLabel
        Left = 16
        Top = 16
        Width = 63
        Height = 13
        Caption = 'Colaborador:'
      end
      object lblCantHoras: TLabel
        Left = 16
        Top = 43
        Width = 85
        Height = 13
        Caption = 'Horas Laboradas:'
      end
      object EdtColaborador: TEdit
        Left = 107
        Top = 13
        Width = 278
        Height = 21
        TabOrder = 0
        TextHint = 'Ingresar nombre del colaborador'
      end
      object EdtCantHr: TEdit
        Left = 107
        Top = 40
        Width = 94
        Height = 21
        NumbersOnly = True
        TabOrder = 1
        TextHint = 'Cant Horas'
      end
      object btnCalcularSalario: TButton
        Left = 16
        Top = 67
        Width = 369
        Height = 53
        Caption = 'Calcular Salario'
        TabOrder = 2
        OnClick = btnCalcularSalarioClick
      end
    end
  end
end

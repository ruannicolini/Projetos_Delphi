object Form3: TForm3
  Left = 976
  Top = 129
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 235
  ClientWidth = 169
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBtn: TPanel
    Left = -1
    Top = 48
    Width = 116
    Height = 116
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = -1
    Top = -1
    Width = 160
    Height = 49
    Color = clWindowText
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 149
      Height = 40
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Edit1: TEdit
        Left = 32
        Top = 8
        Width = 109
        Height = 21
        BorderStyle = bsNone
        TabOrder = 0
      end
    end
  end
  object PanelOp: TPanel
    Left = 115
    Top = 48
    Width = 43
    Height = 116
    TabOrder = 2
  end
end

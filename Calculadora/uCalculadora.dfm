object FormCalculadora: TFormCalculadora
  Left = 192
  Top = 117
  Width = 244
  Height = 241
  Caption = 'Ruan Nicolini'
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtCalc: TEdit
    Left = 8
    Top = 8
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object btn7: TButton
    Left = 8
    Top = 48
    Width = 41
    Height = 33
    Caption = '7'
    TabOrder = 1
    OnClick = btn7Click
  end
  object Button2: TButton
    Left = 64
    Top = 48
    Width = 41
    Height = 33
    Caption = '8'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 48
    Width = 41
    Height = 33
    Caption = '9'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 88
    Width = 41
    Height = 33
    Caption = '4'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 64
    Top = 88
    Width = 41
    Height = 33
    Caption = '5'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 120
    Top = 88
    Width = 41
    Height = 33
    Caption = '6'
    TabOrder = 6
    OnClick = Button6Click
  end
  object btn1: TButton
    Left = 8
    Top = 128
    Width = 41
    Height = 33
    Caption = '1'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 64
    Top = 128
    Width = 41
    Height = 33
    Caption = '2'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 120
    Top = 128
    Width = 41
    Height = 33
    Caption = '3'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btnCE: TButton
    Left = 8
    Top = 168
    Width = 41
    Height = 33
    Caption = 'CE'
    TabOrder = 10
    OnClick = btnCEClick
  end
  object btn0: TButton
    Left = 64
    Top = 168
    Width = 41
    Height = 33
    Caption = '0'
    TabOrder = 11
    OnClick = btn0Click
  end
  object btnIgual: TButton
    Left = 120
    Top = 168
    Width = 41
    Height = 33
    Caption = '='
    Enabled = False
    TabOrder = 12
    OnClick = btnIgualClick
  end
  object ButtonAdicao: TButton
    Left = 184
    Top = 48
    Width = 41
    Height = 33
    Caption = '+'
    TabOrder = 13
    OnClick = ButtonAdicaoClick
  end
  object btnSubtracao: TButton
    Left = 184
    Top = 88
    Width = 41
    Height = 33
    Caption = '-'
    TabOrder = 14
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicacao: TButton
    Left = 184
    Top = 128
    Width = 41
    Height = 33
    Caption = 'X'
    TabOrder = 15
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisao: TButton
    Left = 184
    Top = 168
    Width = 41
    Height = 33
    Caption = '/'
    TabOrder = 16
    OnClick = btnDivisaoClick
  end
end

object Form1: TForm1
  Left = 188
  Top = 115
  Width = 931
  Height = 571
  BorderIcons = []
  Caption = '001'
  Color = clInactiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbCod: TLabel
    Left = 16
    Top = 48
    Width = 23
    Height = 13
    Caption = 'Cod'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbNome: TLabel
    Left = 92
    Top = 49
    Width = 33
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbEnd: TLabel
    Left = 16
    Top = 166
    Width = 55
    Height = 13
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbNum: TLabel
    Left = 235
    Top = 167
    Width = 15
    Height = 13
    Caption = 'N'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbBairro: TLabel
    Left = 236
    Top = 206
    Width = 34
    Height = 13
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbComp: TLabel
    Left = 292
    Top = 166
    Width = 76
    Height = 13
    Caption = 'Complemento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCid: TLabel
    Left = 75
    Top = 206
    Width = 40
    Height = 13
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbUf: TLabel
    Left = 16
    Top = 206
    Width = 14
    Height = 13
    Caption = 'Uf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCep: TLabel
    Left = 16
    Top = 247
    Width = 23
    Height = 13
    Caption = 'Cep'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbFone1: TLabel
    Left = 138
    Top = 247
    Width = 36
    Height = 13
    Caption = 'Fone1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbFone2: TLabel
    Left = 282
    Top = 247
    Width = 36
    Height = 13
    Caption = 'Fone2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbEmail: TLabel
    Left = 16
    Top = 287
    Width = 31
    Height = 13
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCpf: TLabel
    Left = 234
    Top = 88
    Width = 20
    Height = 13
    Caption = 'Cpf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbcnpj: TLabel
    Left = 16
    Top = 127
    Width = 26
    Height = 13
    Caption = 'Cnpj'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbIE: TLabel
    Left = 233
    Top = 128
    Width = 82
    Height = 13
    Caption = 'Insc. Estadual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbObs: TLabel
    Left = 16
    Top = 329
    Width = 75
    Height = 13
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object editName: TEdit
    Left = 91
    Top = 64
    Width = 325
    Height = 21
    TabOrder = 0
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editEnd: TEdit
    Left = 16
    Top = 182
    Width = 208
    Height = 21
    TabOrder = 1
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editNum: TEdit
    Left = 235
    Top = 182
    Width = 45
    Height = 21
    TabOrder = 2
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editBairro: TEdit
    Left = 236
    Top = 222
    Width = 180
    Height = 21
    TabOrder = 3
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object PCadCliente: TPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 41
    Alignment = taLeftJustify
    Caption = '  Cadastro Cliente'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
  object editCod: TEdit
    Left = 16
    Top = 64
    Width = 64
    Height = 21
    TabOrder = 5
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editComp: TEdit
    Left = 292
    Top = 182
    Width = 124
    Height = 21
    TabOrder = 6
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editCid: TEdit
    Left = 75
    Top = 222
    Width = 149
    Height = 21
    TabOrder = 7
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object cmbUf: TComboBox
    Left = 16
    Top = 222
    Width = 47
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'MG'
      'ES'
      'SP'
      'RJ'
      'RO')
  end
  object editCep: TEdit
    Left = 16
    Top = 263
    Width = 112
    Height = 21
    TabOrder = 9
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editFone1: TEdit
    Left = 137
    Top = 263
    Width = 135
    Height = 21
    TabOrder = 10
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editFone2: TEdit
    Left = 281
    Top = 263
    Width = 135
    Height = 21
    TabOrder = 11
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editEmail: TEdit
    Left = 16
    Top = 303
    Width = 208
    Height = 21
    TabOrder = 12
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object ckbAtivo: TCheckBox
    Left = 234
    Top = 303
    Width = 47
    Height = 20
    Caption = 'Ativo'
    TabOrder = 13
  end
  object rGroupTipo: TRadioGroup
    Left = 16
    Top = 90
    Width = 208
    Height = 33
    Caption = 'Tipo'
    TabOrder = 14
  end
  object rbPFisica: TRadioButton
    Left = 26
    Top = 102
    Width = 103
    Height = 17
    Caption = 'Pessoa F'#237'sica'
    TabOrder = 15
    OnEnter = rbPFisicaEnter
  end
  object rbPJuridica: TRadioButton
    Left = 116
    Top = 102
    Width = 95
    Height = 17
    Caption = 'Pessoa Jur'#237'dica'
    TabOrder = 16
    OnEnter = rbPJuridicaEnter
  end
  object editCpf: TEdit
    Left = 234
    Top = 102
    Width = 182
    Height = 21
    TabOrder = 17
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editCnpj: TEdit
    Left = 15
    Top = 141
    Width = 209
    Height = 21
    TabOrder = 18
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object editIE: TEdit
    Left = 234
    Top = 142
    Width = 182
    Height = 21
    TabOrder = 19
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object btnConcluir: TButton
    Left = 340
    Top = 502
    Width = 75
    Height = 25
    Caption = 'Concluir'
    TabOrder = 20
    OnClick = btnConcluirClick
  end
  object memoObs: TMemo
    Left = 16
    Top = 344
    Width = 400
    Height = 153
    TabOrder = 21
    OnEnter = editCodEnter
    OnExit = editCodExit
  end
  object PInformacoes: TPanel
    Left = 441
    Top = 41
    Width = 480
    Height = 498
    Color = clInactiveBorder
    TabOrder = 22
    Visible = False
    object lbInf: TLabel
      Left = 29
      Top = 7
      Width = 70
      Height = 13
      Caption = 'Informa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object memoInf: TMemo
      Left = 30
      Top = 24
      Width = 419
      Height = 433
      TabOrder = 0
    end
    object btnConfirmar: TButton
      Left = 374
      Top = 462
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 1
    end
    object btnAlterar: TButton
      Left = 295
      Top = 462
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = btnAlterarClick
    end
  end
  object XPManifest1: TXPManifest
    Left = 408
    Top = 8
  end
end

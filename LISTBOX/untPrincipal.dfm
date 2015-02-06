object frmListBox: TfrmListBox
  Left = 497
  Top = 164
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Trabalhando com ListBox'
  ClientHeight = 315
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 248
    Height = 272
    Align = alClient
    TabOrder = 0
    object lstDados: TListBox
      Left = 1
      Top = 1
      Width = 246
      Height = 270
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 18
      MultiSelect = True
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 248
    Top = 0
    Width = 90
    Height = 272
    Align = alRight
    TabOrder = 1
    object btnInserir: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btnInserirClick
      Kind = bkYes
    end
    object btnRemover: TBitBtn
      Left = 8
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Remover'
      TabOrder = 1
      OnClick = btnRemoverClick
      Kind = bkNo
    end
    object btnEditar: TBitBtn
      Left = 8
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = btnEditarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 272
    Width = 338
    Height = 43
    Align = alBottom
    TabOrder = 2
    object txtPesquisa: TEdit
      Left = 0
      Top = 8
      Width = 337
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      Text = 'Pesquisa por algo aqui...'
      OnChange = txtPesquisaChange
      OnEnter = txtPesquisaEnter
      OnExit = txtPesquisaExit
    end
  end
  object XPManifest1: TXPManifest
    Left = 280
    Top = 120
  end
end

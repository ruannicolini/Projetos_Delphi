object Form1: TForm1
  Left = 192
  Top = 117
  Width = 307
  Height = 322
  Caption = 'Leitura e Escrita Arquivos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 65
    Caption = 'Diret'#243'rio'
    TabOrder = 0
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 193
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 203
      Top = 22
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 228
      Top = 21
      Width = 41
      Height = 26
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 88
    Width = 281
    Height = 193
    Caption = 'Panel1'
    TabOrder = 1
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 279
      Height = 191
      Align = alClient
      TabOrder = 0
    end
  end
  object XPManifest1: TXPManifest
    Left = 288
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivo de Texto [.txt]|*.txt'
    Title = 'Abrir Arquivo de Texto'
    Left = 256
    Top = 112
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Arquivo de Texto [.txt]|.txt'
    Title = 'Salvar Arquivo de texto'
    Left = 224
    Top = 112
  end
end

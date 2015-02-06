object frmCaseShell: TfrmCaseShell
  Left = 448
  Top = 164
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Case Of e ShellApi'
  ClientHeight = 124
  ClientWidth = 225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 18
    Height = 13
    Caption = 'Site'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 209
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Nada selecionado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbSites: TComboBox
    Left = 8
    Top = 24
    Width = 209
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = cbSitesChange
  end
  object btnAbrir: TBitBtn
    Left = 72
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 1
    OnClick = btnAbrirClick
    Kind = bkOK
  end
  object XPManifest1: TXPManifest
    Left = 200
  end
end

unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMan;

type
  TForm1 = class(TForm)
    editName: TEdit;
    editEnd: TEdit;
    editNum: TEdit;
    editBairro: TEdit;
    editCod: TEdit;
    Label6: TLabel;
    XPManifest1: TXPManifest;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    editComp: TEdit;
    Label3: TLabel;
    editCid: TEdit;
    Label4: TLabel;
    Label8: TLabel;
    cmbUf: TComboBox;
    Label9: TLabel;
    editCep: TEdit;
    Label10: TLabel;
    editFone1: TEdit;
    Label11: TLabel;
    editFone2: TEdit;
    editEmail: TEdit;
    Label12: TLabel;
    ckbAtivo: TCheckBox;
    RadioGroup1: TRadioGroup;
    rbPFisica: TRadioButton;
    rbPJuridica: TRadioButton;
    editCpf: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    editCnpj: TEdit;
    Label16: TLabel;
    editIE: TEdit;
    btnConcluir: TButton;
    memoObs: TMemo;
    Label13: TLabel;
    PInformacoes: TPanel;
    Label17: TLabel;
    memoInf: TMemo;
    btnConfirmar: TButton;
    btnAlterar: TButton;
    PCadCliente: TPanel;
    procedure btnConcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure editCodEnter(Sender: TObject);
    procedure editCodExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConcluirClick(Sender: TObject);
begin
  PInformacoes.Visible := true;
end;

procedure TForm1.btnAlterarClick(Sender: TObject);
begin
  PInformacoes.Visible := false;
end;

procedure TForm1.editCodEnter(Sender: TObject);
begin
  If (Sender is TEdit) then (Sender as TEdit).Color := clMoneyGreen
  else
    If (Sender is TMemo) then (Sender as TMemo).Color := clMoneyGreen

end;

procedure TForm1.editCodExit(Sender: TObject);
begin
  If (Sender is TEdit) then (Sender as TEdit).Color := clWindow
  else
    If (Sender is TMemo) then (Sender as TMemo).Color := clWindow
end;

end.

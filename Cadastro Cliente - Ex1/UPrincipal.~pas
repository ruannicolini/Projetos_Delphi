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
    lbCod: TLabel;
    XPManifest1: TXPManifest;
    lbNome: TLabel;
    lbEnd: TLabel;
    lbNum: TLabel;
    lbBairro: TLabel;
    editComp: TEdit;
    lbComp: TLabel;
    editCid: TEdit;
    lbCid: TLabel;
    lbUf: TLabel;
    cmbUf: TComboBox;
    lbCep: TLabel;
    editCep: TEdit;
    lbFone1: TLabel;
    editFone1: TEdit;
    lbFone2: TLabel;
    editFone2: TEdit;
    editEmail: TEdit;
    lbEmail: TLabel;
    ckbAtivo: TCheckBox;
    rGroupTipo: TRadioGroup;
    rbPFisica: TRadioButton;
    rbPJuridica: TRadioButton;
    editCpf: TEdit;
    lbCpf: TLabel;
    lbcnpj: TLabel;
    editCnpj: TEdit;
    lbIE: TLabel;
    editIE: TEdit;
    btnConcluir: TButton;
    memoObs: TMemo;
    lbObs: TLabel;
    PInformacoes: TPanel;
    lbInf: TLabel;
    memoInf: TMemo;
    btnConfirmar: TButton;
    btnAlterar: TButton;
    PCadCliente: TPanel;
    btnFechar: TButton;
    procedure btnConcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure editCodEnter(Sender: TObject);
    procedure editCodExit(Sender: TObject);
    procedure rbPFisicaEnter(Sender: TObject);
    procedure rbPJuridicaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
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
  memoInf.Lines.Text := lbCod.Caption + ': ' + editCod.Text + #13 +
                        lbNome.Caption + ': ' + editName.Text + #13 ;

  if rbPFisica.Checked then
    memoInf.Lines.Text :=  memoInf.Text + lbCpf.Caption + ': ' + editCpf.Text
  else
    memoInf.Lines.Text :=  memoInf.Text + lbcnpj.Caption + ': ' + editCnpj.Text
                            + ' ' + lbIE.Caption + ': ' + editIE.Text + #13;

  memoInf.Lines.Text := memoInf.Text + lbEnd.Caption + ': ' + editEnd.Text + #13 +
                        lbNum.Caption + ': ' + editNum.Text + #13 +
                        lbComp.Caption + ': ' + editComp.Text + #13 +
                        lbUf.Caption + ': ' + cmbUf.Text + #13 +
                        lbCid.Caption + ': ' + editCid.Text + #13 +
                        lbBairro.Caption + ': ' + editBairro.Text + #13 +
                        lbCep.Caption + ': ' + editCep.Text + ' ' +
                        lbFone1.Caption + ': ' + editFone1.Text + #13 +
                        lbFone2.Caption + ': ' + editFone2.Text + #13 +
                        lbEmail.Caption + ': ' + editEmail.Text + #13 +
                        lbObs.Caption + ': ' + memoObs.Text + #13 ;

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

procedure TForm1.rbPFisicaEnter(Sender: TObject);
begin
  editIE.Enabled := false;
  editCnpj.Enabled := false;
  editCpf.Enabled := true; 
end;

procedure TForm1.rbPJuridicaEnter(Sender: TObject);
begin
  editIE.Enabled := true;
  editCnpj.Enabled := true;
  editCpf.Enabled := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  rbPFisica.Checked := true;
  rbPFisicaEnter(rbPFisica);
end;

procedure TForm1.btnFecharClick(Sender: TObject);
begin
  Form1.Close;
end;

end.

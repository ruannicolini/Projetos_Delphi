unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, XPMan;

type
  TfrmListBox = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lstDados: TListBox;
    btnInserir: TBitBtn;
    btnRemover: TBitBtn;
    txtPesquisa: TEdit;
    btnEditar: TBitBtn;
    XPManifest1: TXPManifest;
    procedure txtPesquisaEnter(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure txtPesquisaChange(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListBox: TfrmListBox;

implementation

{$R *.dfm}

procedure TfrmListBox.txtPesquisaEnter(Sender: TObject);
begin
lstDados.MultiSelect := false;
txtPesquisa.Clear;
end;

procedure TfrmListBox.btnInserirClick(Sender: TObject);
var
dados: String;
begin
dados := InputBox('Inserção de dados','Dados : ','');
IF (Trim(dados) <> '') THEN
lstDados.Items.Add(dados)
else
MessageDlg('Você não digitou nenhum dado',mtError,[mbOK],0);
end;

procedure TfrmListBox.btnRemoverClick(Sender: TObject);
var
i: Integer;
begin

FOR i := -1 + lstDados.Items.Count  downto 0 DO
BEGIN
IF (lstDados.Selected[i]) THEN
lstDados.Items.Delete(i);
END;

end;

procedure TfrmListBox.txtPesquisaChange(Sender: TObject);
begin
lstDados.Perform(LB_SELECTSTRING,0,LongInt(pChar(txtPesquisa.Text)));
end;

procedure TfrmListBox.txtPesquisaExit(Sender: TObject);
begin
lstDados.MultiSelect := true;
end;

procedure TfrmListBox.btnEditarClick(Sender: TObject);
var
i: Integer;
dados: String;
begin

FOR i := -1 + lstDados.Items.Count  downto 0 DO
BEGIN

IF (lstDados.Selected[i]) THEN
BEGIN
dados := InputBox('Modificando ' + lstDados.Items[i],'Novo valor : ' ,lstDados.Items[i]);
IF (Trim(dados) <> '') THEN
lstDados.Items[i] := dados;
END;

END;
end;

end.

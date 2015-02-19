unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMan;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel1: TPanel;
    editCod: TEdit;
    Label6: TLabel;
    XPManifest1: TXPManifest;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Edit6: TEdit;
    Label3: TLabel;
    Edit7: TEdit;
    Label4: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit12: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Edit13: TEdit;
    Label16: TLabel;
    Edit14: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Label13: TLabel;
    PInformacoes: TPanel;
    Label17: TLabel;
    Memo2: TMemo;
    Button2: TButton;
    btnAlterar: TButton;
    procedure Button1Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
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

unit uImc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditPeso: TEdit;
    EditAlt: TEdit;
    Button1: TButton;
    MemoImc: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
 peso, altura: real;
 imc: double;
begin
  peso := strtofloat(EditPeso.Text) ;
  altura :=  strtofloat(EditAlt.Text) ;
  imc := ((peso) / (altura * altura));

  MemoImc.Clear;
  if (imc < 18.5) then
    MemoImc.Lines.Add('Valores de IMC abaixo de 18,5: Adulto com Baixo Peso.')
  else if ((imc >= 18.5) and (imc < 25.0)) then
    MemoImc.Lines.Add('Valores de IMC maior ou igual a 18,5 e menor que 25,0: Adulto com Peso Adequado.')
  else if ((imc >= 25.0) and (imc < 30.0)) then
    MemoImc.Lines.Add('Valores de IMC maior ou igual a 25,0 e menor que 30,0: Adulto com sobrePeso')
    // Valores de IMC maior ou igual a 30,0
  else
    MemoImc.Lines.Add('Valores de IMC maior ou igual a 30,0: Adulto com Obesidade.');




end;

end.

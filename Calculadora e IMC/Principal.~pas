unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, XPMan, AppEvnts, StdCtrls;

type
  TForm1 = class(TForm)
    btnImc: TSpeedButton;
    btnLog: TSpeedButton;
    btnCalc: TSpeedButton;
    XPManifest1: TXPManifest;
    MemoLog: TMemo;
    ApplicationEvents1: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure btnImcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  strNome: String;

implementation

Uses  uImc, uCalc;
{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  strNome := InputBox('Inforações do Usuário', 'Nome',' ');
end;

procedure TForm1.btnCalcClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm3, Form3);
    Form3.showmodal;
  finally
    Form3.free;
  end;

end;

procedure TForm1.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  if E is EConvertError then
     ShowMessage('Erro de conversão de dados.');
  if E is EZeroDivide then
     ShowMessage('Divisão por Zero Não Permitida.');

end;

procedure TForm1.btnImcClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm2, Form2);
    Form2.showmodal;
  finally
    Form2.free;
  end;

end;

end.

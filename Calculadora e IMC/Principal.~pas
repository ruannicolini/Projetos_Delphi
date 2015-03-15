unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, XPMan, AppEvnts, StdCtrls;

type
  TForm1 = class(TForm)
    btnImc: TSpeedButton;
    btnCalc: TSpeedButton;
    XPManifest1: TXPManifest;
    MemoLog: TMemo;
    ApplicationEvents1: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure btnImcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  strNome: String;
  log: TextFile;

implementation

Uses  uImc, uCalc;
{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var nomeArq, caminho:string;
result :Boolean;
begin
  strNome := InputBox('Inforações do Usuário', 'Nome',' ');

  nomeArq := formatdatetime('dd',date()) +   //Dia
             formatdatetime('mm', date()) +  //mes
             formatdatetime('yy',date()) +   //Ano
             strNome +
             FormatDateTime('hh',now) +//hora
             FormatDateTime('nn',now) + //minuto
             FormatDateTime('ss',now);//segundo


  AssignFile(log, ExtractFilePath(Application.Exename) + 'log\' + nomeArq +'.txt');

  Rewrite(log); //abre o arquivo para escrita

  MemoLog.Lines.Add( DateTimeToStr(Now)+ ' ' + strNome);
  Writeln(log, 'Inicio: ' + DateTimeToStr(Now)+ ' ' + strNome);

end;

procedure TForm1.btnCalcClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm3, Form3);
    Writeln(log,
            FormatDateTime('hh-',now) +//hora
            FormatDateTime('nn-',now) + //minuto
            FormatDateTime('ss',now)//segundo
            + ' '+ strNome + ' Iniciou Calculadora');
    MemoLog.Lines.Add(FormatDateTime('hh-',now) +//hora
            FormatDateTime('nn-',now) + //minuto
            FormatDateTime('ss',now)//segundo
            + ' '+ strNome + ' Iniciou Calculadora');
    Form3.showmodal;

  finally
    MemoLog.Lines.Add(FormatDateTime('hh-',now) +//hora
            FormatDateTime('nn-',now) + //minuto
            FormatDateTime('ss',now)//segundo
            + ' '+ strNome + ' Finalizou Calculadora');
    Writeln(log,
            FormatDateTime('hh-',now) +//hora
            FormatDateTime('nn-',now) + //minuto
            FormatDateTime('ss',now)//segundo
            + ' '+ strNome + ' Finalizou Calculadora');
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

    MemoLog.Lines.Add(FormatDateTime('hh-',now) +//hora
            FormatDateTime('nn-',now) + //minuto
            FormatDateTime('ss',now)//segundo
            + ' '+ strNome + ' Iniciou Calculo IMC');
    Writeln(log,
            FormatDateTime('hh-',now) +//hora
            FormatDateTime('nn-',now) + //minuto
            FormatDateTime('ss',now)//segundo
            + ' '+ strNome + ' Iniciou Calculo IMC');
    Form2.showmodal;
  finally
    MemoLog.Lines.Add(FormatDateTime('hh-',now) +//hora
            FormatDateTime('nn-',now) + //minuto
            FormatDateTime('ss',now)//segundo
            + ' '+ strNome + ' Finalizou Calculo IMC');
    Writeln(log,
            FormatDateTime('hh-',now) +//hora
            FormatDateTime('nn-',now) + //minuto
            FormatDateTime('ss',now)//segundo
            + ' '+ strNome + ' Finalizou Calculo IMC');
    Form2.free;
  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MemoLog.Lines.Add('FIM: ' + DateTimeToStr(Now));
  Writeln(log, 'FIM: ' + DateTimeToStr(Now));
  Closefile(log); //fecha o arquivo de log;
end;

end.

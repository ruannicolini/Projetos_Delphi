program Aula1;

uses
  Forms,
  uGerente in 'uGerente.pas' {Form1},
  uPais in 'uPais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

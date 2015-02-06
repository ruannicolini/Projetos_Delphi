program Calculadora;

uses
  Forms,
  uCalculadora in 'uCalculadora.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormCalculadora, FormCalculadora);
  Application.Run;
end.

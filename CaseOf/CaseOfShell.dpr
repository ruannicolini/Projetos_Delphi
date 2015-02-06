program CaseOfShell;

uses
  Forms,
  untCase in 'untCase.pas' {frmCaseShell};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCaseShell, frmCaseShell);
  Application.Run;
end.

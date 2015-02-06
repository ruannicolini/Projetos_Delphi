program ListBox;

uses
  Forms,
  untPrincipal in 'untPrincipal.pas' {frmListBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmListBox, frmListBox);
  Application.Run;
end.

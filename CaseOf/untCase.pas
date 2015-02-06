unit untCase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, XPMan, ShellAPI;

type
  TfrmCaseShell = class(TForm)
    XPManifest1: TXPManifest;
    Label1: TLabel;
    cbSites: TComboBox;
    btnAbrir: TBitBtn;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure cbSitesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaseShell: TfrmCaseShell;

implementation

{$R *.dfm}

procedure TfrmCaseShell.FormCreate(Sender: TObject);
begin
WITH cbSites.Items DO
BEGIN
Add('Google');
Add('Youtube');
Add('UOL');
Add('Hotmail');
Add('Olhar Digital');
END;
cbSites.ItemIndex := 0;
end;

procedure TfrmCaseShell.btnAbrirClick(Sender: TObject);
begin
CASE cbSites.ItemIndex OF
0:
ShellExecute(Handle,'open','http://www.google.com.br/',nil,nil,SW_SHOWNORMAL);
1:
ShellExecute(Handle,'open','http://www.youtube.com.br/',nil,nil,SW_SHOWNORMAL);
2:
ShellExecute(Handle,'open','http://www.uol.com.br/',nil,nil,SW_SHOWNORMAL);
3:
ShellExecute(Handle,'open','http://www.hotmail.com.br/',nil,nil,SW_SHOWNORMAL);
4:
ShellExecute(Handle,'open','http://www.olhardigital.com.br/',nil,nil,SW_SHOWNORMAL);
END;


end;

procedure TfrmCaseShell.cbSitesChange(Sender: TObject);
begin
CASE cbSites.ItemIndex OF
0:
BEGIN
Label2.Caption := 'Site de pesquisas';

END;

1:
Label2.Caption := 'Site de vídeos';
2:
Label2.Caption := 'Site de notícias';
3:
Label2.Caption := 'Site de gerenciamento de email';
4:
Label2.Caption := 'Site de tecnologia';
END;

end;

end.

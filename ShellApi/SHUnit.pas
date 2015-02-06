unit SHUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, ShellAPI;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Ok: TButton;
    XPManifest1: TXPManifest;
    procedure FormCreate(Sender: TObject);
    procedure OkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ComboBox1.Items.Add('https://www.google.com.br');
ComboBox1.Items.Add('https://www.facebook.com.br');
end;

procedure TForm1.OkClick(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
      0:
        ShellExecute(Handle,'open',pChar(ComboBox1.Text),nil,nil,SW_SHOWNORMAL);
  end;
end;

end.

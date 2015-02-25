unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, XPMan,
  StdCtrls,
  jpeg,
  MPlayer,
  Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    XPManifest1: TXPManifest;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel9: TPanel;
    Panel10: TPanel;
    Image2: TImage;
    Panel11: TPanel;
    Image3: TImage;
    MediaPlayer1: TMediaPlayer;
    ProgressBar1: TProgressBar;
    OpenDialog1: TOpenDialog;
    ProgressBar2: TProgressBar;
    procedure Panel4DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Panel4DblClick(Sender: TObject);
begin
  MediaPlayer1.Close;
  if OpenDialog1.Execute then
    begin
      MediaPlayer1.FileName := OpenDialog1.FileName;
      MediaPlayer1.Open;
      MediaPlayer1.Play
    end


end;
end.

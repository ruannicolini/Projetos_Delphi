unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, XPMan,
  StdCtrls,
  jpeg,
  MPlayer,
  Buttons,
  ImgList,
  OleCtrls, SHDocVw;

  type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    XPManifest1: TXPManifest;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Image3: TImage;
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    MediaPlayer2: TMediaPlayer;
    Timer1: TTimer;
    ImageList1: TImageList;
    Image4: TImage;
    Panel1: TPanel;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    Panel5: TPanel;
    RichEdit1: TRichEdit;
    SpeedButton2: TSpeedButton;
    ProgressBar1: TProgressBar;
    StatusBar1: TStatusBar;
    ListBox1: TListBox;
    SpeedButton5: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure Panel4DblClick(Sender: TObject);
    procedure Panel10DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  MediaPlayer2.Close;
  if OpenDialog1.Execute then
    begin
      MediaPlayer1.FileName := OpenDialog1.FileName;
      
      MediaPlayer1.Open;
      StatusBar1.Panels.Items[0].Text := 'AGORA:   ' + ExtractFileName(MediaPlayer1.FileName);
      ProgressBar1.Min := 0;

      ProgressBar1.Max := MediaPlayer1.Length;
      ProgressBar1.Position := MediaPlayer1.Position;
      Timer1.Enabled := true;
    end


end;
procedure TForm1.Panel10DblClick(Sender: TObject);
begin
  MediaPlayer1.Close;
  MediaPlayer2.Close;
  if OpenDialog1.Execute then
    begin
      MediaPlayer2.Display := Panel10;
      MediaPlayer2.DisplayRect := Panel10.ClientRect;
      MediaPlayer2.FileName := OpenDialog1.FileName;
      
      MediaPlayer2.Open;
    end

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if Progressbar1.Max <> 0 then
    Progressbar1.Position := mediaplayer1.Position;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TForm1.Panel10Click(Sender: TObject);
begin
  {WebBrowser1.Navigate(extractFilepath(application.exename) + 'index.html'); }
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  MediaPlayer2.DisplayRect := Panel10.ClientRect;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  i:integer;
  str:String;
begin
      RichEdit1.Lines.LoadFromFile(extractFilepath(application.exename) + 'teste.txt');
      StatusBar1.Panels.Items[0].Text := 'Arquivo test.txt';

      for i := 0 to RichEdit1.Lines.Count -1 do
      begin
        str := RichEdit1.Lines[i];
        ListBox1.Items.Add(ExtractFileName(str));
      end;


end;

end.



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
    btnAdd: TSpeedButton;
    ProgressBar1: TProgressBar;
    StatusBar1: TStatusBar;
    ListBox1: TListBox;
    btnTocar: TSpeedButton;
    btnMoveCima: TSpeedButton;
    btnMoveBaixo: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    btnRemove: TSpeedButton;
    btnPlayPause: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Panel4DblClick(Sender: TObject);
    procedure Panel10DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTocarClick(Sender: TObject);
    procedure btnMoveCimaClick(Sender: TObject);
    procedure btnMoveBaixoClick(Sender: TObject);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1Enter(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnPlayPauseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  Form1: TForm1;
  IndPlayList: Integer;
  posicaoPlayer : Integer;
  posicaoAux : Integer;
  status : Boolean;
  arquivo: TextFile;

implementation

{$R *.dfm}

procedure TForm1.Panel4DblClick(Sender: TObject);
begin
  btnTocar.Caption := 'Tocar';
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
      Timer1.Enabled := true;
    end

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  i:Integer;
begin
  if Progressbar1.Max <> 0 then
      Progressbar1.Position := mediaplayer1.Position;

  if (btnTocar.Caption = 'Parar Play List') then
    for i := 0 to ListBox1.Count -1 do
    begin
      if ((ExtractFileName(RichEdit1.Lines[i]) = ListBox1.Items[IndPlayList])and(status = true)) then
      begin
        MediaPlayer1.FileName := RichEdit1.Lines[i];
        MediaPlayer1.Open;
        StatusBar1.Panels.Items[0].Text := 'AGORA:   ' + ExtractFileName(MediaPlayer1.FileName);
        ProgressBar1.Min := 0;

        MediaPlayer1.Position := posicaoPlayer;
        posicaoPlayer := 0;

        ProgressBar1.Max := MediaPlayer1.Length;
        ProgressBar1.Position := MediaPlayer1.Position;
        status := false;
        Timer1.Enabled := true;
        MediaPlayer1.Play;
      end
    end;

  if (Progressbar1.Position = Progressbar1.Max) then
    begin
      if (btnTocar.Caption = 'Parar Play List') then
        begin
          if(IndPlayList = (ListBox1.Count-1)) then
            begin
              IndPlayList := 0;
              status := true;
              ListBox1.Selected[IndPlayList] := true
            end
          else
            begin
              IndPlayList := IndPlayList +1;
              status := true;
              ListBox1.Selected[IndPlayList] := true
            end
        end
    end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
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


      if (fileexists(extractFilepath(application.exename) + 'IndPlayList.txt')) then
      begin
        AssignFile(arquivo, (extractFilepath(application.exename) + 'IndPlayList.txt') );
        reset(arquivo);
        While Not (EOF(arquivo)) Do     //Enquanto não for o fim do arquivo faça
        begin
            Readln(arquivo, str);
            for i := 0 to ListBox1.Items.Count-1 do
            begin
              if (ListBox1.Items[i] = str) then
                IndPlayList := i;
            end;
            
            Readln(arquivo, posicaoPlayer);
        end;
        {ListBox1.Selected[IndPlayList] := true; }
        CloseFile(Arquivo);
        status := false;
      end
        else
        begin
          IndPlayList := 0;
          posicaoPlayer := 0;
        end;


end;

procedure TForm1.btnTocarClick(Sender: TObject);
begin
  if (btnTocar.Caption = 'Parar Play List') then
    btnTocar.Caption := 'Tocar'
  else
    begin
    btnTocar.Caption := 'Parar Play List';
    status := true;
    Timer1.Enabled := true;
  end

end;

procedure TForm1.btnMoveCimaClick(Sender: TObject);
var
posicao: integer;
strAux: String;
i: integer;
begin
  posicao := ListBox1.ItemIndex;
  strAux := ListBox1.Items[posicao];

  listbox1.Items.Move(ListBox1.ItemIndex,ListBox1.ItemIndex - 1);
  RichEdit1.lines.Move(ListBox1.ItemIndex,ListBox1.ItemIndex - 1);
  if posicao <= 0 then
    posicao := ListBox1.Items.Count;
  ListBox1.ItemIndex := posicao - 1;

  for i := 0 to ListBox1.Items.Count-1 do
  begin
    if (ListBox1.Items[i] = strAux) then
      IndPlayList := i;
  end;
end;

procedure TForm1.btnMoveBaixoClick(Sender: TObject);
var
posicao: integer;
strAux: String;
i: integer;
begin
  posicao := ListBox1.ItemIndex;
  strAux := ListBox1.Items[posicao];

  if posicao >= ListBox1.Items.Count -1 then begin
  listbox1.Items.Move(ListBox1.ItemIndex,0);
  posicao := -1;
  end else
  listbox1.Items.Move(ListBox1.ItemIndex,ListBox1.ItemIndex + 1);
  ListBox1.ItemIndex := posicao + 1;

  for i := 0 to ListBox1.Items.Count-1 do
  begin
    if (ListBox1.Items[i] = strAux) then
      IndPlayList := i;
  end;
  
end;

procedure TForm1.ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  DropIndex: Integer;
begin
  DropIndex := TListBox(Sender).ItemAtPos(Point(X,Y),False);
  with TListBox(Source) do
  begin
    TListBox(Sender).Items.Insert(DropIndex, Items[ItemIndex]);
    Items.Delete(ItemIndex);
  end;
end;

procedure TForm1.ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  DropIndex: Integer;
  TempStr: string;
begin
  with TListBox(Sender) do
  begin
    DropIndex := ItemAtPos(Point(X,Y), True);
    if (DropIndex > -1) and (DropIndex <> ItemIndex) then
    begin
      TempStr := Items[DropIndex];
      Items[DropIndex] := Items[ItemIndex];
      Items[ItemIndex] := TempStr;
      ItemIndex := DropIndex;
    end;
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
if (btnTocar.Caption = 'Parar Play List') then
  begin
    if(IndPlayList = (ListBox1.Count-1)) then
    begin
      IndPlayList := 0;
      status := true
    end
    else
      begin
        IndPlayList := IndPlayList +1;
        status := true
      end
  end

end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
    if(IndPlayList = 0) then
    begin
      IndPlayList := ListBox1.Count-1;
      status := true
    end
    else
      begin
        IndPlayList := IndPlayList -1;
        status := true
      end

end;

procedure TForm1.btnAddClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    begin
      RichEdit1.Lines.Add(OpenDialog1.FileName);
      RichEdit1.Lines.SaveToFile(extractFilepath(application.exename) + 'teste.txt');
      ListBox1.Items.Add(ExtractFileName(OpenDialog1.FileName))

    end
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
  iListB:integer;
  srtArq: string;
begin
  if (fileexists(extractFilepath(application.exename) + 'IndPlayList.txt')) then
  begin
      {DeleteFile(extractFilepath(application.exename) + 'IndPlayList.txt');}
      Windows.DeleteFile(PChar(extractFilepath(application.exename) + 'IndPlayList.txt'));
  end;


  if(MediaPlayer1.Position <> ProgressBar1.Max)then
  begin
      
      AssignFile(arquivo, (extractFilepath(application.exename) + 'IndPlayList.txt') );
      {showmessage(extractFilepath(application.exename) + 'IndPlayList.txt');}
      
      rewrite(Arquivo);
      
      
      {WriteLn(arquivo, IntToStr(IndPlayList));}
      WriteLn(arquivo, ListBox1.Items[IndPlayList]);
      WriteLn(arquivo, MediaPlayer1.Position);
      CloseFile(Arquivo);
  end;

  {OBS: Melhorar Isso aqui, ta tenso!}
  AssignFile(arquivo, (extractFilepath(application.exename) + 'test.txt') );
  Rewrite(arquivo);
  for iListB := 0 to ListBox1.Items.Count-1 do
  begin
    for i := 0 to RichEdit1.Lines.Count-1 do
    begin
      if ExtractFileName(RichEdit1.Lines[i]) = ListBox1.Items[iListB] then
          WriteLn(arquivo, RichEdit1.Lines[i]);
    end;
  end;
  CloseFile(Arquivo);

  RichEdit1.Lines.Clear;
  AssignFile(arquivo, (extractFilepath(application.exename) + 'test.txt') );
  reset(arquivo);
  While Not (EOF(arquivo)) Do     //Enquanto não for o fim do arquivo faça
  begin
        Readln(arquivo, srtArq);
        RichEdit1.Lines.Add(srtArq);
  end;
  CloseFile(Arquivo);
  RichEdit1.Lines.SaveToFile(extractFilepath(application.exename) + 'teste.txt');


end;

procedure TForm1.ListBox1Enter(Sender: TObject);
begin
  btnMoveCima.Enabled := true;
  btnMoveBaixo.Enabled := true;
  btnremove.Enabled := true;
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
begin
  ListBox1.DeleteSelected;
end;

procedure TForm1.btnPlayPauseClick(Sender: TObject);
begin
  if (btnPlayPause.Caption = 'Play') then
  begin
        MediaPlayer1.Play;
        btnPlayPause.Caption := 'Pause';
  end else
    if(btnPlayPause.Caption = 'Pause') then
      begin
        MediaPlayer1.Pause;
        btnPlayPause.Caption := 'Play';
      end;

end;

end.



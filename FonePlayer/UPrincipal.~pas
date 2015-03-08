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
  OleCtrls, SHDocVw,
  ToolWin;

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
    btnStop: TSpeedButton;
    chkRA: TCheckBox;
    btnPause: TSpeedButton;
    Panel1: TPanel;
    procedure Panel4DblClick(Sender: TObject);
    procedure Panel10DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
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
    procedure btnStopClick(Sender: TObject);
    procedure Panel3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
  if (ListBox1.Items.Count -1) > 0 then
      btnTocar.Enabled := true;

  if Progressbar1.Max <> 0 then
      Progressbar1.Position := mediaplayer1.Position;

  if ((btnTocar.Caption = 'Parar Play List') and(status = true)) then
    for i := 0 to ListBox1.Count -1 do
    begin
      if ((ExtractFileName(RichEdit1.Lines[i]) = ListBox1.Items[IndPlayList])) then
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
      end;
      status := false;
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
              ListBox1.Selected[IndPlayList] := true;
            end;
            if(chkRA.Checked = true) then
            begin
              IndPlayList := Random(ListBox1.Items.Count -1);
            end;
        end
    end;

end;

procedure TForm1.btnPauseClick(Sender: TObject);
begin
  {PageControl1.ActivePageIndex := 0; }
  MediaPlayer1.Pause;
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
      if (fileexists(extractFilepath(application.exename) + 'test.txt')) then
      begin
        RichEdit1.Lines.LoadFromFile(extractFilepath(application.exename) + 'test.txt');
        StatusBar1.Panels.Items[0].Text := 'Arquivo test.txt';
        btnTocar.Enabled := true;

        for i := 0 to RichEdit1.Lines.Count -1 do
        begin
          str := RichEdit1.Lines[i];
          ListBox1.Items.Add(ExtractFileName(str));
        end;
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
  begin
    btnTocar.Caption := 'Tocar';
    chkRA.Visible := false;
    MediaPlayer1.Stop;
  end else
    begin
    btnTocar.Caption := 'Parar Play List';
    status := true;
    Timer1.Enabled := true;
    chkRA.Visible := true;
    chkRA.Checked:= false;
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
      end;
      if(chkRA.Checked = true) then
      begin
          IndPlayList := Random(100) mod (ListBox1.Items.Count-1);
      end;
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
      end;
     if(chkRA.Checked = true) then
      begin
          IndPlayList := Random(100) mod (ListBox1.Items.Count-1);
      end;

end;

procedure TForm1.btnAddClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    begin
      RichEdit1.Lines.Add(OpenDialog1.FileName);
      RichEdit1.Lines.SaveToFile(extractFilepath(application.exename) + 'test.txt');
      ListBox1.Items.Add(ExtractFileName(OpenDialog1.FileName));
      btnTocar.Enabled := true

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
      Windows.DeleteFile(PChar(extractFilepath(application.exename) + 'IndPlayList.txt'));
  end;


  if(MediaPlayer1.Position <> ProgressBar1.Max)then
  begin
      if (ListBox1.Items.Count -1) > 0 then
      begin
        AssignFile(arquivo, (extractFilepath(application.exename) + 'IndPlayList.txt') );
        rewrite(Arquivo);

        WriteLn(arquivo, ListBox1.Items[IndPlayList]);
        WriteLn(arquivo, MediaPlayer1.Position);
        CloseFile(Arquivo);


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
          RichEdit1.Lines.SaveToFile(extractFilepath(application.exename) + 'test.txt');

      end;
  end;

end;

procedure TForm1.ListBox1Enter(Sender: TObject);
begin
  btnMoveCima.Enabled := true;
  btnMoveBaixo.Enabled := true;
  btnremove.Enabled := true;
  btnRemove.Enabled := true;
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
var
  i:integer;
begin
  for i := 0 to RichEdit1.Lines.Count -1 do
    begin
      if ((ExtractFileName(RichEdit1.Lines[i]) = ListBox1.Items[ListBox1.ItemIndex])) then
      begin
        RichEdit1.Lines.Delete(i);
      end;
      status := false;
    end;
  ListBox1.DeleteSelected;

end;

procedure TForm1.btnPlayPauseClick(Sender: TObject);
begin
  MediaPlayer1.Play;
{
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
}

end;

procedure TForm1.btnStopClick(Sender: TObject);
begin
  MediaPlayer1.Stop;  
end;

procedure TForm1.Panel3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.Visible := false;
end;

procedure TForm1.Panel4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  panel3.Visible := true;
end;

procedure TForm1.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  panel3.Visible := false;
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  panel3.Visible := false;
end;

procedure TForm1.Panel7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  panel3.Visible := false;
end;

end.



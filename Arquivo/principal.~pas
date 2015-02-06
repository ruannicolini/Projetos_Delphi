unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Memo1: TMemo;
    XPManifest1: TXPManifest;
    Edit1: TEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var
arquivo: TextFile;
linhasArq:String;
begin
  if (OpenDialog1.Execute) then // .Execute abre a janela pra pegar o caminho do arquivo
  begin
    if(OpenDialog1.FileName <> '') then //Se o nome do arquivo for diferente de ''
    begin
      Edit1.Text := OpenDialog1.FileName;
      AssignFile(arquivo, OpenDialog1.FileName);
      reset(arquivo);
      While Not (EOF(arquivo)) Do     //Enquanto não for o fim do arquivo faça
      begin
        Readln(arquivo, linhasArq);
        Memo1.Lines.Add(linhasArq);  
      end;
      CloseFile(Arquivo);
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  arq:TextFile;
  i: Integer;
begin
  if(SaveDialog1.Execute)then
  begin
    if(Trim(SaveDialog1.FileName) <> '')then
    begin
        i := 0;
        Edit1.Text := SaveDialog1.FileName;
        AssignFile(arq, SaveDialog1.FileName);


       //Se o arquivo existir, salva no final, se não, cria o arquivo.
        if (FileExists(SaveDialog1.FileName)) then
          Append(Arq)
        else
          Rewrite(Arq);

        WHILE NOT (i = Memo1.Lines.Count) DO
        BEGIN
            WriteLn(arq, Memo1.Lines.Strings[i]);
            i := i + 1;
        END;
        closeFile(arq);


    end;
  end;
end;

end.

unit uCalc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    PanelBtn: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    EditVisor: TEdit;
    PanelOp: TPanel;
    procedure click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  num1, num2: Integer;
  operacao: String;
  controle: Boolean;

implementation

{$R *.dfm}

procedure TForm3.click(Sender: TObject);
begin
   if TButton(sender).Caption = '0' then EditVisor.Text := EditVisor.Text + ('0');
   if TButton(sender).Caption = '1' then EditVisor.Text := EditVisor.Text + ('1');
   if TButton(sender).Caption = '2' then EditVisor.Text := EditVisor.Text + ('2');
   if TButton(sender).Caption = '3' then EditVisor.Text := EditVisor.Text + ('3');
   if TButton(sender).Caption = '4' then EditVisor.Text := EditVisor.Text + ('4');
   if TButton(sender).Caption = '5' then EditVisor.Text := EditVisor.Text + ('5');
   if TButton(sender).Caption = '6' then EditVisor.Text := EditVisor.Text + ('6');
   if TButton(sender).Caption = '7' then EditVisor.Text := EditVisor.Text + ('7');
   if TButton(sender).Caption = '8' then EditVisor.Text := EditVisor.Text + ('8');
   if TButton(sender).Caption = '9' then EditVisor.Text := EditVisor.Text + ('9');
   if TButton(sender).Caption = 'CE' then showmessage('CE');
   if TButton(sender).Caption = '=' then showmessage('=');
   if TButton(sender).Caption = '+' then showmessage('+');
   if TButton(sender).Caption = '-' then showmessage('-');
   if TButton(sender).Caption = '*' then showmessage('*');
   if TButton(sender).Caption = '/' then showmessage('/');
end;

procedure TForm3.FormShow(Sender: TObject);
var
  h {posição horizontal}, v {posição vertical}, i, j: integer;
  b : tbutton;
  aux : integer;
begin

    h := 5;
    v :=5;
    j := 1;
    aux := 7;

    for i := 0 to 11 do
    begin
        b := tbutton.create(form3.PanelBtn);
        b.Parent := form3.PanelBtn;
        b.Top  := v;
        b.Left := h;

        if(9-i = 0)then
          begin
            b.Caption := 'CE';
            b.Name := 'btnCE'
          end
        else if(9-i = -1)then
          begin
            b.Caption := '0';
            b.Name := 'btnZero';
          end
        else if(9-i = -2)then
          begin
            b.Caption := '=';
            b.Name := 'btnIgual';
          end
        else
          begin
            b.Caption := IntToStr(i+aux);
            //b.Name := IntToStr(i+aux);
          end;

        
        b.OnClick := click;

        b.Height := 23;
        b.Width := 32;

        h := b.Width + h + 5;
        inc(j);

        if j = 4 then
        begin
            h := 5;
            v := v + b.Height + 5;
            j := 1;
        end;

        if(i = 2)then
        begin
          aux := 1;
        end else
          begin
            if (i = 5) then
            begin
              aux := -5;
            end;
          end;
     end;

    //Botoes de Operações
    h := 5;
    v :=5;
    j := 1;
    for i := 0 to 3 do
    begin
        b := tbutton.create(form3.PanelOp);
        b.Parent := form3.PanelOp;
        b.Top  := v;
        b.Left := h;

        case i of
          0: begin
            b.Caption := '/';
            b.Name := 'btnDiv';
            end;
          1: begin
            b.Caption := '*';
            b.Name := 'btnMult';
            end;
          2: begin
            b.Caption := '-';
            b.Name := 'btnSub';
            end;
          3: begin
          b.Caption := '+';
          b.Name := 'btnAdic';
          end;
        end;


        b.OnClick := click;

        b.Height := 23;
        b.Width := 32;

        h := b.Width + h + 5;
        inc(j);

//
        h := 5;
        v := v + b.Height + 5;
        j := 1;
     end;

end;

end.

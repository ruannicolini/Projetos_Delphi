unit uCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormCalculadora = class(TForm)
    edtCalc: TEdit;
    btn7: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnCE: TButton;
    btn0: TButton;
    btnIgual: TButton;
    ButtonAdicao: TButton;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnCEClick(Sender: TObject);
    procedure ButtonAdicaoClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function addNum(num:Integer): Integer;

  end;

var
  FormCalculadora: TFormCalculadora;
  resultado : Real;
  num1 : Integer;
  num2 : Integer;
  sinal : Integer;
  

implementation

{$R *.dfm}

function TFormCalculadora.addNum(num:Integer): Integer;
  begin
    edtCalc.Text := edtCalc.Text + IntToStr(num);
  end;

procedure TFormCalculadora.Button3Click(Sender: TObject);
begin
  addNum(9);
end;

procedure TFormCalculadora.Button2Click(Sender: TObject);
begin
  addNum(8);
end;

procedure TFormCalculadora.btn7Click(Sender: TObject);
begin
  addNum(7);
end;

procedure TFormCalculadora.Button4Click(Sender: TObject);
begin
  addNum(4);
end;

procedure TFormCalculadora.Button5Click(Sender: TObject);
begin
  addNum(5);
end;

procedure TFormCalculadora.Button6Click(Sender: TObject);
begin
  addNum(6);
end;

procedure TFormCalculadora.btn1Click(Sender: TObject);
begin
  addNum(1);
end;

procedure TFormCalculadora.btn2Click(Sender: TObject);
begin
  addNum(2);
end;

procedure TFormCalculadora.btn3Click(Sender: TObject);
begin
  addNum(3);
end;

procedure TFormCalculadora.btn0Click(Sender: TObject);
begin
  addNum(0);
end;

procedure TFormCalculadora.btnCEClick(Sender: TObject);
begin
  edtCalc.Clear;
  num1 := 0;
  num2 := 0;
  resultado := 0.0;
  sinal := 0;
end;

procedure TFormCalculadora.ButtonAdicaoClick(Sender: TObject);
begin
  sinal := 1;
  if (Trim(edtCalc.Text) = '') then
    begin
      ShowMessage('Digite Algo no campo');
    end
  else begin
    btnIgual.Enabled := true;
    num1 := StrToInt(edtCalc.Text);
    edtCalc.Clear;
  end;

end;

procedure TFormCalculadora.btnSubtracaoClick(Sender: TObject);
begin
  sinal := 2;
  if (Trim(edtCalc.Text) = '') then
    begin
      ShowMessage('Digite Algo no campo');
    end
  else begin
    btnIgual.Enabled := true;
    num1 := StrToInt(edtCalc.Text);
    edtCalc.Clear;
  end;
end;

procedure TFormCalculadora.btnMultiplicacaoClick(Sender: TObject);
begin
  sinal := 3;
  if (Trim(edtCalc.Text) = '') then
    begin
      ShowMessage('Digite Algo no campo');
    end
  else begin
    btnIgual.Enabled := true;
    num1 := StrToInt(edtCalc.Text);
    edtCalc.Clear;
  end;
end;

procedure TFormCalculadora.btnDivisaoClick(Sender: TObject);
begin
  sinal := 4;
  if (Trim(edtCalc.Text) = '') then
    begin
      ShowMessage('Digite Algo no campo');
    end
  else begin
    btnIgual.Enabled := true;
    num1 := StrToInt(edtCalc.Text);
    edtCalc.Clear;
  end;
end;

procedure TFormCalculadora.btnIgualClick(Sender: TObject);
begin
  num2 := StrToInt(edtCalc.Text);
  case sinal of
    1:  resultado := num1 + num2;
    2:  resultado := num1 - num2;
    3:  resultado := num1 * num2;
    4:  resultado := num1 div num2;
  end;
  edtCalc.Text := FloatToStr(resultado);
  btnIgual.Enabled := false;
end;

end.

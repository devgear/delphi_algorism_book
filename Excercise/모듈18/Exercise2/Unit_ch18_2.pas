unit Unit_ch18_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  n = 20;
type
  array_n_elements = array[1..n] of integer;

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
     procedure SetArrayRange(var ch1, ch2:integer);
     procedure FillArray(var a:array_n_elements; rMin, rMAX:integer);
     procedure OutPutArray(a:array_n_elements; n:integer);
     procedure OutPutArray2(a:array_n_elements; n:integer);

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 chB, chE: integer;
 A:array_n_elements;
begin
  SetArrayRange(chB, chE); //배열의 범위 chB 와 chE를 입력한다
  FillArray(a, chB, chE); // chB와 chE 사이 (chB, chE를 //포함하여)의 무작위 값으로 배열 A를 채운다
  OutputArray(a, n);      // 배열 A를 첫 번째 Tmemo1에 표시한다
  OutputArray2(a, n);    //배열 A를 두 번째 Tmemo2에 표시한다
end;

procedure TForm1.FillArray(var a: array_n_elements; rMin, rMAX: integer);
var
  i:integer;
begin
  randomize;
  for I := 1 to n do
  begin
      a[i] := random(rMax - RMin + 1) + rMin;
  end;
end;

procedure TForm1.OutPutArray(a: array_n_elements; n: integer);
var
  i:integer;
begin
  Memo1.Lines.Clear;
  for I := 0 to n-1  do
      Memo1.Lines.Append(IntToStr(a[i+1]));
end;

procedure TForm1.SetArrayRange(var ch1, ch2: integer);
begin
  ch1 := StrToInt(Edit1.text);
  ch2 := StrToInt(Edit2.text);
end;


procedure TForm1.OutPutArray2(a: array_n_elements; n: integer);
var
  i:integer;
begin
  Memo2.Lines.Clear;
  for I := 0 to n - 1 do
      if (StrToInt(Memo1.Lines[i]) <= 0) then
          Memo2.Lines.Append(Memo1.Lines[i])
      else
          Memo2.Lines.InSert(0, Memo1.Lines[i]);
end;

end.

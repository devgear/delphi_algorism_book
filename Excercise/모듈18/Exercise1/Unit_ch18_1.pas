unit Unit_ch18_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  n = 20;
type
  array_n_elements = array[1..n] of integer;

  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo2: TMemo;
    Button1: TButton;
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
     procedure SortArr(var a:array_n_elements);
     procedure Change(var one,two:integer);
     function NumMax(a:array_n_elements; start:integer):integer;
     function NumMin(a:array_n_elements; start:integer):integer;
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
 A: Array_n_elements;
begin
  SetArrayRange(chB, chE); //배열의 범위 chB 와 chE를 입력한다
  FillArray(a, chB, chE);  // chB와 chE 사이 (chB, chE를 //포함하여)의 무작위 값으로 배열 A를 채운다
  OutputArray(a, n);      // 배열 A를 첫 번째 Tmemo1에 표시한다
  SortArr(a);            //배열 A를 오름차순으로 소팅(Sorting) 한다
  OutputArray2(a, n);
end;

procedure TForm1.Change(var one, two: integer);
var
   temp: integer;
begin
   temp:=one;
   one:=two;
   two:=temp;
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

function TForm1.NumMax(a: array_n_elements; start: integer): integer;
var
i, m: integer;
begin
  m:=start;
  for i:=m+1 to n do
      if a[i] > a[m] then
         m:=i;
  NumMax := m;
 end;

function TForm1.NumMin(a: array_n_elements; start: integer): integer;
var
i, m: integer;
begin
  m:=start;
  for i:=m+1 to n do
      if a[i] <a[m] then
         m:=i;
  NumMin := m;
end;

procedure TForm1.OutPutArray(a: array_n_elements; n: integer);
var
  i:integer;
begin
  Memo1.Lines.Clear;
  for I := 0 to n-1  do
      Memo1.Lines.Append(IntToStr(a[i+1]));
end;

procedure TForm1.OutPutArray2(a: Array_n_elements; n: integer);
var
  i:integer;
begin
  Memo2.Lines.Clear;
  for i := 0 to n -1  do
      Memo2.Lines.Append(IntToStr(a[i+1]));
end;

procedure TForm1.SetArrayRange(var ch1, ch2: integer);
begin
  ch1 := StrToInt(Edit1.text);
  ch2 := StrToint(Edit2.text);
end;

procedure TForm1.SortArr(var a: array_n_elements);
var
i: integer;
begin
  for i:=1 to  n-1  do                // 배열의 전체 줄 반복
      change(a[i], a[NumMax(a, i)]);//현재 위치에서 배열의 마지막까지의 요소 중에 가장 작은 요소를 현재 요소와 맞바꾼다.
end;

end.

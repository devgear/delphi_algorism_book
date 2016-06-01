unit Unit_ch21_1pas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

Const
  n=3;
  m=6;

Type
  array_1=array[1..n] of integer;
  array_2=array[1..m] of array_1;
  TMyArray = array[1..n, 1..m] of integer;

  arrayr_1=array[1..n] of real;
  arrayr_2=array[1..m] of arrayr_1;

  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  C: array_2;
  cr:arrayr_2;
  MyArray : TMyArray;
  Total:integer;
  Min, Max:integer;
  Sum__Column:array [1..m] of integer;

procedure FillColumn(var col: array_1);
procedure FillArray(var arr: array_2);
procedure FillColumn2(var col: arrayr_1);
procedure FillArray2(var arr: arrayr_2);
procedure FillMyArray(var MyArray:TMyArray);
procedure TableOutput(arr: array_2);
procedure TableOutput2(arr: arrayr_2);
procedure TablemyOutput(myarray: tmyarray);
procedure Sum(var MyArray:TMyArray);


implementation
procedure FillColumn(var col: array_1);
var
j: integer;
begin
  for j:=1 to n do             //j가 1 에서 시작, N이 될 때까지 반복
     col[j]:=Random(21)- 10; // j 번째 배열 요소에는 -10
                             //에서 10까지(-10과 10도 포함)의 숫자가 무작위로 들어간다
end;
procedure FillColumn2(var col: arrayr_1);
var
j: integer;
k1,k2 :real;
f : real;
s:string;
begin
  k2 := strtofloat(Form1.Edit1.text);
  k1 := StrtoFloat(Form1.Edit2.text);

  for j:=1 to n do
  begin
     f := random;
     f := 0.1 + f*0.8;
//     s := formatfloat('#,##0', f);
     col[j]:= f;             // j 번째 배열 요소에는 -10
  end;                           //에서 10까지(-10과 10도 포함)의 숫자가 무작위로 들어간다
end;
procedure FillMyArray(var MyArray:TMyArray);
var
i,j: integer;
k1,k2:integer;
begin
  k1 := StrToint(form1.Edit1.text);
  k2 := StrToInt(form1.Edit2.text);

  for I := 1 to n do
    for j:=1 to m do             //j가 1 에서 시작, N이 될 때까지 반복
        MyArray[i,j] := Random((k2 - k1) + 1) + k1;
end;
procedure Sum(var MyArray:TMyArray);
var
i,j: integer;
col_tot:integer;
begin
  total := 0;
  Min := StrToInt(Form1.Edit1.texT);
  Max := 0;
  for I := 1 to m do
  begin
    col_tot := 0;
    for j:=1 to n do
    begin                      //j가 1 에서 시작, N이 될 때까지 반복
      total := total + MyArray[j,i];
      if Min > MyArray[j,i] then
         Min := MyArray[j,i];

      if Max < MyArray[j,i] then
         Max := MyArray[j,i];
      col_tot := col_tot + MyArray[j,i];
    end;
     sum__column[i] := col_tot;
  end;
end;

procedure TableOutput(arr: array_2);
var
i, j: integer;
begin
   Form1.StringGrid1.FixedCols:=0; //고정열의 개수
   Form1.StringGrid1.FixedRows:=0; //고정행의 개수
   Form1.StringGrid1.ColCount:=m; //열의 개수
   Form1.StringGrid1.RowCount:=n; //행이 개수
   for i:=1 to m do
     for j:=1 to n do
       Form1.StringGrid1.Cells[i-1, j-1]:=IntToStr(arr[i][j]);
end;
procedure TableOutput2(arr: arrayr_2);
var
i, j: integer;
tot:real;
begin
   Form1.StringGrid1.FixedCols:=0; //고정열의 개수
   Form1.StringGrid1.FixedRows:=0; //고정행의 개수
   Form1.StringGrid1.ColCount:=m+1; //열의 개수
   Form1.StringGrid1.RowCount:=n; //행이 개수
   for i:=1 to m do
     for j:=1 to n do
     begin
       Form1.StringGrid1.Cells[i-1, j-1]:=floatToStr(arr[i][j]);
     end;
  for I := 0 to n-1 do
   begin
     for j := 0 to m - 1 do
     begin
        tot := tot + strtofloat((Form1.StringGrid1.Cells[j,i]));
     end;
     Form1.StringGrid1.Cells[j,i] := floattostr(tot);
     tot := 0;
   end;
end;
procedure TablemyOutput(Myarray: TMyarray);
var
i, j: integer;
begin
   Form1.StringGrid1.FixedCols:=0; //고정열의 개수
   Form1.StringGrid1.FixedRows:=0; //고정행의 개수
   Form1.StringGrid1.ColCount:=m; //열의 개수
   Form1.StringGrid1.RowCount:=n; //행이 개수
   for i:=1 to m do
     for j:=1 to n do
       Form1.StringGrid1.Cells[i-1, j-1]:=IntToStr(myarray[j,i]);
end;

procedure FillArray(var arr: array_2);
var i: integer;
begin
Randomize;
for i:=1 to m do        // i가 1 에서 시작, M이 될 때까지 반복
    FillColumn(arr[i]); // i번째 열배열을 채워 넣는다
end;
procedure FillArray2(var arr: arrayr_2);
var i: integer;
begin
Randomize;
for i:=1 to m do // i가 1 에서 시작, M이 될 때까지 반복
    FillColumn2(arr[i]); // i번째 열배열을 채워 넣는다
end;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   FillArray(c);
   TableOutPut(c);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:integer;
begin
   FillmyArray(MyArray);
   TableMyoutput(myarray);
   Sum(MyArray);
   memo1.Lines.Clear;
   memo1.Lines.Add('배열에 있는 모든 요소들의 합 =' + IntTostr(Total));
   memo1.Lines.Add('최대값 요소 = ' + IntToStr(Max));
   memo1.Lines.Add('최소값 요소 = ' + IntToStr(Min));
   for I := 1 to m do
       memo1.Lines.Add(intTosTR(I)+ '번째 열에 있는 요소들의 합 = ' +  inttostr(sum__column[i]));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   FillArray2(cr);
   TableOutPut2(cr);
end;

end.

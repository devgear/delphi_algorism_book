unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmArr = class(TForm)
    btnGo: TButton;
    memIsh: TMemo;
    edtBegin: TEdit;
    edtEnd: TEdit;
    procedure btnGoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArr: TfrmArr;

implementation

{$R *.dfm}

const
  n = 20;

type
  Array_n_elements = array[1..n] of Integer;

function NumMin(a: Array_n_elements; start: Integer): Integer;
var
  i, m: Integer;
begin
  m := start;
  for i := m+1 to n do
    if a[i] < a[m] then
      m := i;
  NumMin := m;
end;

procedure Change(var one, two: Integer);
var
  temp: Integer;
begin
  temp := one;
  one := two;
  two := temp;
end;

procedure SortArr(var a: Array_n_elements);
var
  i: Integer;
begin
  for i := 1 to n-1 do
    Change(a[i], a[NumMin(a, i)]);
end;

procedure Input(var chB, chE: Integer);
begin
  chB := StrToInt(frmArr.edtBegin.Text);
  chE := StrToInt(frmArr.edtEnd.Text);
end;

procedure FillArr(var a: Array_n_elements; rMin, rMax: Integer);
var
  i: Integer;
begin
  Randomize;
  for i := 1 to n do
    a[i] := Random(rMax-rMin+1) + rMin;
end;

procedure OutputArray(a: Array_n_elements; n: Integer);
var
  i: Integer;
begin
  frmArr.memIsh.Lines.Clear;
  for i := 0 to n-1 do
    frmArr.memIsh.Lines.Append(IntToStr(a[i+1]));
end;

procedure TfrmArr.btnGoClick(Sender: TObject);
var
  chB, chE: Integer;
  A: Array_n_elements;
begin
  Input(chB, chE);
  FillArr(a, chB, chE);
  OutputArray(A, n);
  SortArr(A);
  OutputArray(A, n);
end;

end.

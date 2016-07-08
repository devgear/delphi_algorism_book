unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  Tfrm2Arr = class(TForm)
    Button1: TButton;
    sgdMy: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm2Arr: Tfrm2Arr;

implementation

{$R *.dfm}

const
  n = 3;
  m = 6;

type
  TArray_1 = array[1..n] of Integer;
  TArray_2 = array[1..m] of TArray_1;

procedure FillColumn(var ma_1: TArray_1);
var
  j: Integer;
begin
  for j := 1 to n do
    ma_1[j] := Random(21) -10;
end;

procedure FillArray(var arr: TArray_2);
var
  i: Integer;
begin
  Randomize;
  for i := 1 to m do
    FillColumn(arr[i]);
end;

procedure TableOut(arr: TArray_2);
var
  i, j: Integer;
begin
  frm2arr.sgdMy.FixedCols := 0;
  frm2arr.sgdMy.FixedRows := 0;
  frm2arr.sgdMy.ColCount := m;
  frm2Arr.sgdMy.RowCount := n;
  for i := 1 to m do
    for j := 1 to n do
      frm2arr.sgdMy.Cells[i-1, j-1] := IntToStr(arr[i][j]);
end;

procedure Tfrm2Arr.Button1Click(Sender: TObject);
var
  c: TArray_2;
begin
  FillArray(c);
  TableOut(c);
end;

end.

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    sgdEx: TStringGrid;
    Label1: TLabel;
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
var
  i, j, n: Integer;
begin
  n := StrToInt(Edit1.Text);
  sgdEx.RowCount := n;
  sgdEx.ColCount := n;
  for i := 0 to n-1 do
    for j := 0 to n-1 do
      sgdEx.Cells[j,i] := IntToStr(Random(2));
  Label1.Caption := '';
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, j, n, m: Integer;
  simm: boolean;
begin
  n := sgdEx.RowCount;
  simm := True;
  { 일단 이 행렬이 대칭이라고 가정한다. }
  i := 1;
  while simm and (i<n) do
  begin
    j := 0;
    while (j<i) and (sgdEx.Cells[j,i] = sgdEx.Cells[i,j]) do
      j := j+1;
    simm := (j=i);
    i := i + 1;
  end;
  if simm then
    Label1.Caption := '이 행렬은 대칭입니다.'
  else
    Label1.Caption := '이 행렬은 대칭이 아닙니다.';
end;

end.

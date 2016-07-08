unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    sgdEx: TStringGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  i, j, n, m: Integer;
begin
  n := StrToInt(Edit1.Text);
  m := StrToInt(Edit2.Text);

  sgdEx.RowCount := n;
  sgdEx.ColCount := m;
  for i := 0 to n-1 do
    for j := 0 to m-1 do
      sgdEx.Cells[j,i] := IntToStr(Random(100) - 50);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, j, n, m, k: Integer;
begin
  n := sgdEx.RowCount;
  m := sgdEx.ColCount;

  for i := 0 to n-1 do
  begin
    k := 0;
    for j := 0 to m-1 do
      if StrToInt(sgdEx.Cells[j,i]) < 0 then
        k := k+1;
    Memo1.Lines.Append(IntToStr(k));
  end;
end;

end.

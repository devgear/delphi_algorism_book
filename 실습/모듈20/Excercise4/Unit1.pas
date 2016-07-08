unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    sgdEx: TStringGrid;
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

  sgdEx.RowCount := m;
  sgdEx.ColCount := n;
  for i := 0 to m-1 do
    for j := 0 to n-1 do
      if i mod 2 = 0 then
        sgdEx.Cells[j, i] := IntToStr(i*n + j+1)
      else
        sgdEx.Cells[j,i] := IntToStr((i+1)*n-j);
end;

end.

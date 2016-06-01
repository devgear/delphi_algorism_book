unit Unit_ch20_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    Button9: TButton;
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button9Click(Sender: TObject);
var
  i, j, n,m, m1,m2: integer;
begin
  n:=StrToInt(Edit1.Text);
  if n <= 0 then
     raise Exception.Create('제로보다 큰수를 입력하십시오');

  StringGrid1.RowCount:=n;
  StringGrid1.ColCount:=n;

  m1 := ( n div 2);

  for i := 0 to  n -1  do
    for j := 0 to n -1 do
        stringgrid1.Cells[j, i]:= '0';

  if (n mod 2 = 0) then
     stringgrid1.Cells[m1,m1] := '0'
  else
      stringgrid1.Cells[m1,m1] := '1';

  for i := 0 to m1 do
  begin
    m2 := i mod n;
    for j := i to (n-1)-m2 do
        stringgrid1.Cells[j, i]:=  '1';
  end;
end;
end.

unit Unit_ch20_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    Button1: TButton;
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
  i, j, n,m, m1,m2: integer;
begin
  n:=StrToInt(Edit1.Text);

  StringGrid1.RowCount:=n;
  StringGrid1.ColCount:=n;

  if n <= 0 then
     raise Exception.Create('제로보다 큰수를 입력하십시오');


  for i := 0 to  n -1  do
    for j := 0 to n - 1 do
        StringGrid1.Cells[j, i]:= '0';

  m1 := n div 2;

  if (m1 = 0) then
      StringGrid1.Cells[m1,m1] := '1'
  else
      StringGrid1.Cells[m1,m1] := '0';


  for i := n-1  downto m1 do
  begin
     m2 := i mod n;
     for j := (n-1)- m2 to m2  do
         StringGrid1.Cells[j, i]:=  '1';
  end;

end;


end.

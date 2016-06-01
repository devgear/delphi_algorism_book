unit Unit_ch20_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Edit_Column: TEdit;
    Edit_Row: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Edit_Min: TEdit;
    Edit_Max: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    StringGrid2: TStringGrid;
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
var
i, j: integer;
Col,Row:integer;
Min,Max:integer;
MinValue:integer;
Minid:integer;
Temp,s:string;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  if (Edit_Column.Text = '') or (Edit_Row.Text = '') then
      raise Exception.Create('행과 컬럼수는 반드시 입력하십시오');
  if (Edit_Min.Text = '') or (Edit_Max.Text = '') then
      raise Exception.Create('최소값과 최대값은 반드시 입력하십시오');

  Col := StrToInt(Edit_Column.Text);
  Row := StrToInt(Edit_Row.Text);
  Min := StrToInt(Edit_Min.Text);
  Max := StrToInt(Edit_Max.Text);

  StringGrid1.RowCount:= Row;
  StringGrid1.ColCount:= Col;

  StringGrid2.RowCount:= Row;
  StringGrid2.ColCount:= Col;

  for i:=0 to  Row - 1  do
    for j:=0 to  Col - 1  do
    begin
       s := IntToStr(random(Max - Min +1)+ Min);
       StringGrid1.Cells[j,i]:= s;
       StringGrid2.Cells[j,i]:= s;
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  for i := 0  to Stringgrid2.RowCount - 1 do
  begin
    Minvalue := StrToint(StringGrid2.Cells[0,i]);
    Minid := 0;
    for j := 1 to  Stringgrid2.ColCount - 1 do
    begin
       if StrToInt(stringGrid2.Cells[j,i]) < MinValue then
       begin
          Minid := j;
          MinValue := StrToInt(stringGrid2.Cells[j,i]);
       end;
    end;
    Temp := StringGrid2.Cells[Minid,i];
    StringGrid2.Cells[Minid,i] := stringGrid2.Cells[i,Minid];
    StringGrid2.Cells[i,Minid] := Temp;
end;
end;

end.

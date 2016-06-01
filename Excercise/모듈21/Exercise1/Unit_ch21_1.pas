unit Unit_ch21_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

Type

  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Edit_Column: TEdit;
    Edit_Row: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit_Min: TEdit;
    Edit_Max: TEdit;
    Label5: TLabel;
     procedure Button1Click(Sender: TObject);
     procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
     procedure Sum;
      { Public declarations }
  end;

var
  Form1: TForm1;
  Column_Arrays: array of integer;
  MyArrays : array of array of integer;
  Sum__Columns:array of integer;
  Total:integer;
  Min, Max:integer;
  Col,Row:integer;
  Min_Value, Max_Value:integer;

implementation
{$R *.DFM}
procedure TForm1.Sum;
var
    i,j: integer;
    Column_Tot:integer;

begin
    Total := 0;
    Min_Value := MyArrays[0,0];
    Max_Value := MyArrays[0,0];
    for j := 0 to col - 1 do
    begin
      Column_Tot := 0;
      for i:= 0  to Row - 1 do
      begin                      //j가 1 에서 시작, N이 될 때까지 반복
        Total := Total + MyArrays[j,i];
        if Min_Value > MyArrays[j,i] then
           Min_Value := MyArrays[j,i];

        if Max_Value < MyArrays[j,i] then
           Max_Value := MyArrays[j,i];

        Column_Tot := Column_Tot + MyArrays[j,i];
      end;
      Sum__Columns[j] := Column_Tot;
    end;
  end;

procedure TForm1.Button1Click(Sender: TObject);
var
    i,j:integer;
begin
     Col := StrToInt(Edit_Column.Text);
     Row := StrToInt(Edit_Row.Text);
     Min := StrToInt(Edit_Min.Text);
     Max := StrToInt(Edit_Max.Text);

     SetLength(MyArrays, col, row);
     SetLength(Sum__Columns, Col);
     SetLength(Column_Arrays, Col);

     for i := 0 to  Row - 1 do
         for j:= 0 to  Col - 1 do
             MyArrays[j,i] := Random((Max - Min) + 1) + Min;


     StringGrid1.FixedCols:=0;   //고정열의 개수
     StringGrid1.FixedRows:=0;   //고정행의 개수
     StringGrid1.ColCount:= Col; //열의 개수
     StringGrid1.RowCount:= Row; //행이 개수
     for i:= 0 to Row - 1do
       for j:=0 to Col - 1 do
         StringGrid1.Cells[j, i]:=IntToStr(MyArrays[j,i]);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
    j:integer;
begin
     Sum;
     memo1.Lines.Clear;
     memo1.Lines.Add('배열에 있는 모든 요소들의 합 =' + IntTostr(Total));
     memo1.Lines.Add('최대값 요소 = ' + IntToStr(Max_Value));
     memo1.Lines.Add('최소값 요소 = ' + IntToStr(Min_Value));
     for j := 0 to Col - 1 do
         memo1.Lines.Add(IntTosTR(j+1)+ '번째 열에 있는 요소들의 합 = ' +  inttostr(Sum__columns[j]));
end;


end.

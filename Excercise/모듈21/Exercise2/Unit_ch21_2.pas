unit Unit_ch21_2;

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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit_Min: TEdit;
    Edit_Max: TEdit;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
      { Public declarations }
  end;

var
  Form1: TForm1;
  MyArrays : array of array of real;
  Total:real;
  Min, Max:real;
  Col,Row:integer;

implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
    i,j:integer;
    f:real;
begin
     Col := StrToInt(Edit_Column.Text);
     Row := StrToInt(Edit_Row.Text);
     Min := StrToFloat(Edit_Min.Text);
     Max := StrToFloat(Edit_Max.Text);

     SetLength(MyArrays, Col, Row);

     for I := 0 to Row - 1 do
         for j:= 0 to Col - 1 do
         begin
            f := random;
            f := 0.1 + f*0.8;
            MyArrays[j,i] := f;
         end;

     StringGrid1.FixedCols:=1;   //고정열의 개수
     StringGrid1.FixedRows:=1;   //고정행의 개수
     StringGrid1.ColCount:= Col+1; //열의 개수
     StringGrid1.RowCount:= Row; //행이 개수

     for i:= 0 to Row - 1 do
     begin
        Total := 0;
        for j:=0 to Col - 1 do
        begin
           StringGrid1.Cells[j, i]:=FloatToStr(MyArrays[j,i]);
           Total := Total + MyArrays[j,i];
        end;
        StringGrid1.Cells[j, i] := FloatToStr(Total);
     end;

end;
end.

unit Unit_ch20_4;

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
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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

    for i:=0 to  Row - 1  do
      for j:=0 to  Col - 1  do
       StringGrid1.Cells[j,i]:= IntToStr(random(Max - Min +1)+ Min);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
  for i := 0  to Stringgrid1.RowCount - 1 do
      for j := 0 to  Stringgrid1.ColCount - 1 do
       if (j+1) mod 2 <> 0 then
           ListBox1.Items.Add(stringGrid1.Cells[j,i]);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 ListBox2.Items.Clear;
  for i := 0  to Stringgrid1.RowCount - 1 do
      if (i+1) mod 2 <> 0 then
         for j := 0 to  Stringgrid1.ColCount - 1 do
           if (StrToInt(StringGrid1.Cells[j,i]) > 0) or
              (StrToInt(StringGrid1.Cells[j,i]) = 0)  then
               ListBox2.Items.Add(stringGrid1.Cells[j,i]);
end;

end.

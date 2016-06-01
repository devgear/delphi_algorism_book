unit Unit_ch19_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    MyGrid:TStringGrid;
    Edit_Column: TEdit;
    Edit_Row: TEdit;
    Edit_FixColumn: TEdit;
    Edit_FixRow: TEdit;
    Button1: TButton;
    btnCelRed: TButton;
    btnFCGreen: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo1: TMemo;
    Button6: TButton;
    Button7: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure btnCelRedClick(Sender: TObject);
    procedure btnFCGreenClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
  Procedure CreateGrid(n1, n2, n3, n4: integer);
  procedure GetGridParam(var n1, n2, n3, n4: integer);
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
var
   cnt:integer;

Procedure TForm1.GetGridParam(var n1, n2, n3, n4: integer);
Begin
  if (Edit_Column.Text = '') or (Edit_Row.Text = '') then
     raise Exception.Create('행의 갯수와 열의 갯수는 반드시 입력하십시오');

  n1:=StrToInt(Edit_Column.Text);
  n2:=StrToInt(Edit_Row.Text);

  if Edit_FixColumn.Text = '' then
     n3 := 0
  else
     n3:=StrToInt(Edit_FixColumn.Text);

  if Edit_FixRow.Text = '' then
     n4 := 0
  else
     n4:=StrToInt(Edit_FixRow.Text);
End;

procedure TForm1.btnCelRedClick(Sender: TObject);
begin
   MyGrid.Color:=clRed;
end;

procedure TForm1.btnFCGreenClick(Sender: TObject);
begin
  MyGrid.FixedColor:=clGreen;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  nl, ns, nfl, nfs: integer;
begin
   GetGridParam(nl, ns,  nfl,  nfs); //그리드를 만들기 위한 파라미터를 받는다
   CreateGrid(nl, ns,  nfl,  nfs);   //정해진 파라미터에 맞게 그리드를 생성한다
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   MyGrid.Color:=clYellow;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  MyGrid.Color:=clBlue;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   MyGrid.FixedColor:=clSilver;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  MyGrid.FixedColor:=clAqua;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i:byte;
begin
  if StrToInt(Edit1.text) > MyGrid.ColCount then
     raise Exception.Create('컬럼 수가 초과');

  memo1.Lines.Clear;
  for I := 0 to MyGrid.RowCount - 1 do
  begin
    Memo1.Lines.Add( MyGrid.Cells[StrToint(Edit1.text)-1,i]);
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  i:byte;
begin
  if StrToint(Edit1.text) > MyGrid.RowCount then
     raise Exception.Create('컬럼 수가 초과');

  memo1.Lines.Clear;
  for I := 0 to MyGrid.ColCount - 1 do
  begin
    Memo1.Lines.Add(MyGrid.Cells[i,StrToint(Edit1.text)-1]);
  end;
end;


Procedure TForm1.CreateGrid(n1, n2, n3, n4: integer);
var
 i,j:byte;
Begin
  MyGrid.RowCount:=n2;
  MyGrid.ColCount:=n1;
  MyGrid.FixedCols:=n4;
  MyGrid.FixedRows:=n3;

  for I := 0 to MyGrid.RowCount - 1 do
      for j := 0 to MyGrid.ColCount - 1 do
         MyGrid.Cells[j,i] := '컬럼' + IntToStr(j) + '행' + IntTostr(i);
end;


{$R *.dfm}

end.

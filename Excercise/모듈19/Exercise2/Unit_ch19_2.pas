unit Unit_ch19_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Edit_Cnt: TEdit;
    Edit_Value: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button8: TButton;
    Button9: TButton;
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
var
   cnt:integer;

procedure TForm1.Button8Click(Sender: TObject);
var
  i:byte;

begin
  CNT :=  StrToInt(Edit_Cnt.text);
  StringGrid1.RowCount := cnt + 1;

  stringGrid1.Cells[0,0] := '실험횟수';
  stringGrid1.Cells[1,0] := '기중치';
  stringGrid1.Cells[2,0] := '측정된값';
  stringGrid1.Cells[3,0] := '결과값';
  stringGrid1.Cells[4,0] := '최대값/최소값';
  for I := 1 to cnt do
  begin
    StringGrid1.Cells[0,i] := IntToStr(i);
    StringGrid1.Cells[1,i] := Edit_Value.Text;
  end;

end;

procedure TForm1.Button9Click(Sender: TObject);
var
  i:byte;
  Minid,Maxid:integer;
  MinValue, MaxValue:integer;
  value:integer;
begin
  Maxvalue := 0;
  for I := 1 to cnt do
  begin
    value := StrToInt(StringGrid1.Cells[2,i]) * (StrToInt(Edit_Value.Text));
    StringGrid1.Cells[3,i] := IntToStr(value);
    if value > Maxvalue then
    begin
        Maxvalue := value;
        mAXid := i;
    end;
    if i = 1 then
    begin
       Minvalue := value;
       minid := i;
    end
    else
      if value < MinValue then
      begin
         Minvalue := value;
       minid := i;
      end;
  end;
  StringGrid1.Cells[4,Minid] := '최소값';
  StringGrid1.Cells[4,Maxid] := '최대값';
end;
{$R *.dfm}

end.

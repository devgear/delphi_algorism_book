unit Unit_ch22_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Edit_Start: TEdit;
    Label2: TLabel;
    Edit_During: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit_Break: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit_Cnt: TEdit;
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
  Start_Time,T:TTime;
  During:integer;
  Break:integer;
  Count:integer;
  idx,i: Integer;
  SetTime:string;
  begin
  try
     Start_Time := StrtoTime(Edit_Start.text);
  except
     raise Exception.Create('유효한 시간이 아닙니다');
  end;
  try
     During := StrtoInt(Edit_During.text);
  except
     raise Exception.Create('유효한 수업시간간격 아닙니다');
  end;
  if During > 60  then
     raise Exception.Create('수업 시간은 한 시간을 초과할 수 없습니다');
  try
     Break := StrtoInt(Edit_Break.text);
  except
     raise Exception.Create('유효한 쉬는 시간이  아닙니다');
  end;
  if Break > During  then
     raise Exception.Create('쉬는 시간이 수업시간보다 길 수 없습니다');
  try
     Count := StrtoInt(Edit_Cnt.text);
  except
     raise Exception.Create('유효한 횟수가 아닙니다');
  end;
  if Count <= 0 then
     raise Exception.Create('수업 횟수는 최소한 1회 이상이어야 합니다');

  StringGrid1.ColCount := 3;
  StringGrid1.RowCount := (Count*2)+1;
  StringGrid1.Cells[0,0] := ' ';
  StringGrid1.Cells[1,0] := '시작 시간';
  StringGrid1.Cells[2,0] := '종료 시간';
  idx := 1;
  for i := 1 to Count do
  begin
     StringGrid1.Cells[0,idx] := IntToStr(i)+'교시';
     T := Start_Time;
     StringGrid1.Cells[1,idx] := FormatDateTime('hh:nn',T);
     SetTime := '00:'+ Edit_During.Text;
     T  := T +  StrtoTime(SetTime);
     StringGrid1.Cells[2,idx] := FormatDateTime('hh:nn',T);
     idx := idx + 1;
     StringGrid1.Cells[0,idx] := '휴식';
     StringGrid1.Cells[1,idx] := FormatDateTime('hh:nn',T);
     SetTime := '00:'+ Edit_Break.Text;
     T  := T +  StrtoTime(SetTime);
     StringGrid1.Cells[2,idx] := FormatDateTime('hh:nn',T);
     idx := idx + 1;
     Start_Time := t;
  end;

end;

end.

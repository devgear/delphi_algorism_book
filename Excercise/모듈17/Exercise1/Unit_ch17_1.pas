unit Unit_ch17_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  n = 20;

type
   array_n_elements = array[1..n] of integer;

  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
     procedure SetArrayRange(var ch1, ch2:integer);
     procedure FillArray(var a:array_n_elements; rMin, rMAX:integer);
     procedure OutPutArray(a:array_n_elements; n:integer);
     function Max(a:array_n_elements):integer;
     function Min(a:array_n_elements):integer;
     function Sum:integer;
    { Public declarations }
  end;

var
  Form1: TForm1;
  minus_cnt, plus_cnt:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  rMin, rMAX:integer;
  Amax:integer;
  a:Array_n_Elements;

begin
  SetArrayRange(rMin,rMAX);
  FillArray(a, rMin, rMax);
  OutPutArray(a,n);

  Label1.Caption := '요소의 갯수 = ' + IntToStr(n);
  Label2.Caption := '요소들의 합 = ' + IntToStr(Sum);
  Label3.Caption := '요소들의 평균 = ' + FloatToStr(Sum / n);
  Label4.Caption := '음수요소들의 갯수 = ' + IntToStr(Minus_cnt);
  Label5.Caption := '양수요소들의 갯수 = ' + IntToStr(Plus_cnt);
  Label6.Caption := '가장 큰 수  = ' + IntToStr(Max(a));
  Label7.Caption := '가장 작은 수  = ' + IntToStr(Min(a));
end;

procedure TForm1.FillArray(var a:array_n_elements; rMin, rMAX:integer);
var
  i:integer;
begin
  randomize;
  for I := 1 to n do
    a[i] := random(rMax - RMin + 1) + rMin;
end;

function TForm1.Max(a: array_n_elements): integer;
var
  i,m:integer;
begin
  m := a[1];
  for i := 1 to n - 1 do
    if a[i] >  m then
       m := a[i];

  result := m;
end;

function TForm1.Min(a: array_n_elements): integer;
var
  i,m:integer;
begin
  m := a[1];
  for i := 1 to n - 1 do
    if a[i] <  m then
       m := a[i];

  result := m;
end;

procedure TForm1.OutPutArray(a:array_n_elements; n:integer);
var
  i:integer;
begin
  Memo1.Lines.Clear;
  for i := 0 to n - 1 do
      Memo1.Lines.Append(IntToStr(a[i+1]));
end;

procedure TForm1.SetArrayRange(var ch1, ch2:integer);
begin
  ch1 := StrToInt(Edit1.Text);
  ch2 := StrToInt(Edit2.Text);
end;

function TForm1.Sum:integer;
var
  i:integer;
  Tot:integer;
begin
  Minus_cnt := 0;
  Plus_cnt := 0;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;
  Tot := 0;
  for i := 0 to Memo1.Lines.Count -1 do
  begin
      if Strtoint(Memo1.Lines[i]) < 0  then
      begin
         Minus_cnt := Minus_cnt + 1;
         Memo2.Lines.Add(Memo1.Lines[i]);
      end
      else
      begin
         Plus_cnt := Plus_cnt + 1;
         Memo3.Lines.Add(Memo1.Lines[i]);
      end;
      Tot := Tot + StrToInt(Memo1.Lines[i]);
  end;
  result := Tot;
end;

end.

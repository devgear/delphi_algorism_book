unit Unit_ch9_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;

function max(a,b,c:integer):integer;
function min(a,b,c:integer):integer;
implementation

{$R *.dfm}

function min(a,b,c:integer):integer;
var
  a1:array [0..2] of integer;
  i,j: Integer;
  temp:integer;
begin
  a1[0] := a;
  a1[1] := b;
  a1[2] := c;

  for i := 0 to 2 do
    for j := i+1 to 2 do
      if a1[i] > a1[j] then
      begin
         temp := a1[i];
         a1[i] := a1[j];
         a1[j] := temp;
      end;

  result := a1[0];

end;
function max(a,b,c:integer):integer;
var
  a1:array [0..2] of integer;
  i,j: Integer;
  temp:integer;
begin
  a1[0] := a;
  a1[1] := b;
  a1[2] := c;

  for i := 0 to 2 do
    for j := i+1 to 2 do
      if a1[i] < a1[j] then
      begin
         temp := a1[i];
         a1[i] := a1[j];
         a1[j] := temp;
      end;

  result := a1[0];
end;
procedure TForm1.Button1Click(Sender: TObject);
var
  a,b,c:integer;
  t:real;

begin
  a := StrToInt(Edit1.text);
  b := StrToInt(Edit2.text);
  c := StrToInt(Edit3.text);

  t := ((max(a,b,c) - min(a,b,c)) / (2+ max(a,b,c)* min(a,b,c)));

  Label1.Caption := '결과값은 ' + FloatToStr(t);

end;





end.

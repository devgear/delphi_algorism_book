//이 모듈은 아직 배열(Array)를 배우 전입니다.
//따라서, 아래 답변은 배열(Array)를 배우지 않은 입문자에게 알맞지 않습니다.
//차라리, 이 문제에 댓글로 달린 풀이를 참고하기 바랍니다: https://tech.devgear.co.kr/421912 
unit Unit_ch6_3;

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
    Label2: TLabel;
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
  i,j:integer;
  r:real;
  Array_real:array [0..2] of real;
begin

  Array_real[0] := StrToFloat(Edit1.Text);
  Array_real[1] := StrToFloat(Edit2.Text);
  Array_real[2] := StrToFloat(Edit3.Text);

  for I := 0 to 2 do
    for j := i+1 to 2 do
      if array_real[i] > array_real[j] then
      begin
       r := array_real[i];
       array_real[i] := array_real[j];
       array_real[j] := r;
      end;

  label1.Caption := 'ÃÖ¼Ò°ª =' + FloatToStr(Array_real[0]);
  label2.Caption := 'ÃÖ´ë°ª =' + FloatToStr(Array_real[2]);
end;





end.

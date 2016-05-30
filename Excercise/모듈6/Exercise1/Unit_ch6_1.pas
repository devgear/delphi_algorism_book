unit Unit_ch6_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
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
  s:string;
begin
  i := StrToInt(Edit1.Text);
  j := StrToInt(Edit2.Text);

  r := i / j;
  s := FloatToStr(r);
  if pos('.',s) = 0 then
     Label1.Caption := '결과값 = ' + FloatToStr(r)
  else
    label1.Caption :=
    Format('%d은 %d로 나룰 수 없습니다', [i,j]);





end;





end.

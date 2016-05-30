unit Unit_ch9_3;

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
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
  x1,x2,x3:integer;
  y1,y2,y3:integer;
  Total,a,b,c:real;

begin
  x1 := StrToInt(Edit1.text);
  y1 := StrToInt(Edit2.text);

  x2 := StrToInt(Edit3.text);
  y2 := StrToInt(Edit4.text);

  x3 := StrToInt(Edit5.text);
  y3 := StrToInt(Edit6.text);

  a := SQRT(SQR(x1 - x2)+ SQR(y1 - y2));
  b := SQRT(SQR(x2 - x3)+ SQR(y3 - y3));
  c := SQRT(SQR(x3 - x1)+ SQR(y3 - y1));

  Total := a  + b +c;

  Label2.Caption := '삼각형의 둘레는 ' + FloatToStr(Total);

end;





end.

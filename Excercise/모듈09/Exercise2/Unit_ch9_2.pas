unit Unit_ch9_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function Calc(x,y:integer):real;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  x:real;
begin

  x := (Calc(15,8)/Calc(8,15)) + ((Calc(6,12) /Calc(12,6)) + (Calc(7,21) /Calc(21,7)));
  ShowMessage('계산값은 ' + FloatToStr(x));

end;

function TForm1.Calc(x,y: integer): real;
begin
  result := x + SQRT(y);
end;

end.

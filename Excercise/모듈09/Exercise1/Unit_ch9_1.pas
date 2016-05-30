unit Unit_ch9_1;

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
    function Calc(x:integer):real;
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

  x := ((Calc(6)/2) + (Calc(13) /2) + (Calc(21) / 2));
  ShowMessage('계산값은 ' + FloatToStr(x));

end;

function TForm1.Calc(x: integer): real;
begin
  result := SQRT(x) + x;
end;

end.

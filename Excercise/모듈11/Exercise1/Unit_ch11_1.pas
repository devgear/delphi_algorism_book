unit Unit_ch11_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
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
  n,i:integer;
  x,y:integer;
begin
 n := StrToInt(Edit1.Text);
 x := Edit1.Left;
 y := 10;
 for I := 0 to n-1 do
 begin
   Canvas.Pen.Width := 1;
   Canvas.MoveTo( x, y+(30*i) );
   Canvas.LineTo( x+Edit1.Width, y+(30*i) );
 end;
end;


end.

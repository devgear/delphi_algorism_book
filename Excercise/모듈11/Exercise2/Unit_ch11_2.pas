unit Unit_ch11_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1:TButton;
    Label1: TLabel;
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
  i,j,s,n:integer;
  x,y:integer;

begin
   s := StrToInt(Edit1.Text);
   n := StrToInt(Edit2.Text);
   x := Edit1.Left;
   y := 10;
   for i := 0 to n-1 do
   begin
     Canvas.Pen.Width := 1;
     Canvas.Rectangle(x+(10*i)+(s*i),y,x+(10*i)+(s*i)+s, y+s);
   end;
end;

end.

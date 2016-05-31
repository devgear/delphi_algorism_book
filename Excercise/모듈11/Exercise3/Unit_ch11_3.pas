unit Unit_ch11_3;

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
  i,j,s,n,m:integer;
  x,y:integer;
begin
 n := StrToInt(Edit1.Text);
 m := StrToInt(Edit2.Text);
 x := Edit1.left;
 y := 10;
 for I := 0 to n do
 begin
   Canvas.Pen.Width := 1;
   Canvas.MoveTo( x, y+(30*i) );
   Canvas.LineTo( 500, y+(30*i) );
 end;
 for j := 0 to m do
 begin
   Canvas.Pen.Width := 1;
   Canvas.MoveTo( x+(30*j), y );
   Canvas.LineTo( x+(30*j), 100 );
 end;
end;

end.

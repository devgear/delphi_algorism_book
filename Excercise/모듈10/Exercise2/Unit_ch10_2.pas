unit Unit_ch10_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
var
  i,j,s,n,m:integer;
  x,y:integer;
  r,r1,r2:integer;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  x,y:integer;
begin
 Canvas.Pen.Width := 1;
 x := (ClientWidth div 2);
 y := (ClientHeight div 2);

 Canvas.Rectangle(x-100,y-100,x+100,y+100);
 Canvas.MoveTo(x-150,y-170);
 Canvas.LineTo(x+170,y-170);

 Canvas.MoveTo(x-150,y-170);
 Canvas.LineTo(x-200,y-100);
 Canvas.LineTo(x+200,y-100);
 Canvas.LineTo(x+170,y-170);

end;

end.

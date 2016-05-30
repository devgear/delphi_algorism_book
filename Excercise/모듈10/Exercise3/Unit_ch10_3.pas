unit Unit_ch10_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ColorGrd;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    Image1: TImage;
    ColorGrid1: TColorGrid;
    Button1: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure ColorGrid1Change(Sender: TObject);
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

 x := (ClientWidth div 2);
 y := (ClientHeight div 2);

  case ListBox1.ItemIndex of
    0:begin
       Canvas.MoveTo(x-100,y);
       Canvas.LineTo(x-100,y+150);
      end;
    1:begin
        Canvas.MoveTo(x-100,y+100);
        Canvas.LineTo(x+100,y+100);
      end;
    2:Canvas.Ellipse(100,100, clientwidth div 3,clientwidth div 3);
    3:Canvas.Rectangle(x-50,y-50,x+100,y+100);
     end;

end;

procedure TForm1.ColorGrid1Change(Sender: TObject);
begin
   Canvas.Brush.Color := ColorGrid1.ForegroundColor;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  Canvas.Pen.Width := StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]);
end;

end.

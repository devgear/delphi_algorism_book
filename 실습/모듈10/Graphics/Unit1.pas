unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pbxEx: TPaintBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
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
  x0, y0: Integer;
begin
  x0 := pbxEx.Width div 2;
  y0 := pbxEx.Height div 2;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  pbxEx.Canvas.Pen.Color := clRed;
  pbxEx.Canvas.Pen.Width := 3;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  pbxEx.Canvas.Brush.Color := clGreen;
  pbxEx.Canvas.FillRect(ClientRect);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  x, y: Integer;
begin
  x := 100;
  y := 120;
  pbxEx.Canvas.Pixels[x, y] := clRed;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  x, y: Integer;
begin
  x := 100;
  y := 120;
  pbxEx.Canvas.LineTo(X, Y);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  X1, Y1, X2, Y2: Integer;
begin
  X1 := 10;
  Y1 := 20;
  X2 := 200;
  Y2 := 140;

  pbxEx.Canvas.Rectangle(X1, Y1, X2, Y2);
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  X1, Y1, X2, Y2: Integer;
begin
  X1 := 10;
  Y1 := 220;
  X2 := 400;
  Y2 := 340;

  pbxEx.Canvas.Ellipse(X1, Y1, X2, Y2);
end;

end.

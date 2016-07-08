unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
  sx, sy: string;
  cx, cy: Integer;
  x, y: Real;
begin
  sx := '102';
  sy := '123.45';
//  sy := '12a';

  Val(sx, x, cx);
  Val(sy, y, cy);

  if (cx = 0) and (cy = 0) then
  begin
    Edit1.Text := '정수/실수';
  end
  else
  begin
    Edit1.Text := '정수/실수 아님';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  x: Integer;
  y: Real;
  s: string;
begin
  y := 3.5;
  Str(y, s);

  Edit2.Text := s;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  s: string;
begin
  Str(12345.6:5:2, s);

  Edit3.Text := s;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  s: string;
begin
  Str(12.3456:5:2, s);

  Edit4.Text := s;
end;

end.

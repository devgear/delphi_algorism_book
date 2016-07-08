unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  kg = Integer;
  cm = Integer;

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

var
  Weight: kg;
  Size: cm;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b: Integer;
  c: real;
begin
  a := 1;
  b := 7;
  c := Random(b-a+1) + a;

  Edit1.Text := FloatToStr(c);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a, b: Integer;
  c: real;
begin
  a := 20;
  b := 100;
  c := (b-a) * Random + a;

  Edit1.Text := FloatToStr(c);
end;

end.

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  s, st: string;
begin
  s := '델파이를';  // 첫 번째 변수에 "델파이를"을 넣는다.
  st := ' 배운다';  // 두 번째 변수에 " 배운다"를 넣는다.
  s := s + st;  // 이 두 String을 이어 붙인다.

  Edit1.Text := s;
end;

procedure Change(var s: string);
var
  s1: string;
begin
  s1 := copy(s, 1, pos(' ', s)-1);
  delete(s,1, pos(' ', s));
  s := s+' ' + s1;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  s: string;
begin
  s := Edit1.Text;
  Change(s);
  Edit1.Text :f= s;
end;

end.

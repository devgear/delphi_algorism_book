unit Unit_ch13_5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,system.json;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
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
  i:integer;
  x,y:integer;
  s,s1,s2:string;
  code :integer;
begin
  s := Edit1.Text;
  s1 := Copy(s,1, Pos(('('),s)-1);
  Delete(s, 1, pos(('('),s));
  s2 := Copy(s,1,pos((')'),s)-1);
  Delete(s, 1, pos((')'),s));
  y := 0;
  for i := 1 to Length(s2) do
  begin
    val(s2[i], x, code);
    y := y + x;
  end;
  ShowMessage('ÃÑ¼ö = ' + IntToStr(y));
  Label1.Caption :=
  s1 + '(' + FloatToStr(y div Length(s2)) + ')' + s;
end;


end.

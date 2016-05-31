unit Unit_ch13_2;

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
  i,j:integer;
  x:integer;
  s:string;
  Code :integer;
begin
  s := Edit1.Text;
  j := 0;
  for i := 1 to Length(s) do
  begin
    val(s[i], x, Code);
    if Code = 0 then
      j := j + x;
  end;
  Label1.Caption := 'гу╩Й = ' + (IntToStr(j));
end;

end.

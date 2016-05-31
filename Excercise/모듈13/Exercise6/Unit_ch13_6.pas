unit Unit_ch13_6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,system.json;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
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
  x:integer;
  s,s1,s2:string;
  code :integer;
  h1,h2:string;
begin
  s1 := Edit1.Text;
  s2 := Edit2.Text;

  for i := 1 to length(s1) do
  begin
    val(s1[i], x, code);
    h1 := h1 + IntToStr(x);
  end;
  for i := 1 to length(s2) do
  begin
    val(s2[i], x, code);
    h2 := h2 + IntToStr(x);
  end;

   s1 := copy(Edit1.Text,1, Pos((' '),Edit1.text)-1);
   s2 := copy(Edit2.Text,1, Pos((' '), Edit2.Text)-1);

   if StrToInt(h1) > StrToInt(h2) then
      Label1.Caption := s1
  else
      Label1.Caption := s2;

  if StrToInt(h1) =  StrToInt(h2) then
     Label1.Caption := s1 + ',' + s2;
end;


end.

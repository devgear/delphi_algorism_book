unit Unit_ch12_3;

interface

uses
  System.Classes, Vcl.Controls, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.StrUtils;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i:integer;
  Cnt:integer;
  s:string;
begin
  Cnt := 0;
  s := Edit1.Text;
  for i := 0 to Length(s) do
    if s[i] =  '.' then
       Cnt := Cnt + 1;
   ShowMessage(InTtoStr(Cnt));
end;
end.

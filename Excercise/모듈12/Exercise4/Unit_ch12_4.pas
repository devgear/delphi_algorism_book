unit Unit_ch12_4;

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
  cnt:integer;
  s,s1:string;
begin
  cnt := 0;
  s := Edit1.Text;
  while  Length(s) > 0 do
  begin
   s1 := copy(s,1,pos('°¡³ª´Ù',s)-1);
   cnt := cnt + 1;
   delete(s,1,Length(s1)+6);
  end;
  showmessage(inttostr(cnt));
end;
end.

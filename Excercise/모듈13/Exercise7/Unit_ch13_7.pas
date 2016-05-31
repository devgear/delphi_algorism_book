unit Unit_ch13_7;

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
  x,y:integer;
  s,s1,s2,s3:string;
  code :integer;
  Negative:boolean;
  iRest: LongInt;
  iFor: Integer;
begin
  s := Edit1.Text;
  for i := 1 to Length(s) do
  begin
    val(s[i], x, code);
    s1 := '';
    if code = 0 then
    begin
       s1 := s1 + s[i];

       for j := 1 to Length(s) do
       begin
         val(s[i+j],x, code);
         if code <> 0 then
            break;
       s1 := s +s[i+j];
       end;
    end;

    x := StrToInt(s1);
    Negative := False;
    if x < 0 then
       Negative := True; // 음수표시
    x := Abs(x);
    s2 := '';
    for j := 1 to SizeOf(x) * 8 do
    begin
      if x < 0 then
         S2 := S2 + '1' else S2 := S2 + '0';
      x := x shl 1;
    end;//       Delete(S2,1,Pos('1',S2) - 1);
    if Negative then
       S2 := '-' + S2;
    end;
    Label1.Caption := s2;
 end;

end.

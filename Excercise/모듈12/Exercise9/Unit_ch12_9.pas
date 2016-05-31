unit Unit_ch12_9;

interface

uses
  System.Classes, Vcl.Controls, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.StrUtils;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
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
  s:string;
  ss:array of string;
  From_s,To_s:string;
  Cnt:integer;
begin
  Cnt := 0;
  s := Edit1.Text;
  while (Length(s) > 0) and (Pos(' ',s) > 0) do
  begin
     SetLength(ss, Cnt + 1);
     ss[cnt] := Copy(s,1,Pos(' ',s)-1);
     Cnt := Cnt + 1;
     Delete(s,1,Pos(' ',s));
  end;
  if Length(s) > 0 then
  begin
    SetLength(ss, Cnt + 1);
    ss[cnt] := s;
  end;

  From_s := ss[1];
  To_s := ss[cnt-2];
  ss[1] := to_s;
  ss[cnt -2] := From_s;
  s := '';
  for i := 0 to Cnt do
    s := s +  ' ' + ss[i];

  ShowMessage('°ø¹é¼ö = ' + IntToStr(Cnt));
  Edit2.Text := s;
end;

end.

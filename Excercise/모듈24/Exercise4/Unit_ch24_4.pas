unit Unit_ch24_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,system.IOUtils,System.StrUtils;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Memo2: TMemo;
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
{$R *.DFM}
procedure TForm1.Button1Click(Sender: TObject);
var
  f: TextFile;
  s,s1:string;
  cnt1,cnt2:integer;
  Work_School:string;
  School:array of string;
  No_Array:array of integer;
  i:integer;
  Min:integer;
begin
  AssignFile(f,OpenDialog1.FileName);
  Reset(f);
  Readln(f,s);
  cnt1 := StrToInt(s);
  cnt2 := 0;

  for i := 1 to cnt1 do
  begin
    ReadLn(f, s);

    s1 := ReverseString(s);
    s1 := copy(s1,1,pos(' ',s1)-1);

    if Work_School =  s1 then
       No_Array[cnt2-1] := No_Array[cnt2-1] + 1
    else
    begin
      cnt2 := cnt2 + 1;
      Work_School := s1;
      SetLength(School,cnt2);
      Setlength(No_Array,cnt2);
      School[cnt2-1] := ReverseString(work_school);
      No_Array[cnt2-1] := 1;
    end;
end;
CloseFile(f); //파일을 닫는다.
Memo1.Lines.Clear;
Min := No_Array[0];
Memo1.Lines.Add('학교 번호 : ' + School[0]);
Memo1.Lines.Add('참가 인원수 : ' + IntToStr(No_Array[0]));
Label1.Caption := '학교번호 : ';

for i := 1 to cnt2-1 do
begin
    Memo1.Lines.Add('학교 번호 : ' + School[i]);
    Memo1.Lines.Add('참가 인원수 : ' + IntToStr(No_Array[i]));

    if Min >= No_Array[i] then
    begin
       if Min = No_Array[i] then
          Label1.Caption := Label1.Caption + ',' + School[i]
       else
          Label1.Caption :=  School[i];
       Min := No_Array[i];
    end;
end;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
      Memo2.Lines.LoadFromFile(OpenDialog1.FileName);
end;

end.

unit Unit_ch24_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,system.IOUtils,System.StrUtils;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    Memo2: TMemo;
    Label2: TLabel;
    Button1: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    Procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure MyFile_Write(s:string);
function MyFile_Read:boolean;
var
  Form1: TForm1;

implementation
{$R *.DFM}
Procedure MYFile_Write(s:string);
var
  f: TextFile;
begin
  AssignFile(f, 'save.txt');
  ReWrite(f);

  writeln(f,s);
  closefile(f);
end;

function MyFile_Read:boolean;
var
  f: TextFile;
  x, k: integer;
begin
  AssignFile(f,'save.txt');
  Reset(f);
  k:=0;
  While  not  SeekEOF(f) do //파일 끝에 도달하기 전까지 반복
  begin
     Read(f, x);           // 다음 숫자를 읽는다
     k:=k+x;               //읽은 숫자를 합계에 더한다
  end;
  CloseFile(f);
  if k mod 2 = 0 then
     result := True
  else
     result := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
f,f1: TextFile;
s: string;
s1:string;
x,k: integer;
begin
 AssignFile(f,OpenDialog1.FileName); //파일 이름과 파일 변수를 연결한다
 Reset(f);                           //읽을 파일을 연다
 AssignFile(f1,Edit1.Text);
 rewrite(f1);

 k:=0;
 while not Eof(f)  do
 begin
   readln(f,s);
   Myfile_Write(s);
   if MyFile_read then
   begin
     writeln(f1, s);
   end;
 end;
CloseFile(f);   //파일을 닫는다
CloseFile(f1);  //파일을 닫는다

Memo2.Lines.Clear;
Memo2.Lines.LoadFromFile(Edit1.text);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
     Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  if OpenDialog1.Execute then
     Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

end.

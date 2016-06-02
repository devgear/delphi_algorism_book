unit Unit_ch25_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    Memo2: TMemo;
    Button1: TButton;
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
  f,f1:TextFile;
  s,s1:string;
  x,k:integer;
begin
  AssignFile(f1, 'tot.txt');
  Rewrite(f1);

  if SaveDialog1.Execute then
     Memo1.Lines.SaveToFile(Savedialog1.FileName);

  AssignFile(f, SaveDialog1.Filename);
  Reset(f);
  k := 0;

  while not Eof(f) do
  begin
     Readln(f,s);
     while (Length(s) <> 0) and (pos(' ',s) > 0) do
     begin
       s1 := Copy(s, 1, Pos(' ',s)-1);
       try
         k := k + StrToInt(s1);
       except
         k := k + 0;
       end;
       Delete(s, 1, Pos(' ',s));
     end;
     if Length(s) > 0 then       // 마지막 데이터 처리
     try
         k := k + StrToInt(s);
     except
         k := k + 0;
     end;
   end;
  Writeln(f1, k);
  CloseFile(f);
  CloseFile(f1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo2.Lines.Clear;
  Memo2.Lines.LoadFromFile('tot.txt');
end;

end.

unit Unit_ch25_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    Memo2: TMemo;
    Button2: TButton;
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
  f,f2,f3:textFile;
  s:string;
begin
  AssignFile(f2, 'File2.txt');
  Rewrite(f2);
  AssignFile(f3, 'File3.txt');
  Rewrite(f3);

  if SaveDialog1.Execute then
     Memo1.Lines.SaveToFile(Savedialog1.FileName);

  AssignFile(f, SaveDialog1.FileName);
  Reset(f);

  while not Eof(f)do
  begin
    ReadLn(f, s);
    if Length(s) mod 2 = 0 then
      Writeln(f2,s)
    else
      Writeln(f3,s);
  end;
  CloseFile(f);
  CloseFile(f2);
  CloseFile(f3);
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
     Memo2.Lines.LoadFromFile(OpenDialog1.FileName);
end;

end.

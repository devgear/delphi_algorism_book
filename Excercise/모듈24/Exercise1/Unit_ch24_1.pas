unit Unit_ch24_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,system.IOUtils,System.StrUtils;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
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
  f: TextFile;
  s: string;
  l:integer;
begin
  Memo1.Lines.Clear;
  if OpenDialog1.Execute then
     Memo1.Lines.LoadfromFile(OpenDialog1.FileName);

  AssignFile(f,OpenDialog1.FileName);
  Reset(f);
  While  not  EOF(f) do
  begin
   ReadLn(f, s);
   if L = 0 then
      L := length(S)
   else  if l > Length(s) then
         begin
            Label1.Caption := s;
            l := Length(s);
         end;

  end;
  CloseFile(f); //파일을 닫는다.
end;
end.


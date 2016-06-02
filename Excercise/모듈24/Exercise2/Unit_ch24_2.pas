unit Unit_ch24_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,system.IOUtils,System.StrUtils;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Memo2: TMemo;
    Label2: TLabel;
    Button1: TButton;
    Button3: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    Procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.DFM}

procedure TForm1.Button2Click(Sender: TObject);
var
  f:TextFile;
  s,s1:string;
  i,j:integer;
begin

   AssignFile(f, OpenDialog1.FileName);
   ReSet(f);
   while not Eof(f) do
   begin
      Readln(f,s);
      s1 := ReverseString(s);
      if s = s1 then
         Memo2.Lines.Add(s);
   end;
   CloseFile(f);
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

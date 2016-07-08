unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
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

procedure ZapFile;
var
  f: TextFile;
  x, y: Integer;
  Ok: Boolean;
begin
  AssignFile(f, 'example.txt');
  ReWrite(f);
  x := 10;
  y := 7;
  WriteLn(f, x);
  Write(f, x+2);
  Write(f, '¾È³ç');
  Write(f, x, y);
  WriteLn(f, x, y);
  Ok := 5>7;
  WriteLn(f, Ok);
  WriteLn(f, x, ' ', y);
  WriteLn(f, 'x=', x);
  CloseFile(f);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ZapFile;
end;

procedure ZapZero(var fl: TextFile; n, m: Integer);
var
  i, j: Integer;
begin
  Rewrite(fl);
  for i := 1 to n do
  begin
    for j := 1 to m do
      Write(fl, 0:3);
    WriteLn(fl)
  end;
  CloseFile(fl);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  f, g: TextFile;
begin
  AssignFile(f, 'test1.txt');
  AssignFile(g, 'test2.txt');
  ZapZero(f, 3, 5);
  ZapZero(g, 4, 2);
end;

end.

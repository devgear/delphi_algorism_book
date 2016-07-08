unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    memEx: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure Init;
begin
  Form1.memEx.Lines.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  f: TextFile;
  s: string;
begin
  Init;

  AssignFile(f, 'my1.txt');
  Reset(f);
  ReadLn(f, s);
  memEx.Lines.Append(s);
  CloseFile(f);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  f: TextFile;
  s: string;
  i: Integer;
begin
  Init;

  AssignFile(f, 'my1.txt');
  Reset(f);
  for i := 1 to 5 do
  begin
    ReadLn(f, s);
    memEx.Lines.Append(s);
  end;
  CloseFile(f);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  f: TextFile;
  s: string;
  i: Integer;
begin
  Init;

  AssignFile(f, 'my1.txt');
  Reset(f);
  for i := 1 to 4 do
    ReadLn(f);

  ReadLn(f, s);
  memEx.Lines.Append(s);
  CloseFile(f);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  f: TextFile;
  s: string;
  i: Integer;
begin
  Init;

  AssignFile(f, 'my1.txt');
  Reset(f);
  while not Eof(f) do
  begin
    ReadLn(f, s);
    memEx.Lines.Append(s);
  end;
  CloseFile(f);
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  f: TextFile;
  x, i, k: Integer;
begin
  AssignFile(f, 'my2.txt');
  Reset(f);
  k := 0;
  for i := 1 to 5 do
  begin
    Read(f, x);
    k := k + x;
  end;

  CloseFile(f);
  ShowMessage(IntToStr(k));
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  f: TextFile;
  x, i, k: Integer;
begin
  AssignFile(f, 'my2.txt');
  Reset(f);
  k := 0;
  for i := 1 to 5 do
  begin
    ReadLn(f, x);
    k := k + x;
  end;

  CloseFile(f);
  ShowMessage(IntToStr(k));
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  f: TextFile;
  x, k: Integer;
begin
  AssignFile(f, 'my2.txt');
  Reset(f);
  k := 0;
  while not EOLN(f) do
  begin
    Read(f, x);
    k := k + x;
  end;

  CloseFile(f);
  ShowMessage(IntToStr(k));
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  f: TextFile;
  x, k: Integer;
begin
  AssignFile(f, 'my2.txt');
  Reset(f);
  k := 0;
  while not SeekEoln(f) do
  begin
    Read(f, x);
    k := k + x;
  end;

  CloseFile(f);
  ShowMessage(IntToStr(k));
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  f: TextFile;
  x, k: Integer;
begin
  AssignFile(f, 'my2.txt');
  Reset(f);
  k := 0;
  while not SeekEof(f) do
  begin
    Read(f, x);
    k := k + x;
  end;

  CloseFile(f);
  ShowMessage(IntToStr(k));
end;

end.

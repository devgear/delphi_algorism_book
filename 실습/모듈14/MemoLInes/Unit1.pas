unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    memEx: TMemo;
    Edit1: TEdit;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
  Form1.memEx.Lines.Add('첫 번째 줄');
  Form1.memEx.Lines.Add('두 번째 줄');
  Form1.memEx.Lines.Add('세 번째 줄');
  Form1.memEx.Lines.Add('네 번째 줄');
  Form1.memEx.Lines.Add('다섯 번째 줄');
  Form1.memEx.Lines.Add('여섯 번째 줄');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  s: string;
begin
  Init;

  s := memEx.Lines[2];  // 3번째 줄의 값을 변수 s에 할당
  memEx.Lines[3] := '안녕'; // 문자열 상수 '안녕'을 4번째 줄에 할당
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  k: Integer;
begin
  Init;

  k := memEx.Lines.Count;

  Edit1.Text := IntToStr(k);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Init;

  memEx.Lines.Delete(0);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i, k: Integer;
begin
  k := memEx.Lines.Count;
  for i := k-1 downto 1 do
    if (i mod 2) <> 0 then
      memEx.Lines.Delete(i);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Init;
  memEx.Lines.Exchange(0, 1); // 0번과 1번 줄을 맞바꾼다.
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  memEx.Lines.Move(1, 5);
end;

end.

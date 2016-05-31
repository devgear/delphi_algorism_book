unit Unit_CH14_5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Memo3: TMemo;
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
  i:byte;
  x:integer;
begin
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  for i := 0 to Memo1.Lines.Count -1  do
  begin
      x := StrToInt(Memo1.Lines[i]);
      if x mod 2 = 0  then
      begin
         x := x * 2;
         Memo2.Lines.Add(IntToStr(x))
      end
      else
      begin
         x := x div 2;
         Memo3.Lines.Add(IntToStr(x))
      end
  end;
end;

end.

unit Unit_ch15_1;

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
  i:integer;
begin
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  for I := 0 to Memo1.Lines.Count  -1  do
    if StrToInt(Memo1.Lines[i]) > 0 then
       Memo2.Lines.Add(Memo1.Lines[i])
    else
       Memo3.Lines.Add(Memo1.Lines[i])
end;
end.

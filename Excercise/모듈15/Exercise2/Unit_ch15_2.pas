unit Unit_ch15_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
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
  i,j:integer;
begin
  for i := 0 to Memo1.Lines.Count - 1  do
    for j := i+1  to Memo1.Lines.Count - 1 do
        if Memo1.Lines[j] < Memo1.Lines[i] then
           Memo1.Lines.Exchange(i,j);
end;

end.

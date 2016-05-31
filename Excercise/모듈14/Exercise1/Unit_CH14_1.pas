unit Unit_CH14_1;

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
  i:byte;
  cnt:integer;
begin
  cnt := Memo1.Lines.Count;
  if cnt >= 4 then
  begin
     for i := cnt-1 downto 4 do
     begin
         memo1.Lines.Delete(i);
     end;
  end
  else
  begin
    for i := cnt -1  downto 1  do
      memo1.Lines.Delete(i);
  end;
end;


end.

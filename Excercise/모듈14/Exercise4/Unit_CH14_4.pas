unit Unit_CH14_4;

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


{
  procedure TForm1.Button4Click(Sender: TObject);
  begin
  cnt := memo1.Lines.Count;
  s := memo1.lines[0];
  max := length(s);

  for I := cnt - 1 to 1 do
  begin
     s := memo1.Lines[i];
     if max  < length(s) then
        memo1.Lines.Move(i,0);
  end ;
  end;
}


procedure TForm1.Button1Click(Sender: TObject);
var
  i:byte;
  cnt:integer;
  s:string;
  max:integer;
  j: Integer;
begin
 for i := 0 to Memo1.Lines.Count - 1 do
     for j := 1 to Memo1.Lines.Count  do
        if Length(Memo1.Lines[i]) <
        Length(Memo1.Lines[j])  then
          Memo1.Lines.Move(j,i);
end;
end.

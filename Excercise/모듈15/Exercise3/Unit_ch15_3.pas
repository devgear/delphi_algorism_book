unit Unit_ch15_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
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
  i,j:integer;
begin
  Memo3.Lines.Clear;
   for i := 0 to Memo1.Lines.Count - 1 do
      for j := 0  to Memo2.Lines.Count - 1 do
         if Memo1.Lines[i] = Memo2.Lines[j] then
            Memo3.Lines.Add( Memo1.Lines[i]);
  if Memo3.Lines.Count < 0  then
     ShowMessage('일치하는 데이터가 없습니다');
end;
end.

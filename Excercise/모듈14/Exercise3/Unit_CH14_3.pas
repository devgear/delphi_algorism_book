unit Unit_CH14_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    ReplaceDialog1: TReplaceDialog;
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
  i,j:byte;
  cnt:integer;
  line1,line2:integer;
  s,s1,s2:string;
  max:integer;
  x,y:integer;
begin
  cnt := memo1.Lines.Count;

  for i := 0 to cnt - 1 do
  begin
      s := Memo1.Lines[i];
      if pos('강아지',s) > 0 then
      begin
         while Length(s) > 0 do
         begin
           s1 := copy(s,1,pos('강아지',s)-1);
           s1 := s1 + '고양이';
           delete(s,1,pos('강아지',s)+6);
         end;
         Memo1.Lines[i] := s1 + s;
      end;
      if pos('고양이',s) > 0 then
      begin
         while Length(s) > 0 do
         begin
           s1 := copy(s,1,pos('고양이',s)-1);
           s1 := s1 + '강아지';
           delete(s,1,pos('고양이',s)+6);
         end;
         Memo1.Lines[i] := s1 + s;
      end;
end;
end;
end.

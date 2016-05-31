unit Unit_ch12_5;

interface

uses
  System.Classes, Vcl.Controls, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.StrUtils;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
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
  s,s1:string;
begin
  s := Edit1.Text;
  i := pos(('('),Edit1.text);
  j := pos((')'),Edit1.text);
  s1 := copy(s,i+1,(j-i)-1);
  Edit2.Text := s1;
end;

end.

unit Unit_ch6_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
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
  s:string;
begin
  s := '';
  j := Length(Edit1.Text);
  for I := j Downto 1 do
  begin
    s := s + Copy(Edit1.Text,i,1);
  end;

  i := StrToInt(Edit1.Text);
  j := StrToInt(s);

  if i = j then
     Label1.Caption := s + ' 값이 같습니다'
  else
    label1.Caption :=  s + ' 값이 같지 않습니다'
end;





end.

unit Unit_ch8_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
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
  a,b,c:integer;
  Total:integer;
  s,Width:real;

begin
  a := StrToInt(Edit1.Text);
  b := StrToInt(Edit2.Text);
  c := StrToInt(Edit3.Text);

  Total  := a+b+c;
  s := Total / 2;
  Width := SQRT(s * (s-a)* (s-b) * (s-c));

  Label2.caption := 'µ—∑π = ' + IntToStr(Total);
  Label3.Caption := '≥–¿Ã = ' + FloatToStr(Width);


end;

end.

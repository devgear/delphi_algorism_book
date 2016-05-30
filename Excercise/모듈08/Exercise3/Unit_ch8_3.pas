unit Unit_ch8_3;

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
  i,j:integer;
  r1,r2:real;
  Total:integer;
  s,Width:real;

begin
  r1 := StrToInt(Edit1.Text) div 2;
  r2 := StrToInt(Edit2.Text) div 2 ;

  Width := ((SQR(r2) * 3.14) - (SQR(r1) * 3.14));

  Label3.Caption := 'π›¡ˆ¿«≥–¿Ã = ' + FloatToStr(Width);


end;

end.

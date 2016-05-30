unit Unit_ch4_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
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
  r:real;
  i:integer;
begin
  r := StrToFloat(Edit1.Text);
  Label1.Caption := IntToStr(Trunc(r));
  i := pos('.',edit1.Text);
  Label2.Caption := copy(Edit1.Text, i+1,(Length(Edit1.Text)- i));

end;
end.

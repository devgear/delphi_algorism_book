unit Unit_ch8_1;

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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

procedure Exchange_var(var value1, value2:variant);

implementation
{$R *.dfm}
procedure Exchange_var(var value1, value2:variant);
var
  Temp:variant;
begin
  Temp := value1;
  Value1 := value2;
  value2 := Temp;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  s1,s2:variant;
begin
  s1 := Edit1.Text;
  s2 := Edit2.Text;

  Exchange_var(s1,s2);

  Label1.caption := s1;
  Label2.Caption := s2;



end;





end.

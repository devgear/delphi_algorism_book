unit Unit_ch4_5;

interface

uses
  System.Math,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
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
  s,s1 :string;
  i,j:integer;
  r1,r2:real;
begin
  s := Edit1.Text;
  r1 := (tan(StrToInt(Edit2.Text)) * StrToFloat(Edit1.Text));
  s := FloattoStr(r1);
  delete(s,1, pos('.',s));
  s1 := copy(s,1,2);
  Label3.Caption :=
  Format('나무의 키는 : %d m %d cm',[trunc(r1),StrToInt(s1)]);
 end;





end.

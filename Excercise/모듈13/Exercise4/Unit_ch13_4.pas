unit Unit_ch13_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,system.json;

type
  TForm88 = class(TForm)
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
  Form88: TForm88;

implementation

{$R *.dfm}

procedure TForm88.Button1Click(Sender: TObject);
var
  s,s1,s2:string;
  code :integer;
  r1,r2:real;
begin
  s := Edit1.Text;
  s1 := Copy(s,1, Pos(('+'),s)-1);
  Delete(s, 1, Pos(('+'),s));
  s2 := Copy(s,1,Pos(('='),s)-1);
  Val(s1, r1, code);
  Val(s2, r2,code);
  Label1.Caption := Edit1.Text + FloatToStr(r1+r2);
  end;

end.

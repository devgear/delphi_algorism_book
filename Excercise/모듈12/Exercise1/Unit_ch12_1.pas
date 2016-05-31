unit Unit_ch12_1;

interface

uses
  System.Classes, Vcl.Controls, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.StrUtils;

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
  s,s1,s2,s3:string;
begin
  s := Edit1.Text;
  s1 := copy(s,1,pos(' ',s)-1);
  delete(s,1,pos(' ',s));

  s2 := copy(s,1,pos(' ', s)-1);
  delete(s,1,pos(' ',s));

  s3 := s;

  Label1.Caption := s1+ ' ' + s3+ ' ' + s2 + ' ';
end;

end.

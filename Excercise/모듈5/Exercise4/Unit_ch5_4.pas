unit Unit_ch5_4;

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
  i,j,k:integer;
  s :string;
begin
  s := copy(Edit1.Text,1,1);
  i := StrToInt(s);
  s := copy(Edit1.Text,2,1);
  j := StrToInt(s);
  s := copy(Edit1.Text,3,1);
  k := StrToInt(s);

  Label1.Caption := 'False';
  if i+j = k then
     Label1.Caption := 'True';
  if i+k = j then
     Label1.Caption := 'True';
  if i+j = k then
     Label1.Caption := 'True';
  if j+k = i then
     Label1.Caption := 'True';

end;





end.

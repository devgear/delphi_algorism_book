unit Unit_ch16_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm88 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form88: TForm88;

implementation
var
  i,j,k:integer;
{$R *.dfm}

procedure TForm88.Button1Click(Sender: TObject);

begin
  i := StrToInt(Edit1.Text);
  j := StrToInt(Edit2.TexT);
  k := random(j-i+1)+i;

  if StrtoInt(Edit3.Text) = k then
     ShowMessage('예상이 맞았습니다')

  else if k > StrToInt(Edit3.Text) then
     ShowMessage(' 더 작은 수를 입력 하셨습니다')
  else  showmessage('더 큰 수 입력하셨습니다');

 end;

procedure TForm88.Button2Click(Sender: TObject);
begin
  ShowMessage(IntToStr(k));
end;

end.

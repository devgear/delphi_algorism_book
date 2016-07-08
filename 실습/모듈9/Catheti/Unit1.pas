unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCatheti = class(TForm)
    edtAlfa: TEdit;
    edtA: TEdit;
    lblB: TLabel;
    btnRun: TButton;
    procedure btnRunClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatheti: TfrmCatheti;

implementation

{$R *.dfm}

function Tg(x: Real): Real;
var
  y: Real;
begin
  y := x/180*pi;
  Tg := sin(y)/cos(y); // 함수 이름(Tg) 대신 Result를 써도 된다.
end;

procedure TfrmCatheti.btnRunClick(Sender: TObject);
var
  a, b, alfa: Real;
begin
  alfa := StrToFloat(edtAlfa.Text); // alfa 각도를 읽는다.
  a := StrToFloat(edtA.Text); // 인접한 변 a의 길이를 읽는다.
  b := a*Tg(alfa);  // 빗변이 아닌 또 다른 변 b의 길이를 계산한다.
  lblB.Caption := FloatToStr(b); // b를 출력한다.
end;

end.

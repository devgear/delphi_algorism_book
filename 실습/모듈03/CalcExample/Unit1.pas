unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalc = class(TForm)
    edtA: TEdit;
    edtB: TEdit;
    btnAdd: TButton;
    lblResult: TLabel;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalc: TfrmCalc;

implementation

{$R *.dfm}

procedure TfrmCalc.btnAddClick(Sender: TObject);
var
  a, b, c: Single;
begin
  a := StrToFloat(edtA.Text); // 숫자 A에 값을 넣는다.
  b := StrToFloat(edtB.Text); // 숫자 B에 값을 넣는다.
  c := a + b;

  lblResult.Visible := True;  // 레이블이 보이도록 한다
  lblResult.Caption := FloatToStr(c); // 결과값을 레이블에 넣는다.(넣기 전에 우선 String으로 변환해야 한다)
end;

end.

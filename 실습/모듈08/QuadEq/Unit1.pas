unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmQuadEq = class(TForm)
    btnFind: TButton;
    lblX1: TLabel;
    lblX2: TLabel;
    lblNo: TLabel;
    edtA: TEdit;
    edtB: TEdit;
    edtC: TEdit;
    lblCoefs: TLabel;
    procedure btnFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuadEq: TfrmQuadEq;

implementation

{$R *.dfm}

procedure Init;
begin
  frmQuadEq.lblX1.Visible := False;
  frmQuadEq.lblX2.Visible := False;
  frmQuadEq.lblNo.Visible := False;
end;

procedure CoefInput(var k1, k2, k3: Real);
begin
  k1 := StrToFloat(frmQuadEq.edtA.Text);
  k2 := StrToFloat(frmQuadEq.edtB.Text);
  k3 := StrToFloat(frmQuadEq.edtC.Text);
end;

procedure Prn(Xf, Xs: Real);
begin
  frmQuadEq.lblX1.Visible := True;
  frmQuadEq.lblX1.Caption := 'x1=' + FloatToStr(Xf);
  frmQuadEq.lblX2.Visible := True;
  frmQuadEq.lblX2.Caption := 'x2=' + FloatToStr(Xs);
end;

procedure Calc(k1, k2, dis: Real; var Xf, Xs: Real);
begin
  Xf := (-k2+Sqrt(dis))/(2*k1);
  Xf := (-k2-Sqrt(dis))/(2*k1);
end;

procedure TfrmQuadEq.btnFindClick(Sender: TObject);
var
  A, B, C, D, X1, X2: Real;
begin
  Init;
  CoefInput(A, B, C); // 계수 A,B,C를 읽는다.
  D := Sqr(B) - 4*A*C;  // 판별식D를 계산하나.
  if D >= 0 then  // (D가 0보다 크거나 같으면)
  begin
    Calc(A, B, D, X1, X2);  // A,B,D를 이용해 근 x1, x2를 계산한다.
    Prn(X1, X2); // 근 x1, x2를 출력한다.
  end
  else
    lblNo.Visible := True; // 사용자에게 해법이 없다고 알린다.
end;

end.

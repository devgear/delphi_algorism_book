unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMy = class(TForm)
    btnMax: TButton;
    edtA: TEdit;
    edtB: TEdit;
    lblMax: TLabel;
    procedure btnMaxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMy: TfrmMy;

implementation

{$R *.dfm}

procedure TfrmMy.btnMaxClick(Sender: TObject);
var
  a, b, m: Integer;
begin
  a := StrToInt(edtA.Text);
  b := StrToInt(edtB.Text);
  if a > b then
    m := a
  else
    m := b;

  lblMax.Caption := IntToStr(m);
end;

end.

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmArr = class(TForm)
    btn: TButton;
    edtCh1: TEdit;
    edtCh2: TEdit;
    memIsh: TMemo;
    lblAMax: TLabel;
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArr: TfrmArr;

implementation

{$R *.dfm}

const
  n = 20;

type
  Array_n_elements = array[1..n] of Integer;

procedure SetArrayRange(var ch1, ch2: Integer);
begin
  ch1 := StrToInt(frmArr.edtCh1.Text);
  ch2 := StrToInt(frmArr.edtCh2.Text);
end;

procedure FillArray(var a: Array_n_elements; rMin, rMax: Integer);
var
  i: Integer;
begin
  Randomize;
  for i := 1 to n do
    a[i] := Random(rMax-rMin+1) + rMin;
end;

procedure OutputArray(a: Array_n_elements; n: Integer);
var
  i: Integer;
begin
  frmArr.memIsh.Lines.Clear;
  for i := 0 to n-1 do
    frmArr.memIsh.Lines.Append(IntToStr(a[i+1]));
end;

function Max(a: Array_n_elements): Integer;
var
  i, m: Integer;
begin
  m := a[1];
  for i := 1 to n do
    if a[i] > m then
      m := a[i];
  Max := m;
end;

procedure TfrmArr.btnClick(Sender: TObject);
var
  rMin, rMax: Integer;
  AMax: Integer;
  A: Array_n_elements;
begin
  SetArrayRange(rMin, rMax);
  FillArray(a, rMin, rMax);
  OutputArray(a, n);
  AMax := Max(a);
  lblAMax.Caption := IntToStr(AMax);
end;

end.

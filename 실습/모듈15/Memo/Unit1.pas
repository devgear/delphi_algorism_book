unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEx = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    memEx: TMemo;
    Button4: TButton;
    Button5: TButton;
    edtEx: TEdit;
    lblEx: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx: TfrmEx;

implementation

{$R *.dfm}

procedure TfrmEx.Button1Click(Sender: TObject);
begin
  memEx.Lines.Clear;
end;

procedure TfrmEx.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  memEx.Lines.Clear;
  for I := 0 to 10 do
  begin
    memEx.Lines.Append(IntToStr(I));
  end;
end;

procedure TfrmEx.Button3Click(Sender: TObject);
begin
  memEx.Lines.Add('이 예문은 문자열 목록을 사용한다.');
end;

procedure TfrmEx.Button4Click(Sender: TObject);
var
  b: Integer;
begin
  b := memEx.Lines.Add(edtEx.Text);
  lblEx.Caption := IntToStr(b);
end;

procedure TfrmEx.Button5Click(Sender: TObject);
begin
  memEx.Lines.Insert(2, ''); // 2번 줄에 빈줄을 하나 끼워넣는다. 원래 있던 2번 줄은 삭제되지 않고 뒤로 밀린다.
end;

function PlMin(numStr: Integer): Integer;
var
  k, m: Integer;
begin
  m := NumStr; // 우선, 비교를 시작할 줄을 최소값 줄이라고 하자(시작하는 줄 번호를 최소값의 줄 번호에 넣는다.)
  for k := m+1 to frmEx.memEx.Lines.Count - 1 do // NumStr 번에서 시작하여 그 이하의 모든 줄마다 반복한다.
    if frmEx.memEx.Lines[k] < frmEx.memEx.Lines[m] then // 만약 현재 줄이 최소값 줄의 번호이면
      m := k; // m값(최소값 줄의 번호)을 현재 줄 번호로 바꾼다.

  plMin := m; // 찾아 낸 최소값의 줄 번호를 함수의 반환 값에 넣는다.
end;

procedure TfrmEx.Button6Click(Sender: TObject);
var
  i, j: Integer;
begin
  for i := 0 to memEx.Lines.Count - 1 do // TMemo 전체 줄 반복
  begin
    j := plMin(i);  // i 번 줄에서 마지막 줄까지 중에서, 최소값 줄의 번호를 찾아낸다.
    memEx.Lines.Exchange(i, j); // 서로 자리를 맞바꾼다.
  end;

end;

end.

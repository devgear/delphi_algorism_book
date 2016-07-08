unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
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
  Okf1, Okf2: Boolean;
  StF1, StF2: string;
  f, g: TextFile;
begin
  Okf1 := OpenDialog1.Execute;
  if Okf1 then
  begin
    StF1 := OpenDialog1.FileName;
    AssignFile(f, StF1);
    Reset(f);

    // 파일안에 있는 데이터를 처리

    CloseFile(f);
  end;

  Okf2 := SaveDialog1.Execute;
  if Okf2 then
  begin
    Stf2 := SaveDialog1.FileName;
    AssignFile(g, Stf2);
    Rewrite(g);

    // 파일에 데이터를 써넣는다. 데이터를 처리한다 등.

    CloseFile(g);
  end;
end;

end.

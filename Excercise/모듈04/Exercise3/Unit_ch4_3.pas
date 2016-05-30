unit Unit_ch4_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
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
begin
  i := StrToInt(Edit1.Text);
  j := StrToInt(Edit2.Text);
  k := StrToInt(Edit3.Text);
  Label1.Caption :=  IntToStr(i+j+k);
  Label2.Caption :=  IntToStr(i*j*k);
end;





end.

unit Unit_ch22_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
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
 d,d1:TDate;
begin
 try
   d := StrtoDate(Edit1.text);
 except
   raise Exception.Create('유효한 날자가 아닙니다');
 end;
 if Date = d then
   raise Exception.Create('오늘 날자인비다');

  if Date > d then
    d1:= Date - d
  else
    d1 := d - Date;

  Label1.Caption := FormatDateTime('yy 년 mm월 dd일' ,d1)+ '떨어져 있습니다';
end;
end.

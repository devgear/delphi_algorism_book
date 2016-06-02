unit Unit_ch23_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit2: TEdit;
    Button1: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Clock_Time:integer;
  Flag:boolean;
implementation

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
  Flag := True;
  try
    Clock_Time := StrToInt(Edit2.Text);
  except
    raise Exception.Create('시간 간격이 틀립니다');
  end;
  if Clock_Time <= 0 then
     raise Exception.Create('시간 간격을 제로보다 크게 주십시오');

   Timer1.Enabled := true;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Panel1.Caption := IntTostr(Clock_Time);

   if Clock_Time = 0 then
   begin
     Edit2.Color := clRed;
     Flag := False;
   end
   else if (Edit2.Text  = Panel1.Caption) and (Flag = False) then
      Timer1.Enabled := False;

   if (Clock_Time  >  0) and (Flag = True) then
      Clock_Time := Clock_Time - 1
   else
      Clock_Time := Clock_Time + 1;
end;

end.

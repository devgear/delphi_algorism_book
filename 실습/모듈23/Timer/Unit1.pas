unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
begin
  Timer1.Interval := 1500;
  Timer1.Enabled := True;
  Timer2.Interval := 20000;
  Timer2.Enabled := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer3.Interval := 1000;
  Timer3.Enabled := True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Form1.Color := 256*256*Random(256) + 256*Random(256)+Random(256);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Edit1.Left := Edit1.Left + 15;
end;

end.

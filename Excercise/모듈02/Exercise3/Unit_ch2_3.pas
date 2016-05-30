unit Unit_ch2_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  Label1.Enabled := True;
  Label2.Enabled := False;
  Label3.Enabled := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label1.Enabled := False;
  Label2.Enabled := True;
  Label3.Enabled := False;
end;



procedure TForm1.Button3Click(Sender: TObject);
begin
  Label1.Enabled := False;
  Label2.Enabled := False;
  Label3.Enabled := True;
end;

end.

unit Unit_ch10_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
begin
    Canvas.Pen.Width := 1;
    canvas.Ellipse(100,100, clientwidth div 2,clientwidth div 2 );
    canvas.Ellipse(100,210, (clientwidth div 2)+10,(clientwidth div 2)+110 );
end;

end.

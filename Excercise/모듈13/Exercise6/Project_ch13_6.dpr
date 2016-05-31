program Project_ch13_6;

uses
  Vcl.Forms,
  Unit_ch13_6 in 'Unit_ch13_6.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

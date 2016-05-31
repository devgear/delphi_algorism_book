program Project_ch13_7;

uses
  Vcl.Forms,
  Unit_ch13_7 in 'Unit_ch13_7.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

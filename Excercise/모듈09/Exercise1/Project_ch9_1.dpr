program Project_ch9_1;

uses
  Vcl.Forms,
  Unit_ch9_1 in 'Unit_ch9_1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

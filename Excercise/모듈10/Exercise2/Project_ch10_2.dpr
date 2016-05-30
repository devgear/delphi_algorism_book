program Project_ch10_2;

uses
  Vcl.Forms,
  Unit_ch10_2 in 'Unit_ch10_2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

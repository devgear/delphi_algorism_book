program Project_ch12_9;

uses
  Vcl.Forms,
  Unit_ch12_9 in 'Unit_ch12_9.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

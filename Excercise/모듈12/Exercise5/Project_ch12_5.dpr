program Project_ch12_5;

uses
  Vcl.Forms,
  Unit_ch12_5 in 'Unit_ch12_5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

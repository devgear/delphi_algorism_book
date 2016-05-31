program Project_ch12_7;

uses
  Vcl.Forms,
  Unit_ch12_7 in 'Unit_ch12_7.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

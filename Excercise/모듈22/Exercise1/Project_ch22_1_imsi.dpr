program Project_ch22_1_imsi;

uses
  Vcl.Forms,
  Unit_ch22_1_imsi in 'Unit_ch22_1_imsi.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

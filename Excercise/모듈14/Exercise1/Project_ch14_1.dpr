program Project_ch14_1;

uses
  Vcl.Forms,
  Unit_CH14_1 in 'Unit_CH14_1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

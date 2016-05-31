program Project_ch14_5;

uses
  Vcl.Forms,
  Unit_CH14_5 in 'Unit_CH14_5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

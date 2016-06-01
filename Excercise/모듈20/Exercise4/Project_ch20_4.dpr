program Project_ch20_4;

uses
  Vcl.Forms,
  Unit_ch20_4 in 'Unit_ch20_4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

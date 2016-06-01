program Project_ch16_1;

uses
  Vcl.Forms,
  Unit_ch16_1 in 'Unit_ch16_1.pas' {Form88};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm88, Form88);
  Application.Run;
end.

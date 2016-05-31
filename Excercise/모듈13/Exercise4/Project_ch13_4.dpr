program Project_ch13_4;

uses
  Vcl.Forms,
  Unit_ch13_4 in 'Unit_ch13_4.pas' {Form88};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm88, Form88);
  Application.Run;
end.

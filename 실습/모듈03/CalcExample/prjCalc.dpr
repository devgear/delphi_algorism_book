program prjCalc;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmCalc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalc, frmCalc);
  Application.Run;
end.

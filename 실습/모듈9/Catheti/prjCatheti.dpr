program prjCatheti;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmCatheti};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCatheti, frmCatheti);
  Application.Run;
end.

program prjQuadEq;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmQuadEq};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuadEq, frmQuadEq);
  Application.Run;
end.

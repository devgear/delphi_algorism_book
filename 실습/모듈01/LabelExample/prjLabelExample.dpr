program prjLabelExample;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmLabelExample};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLabelExample, frmLabelExample);
  Application.Run;
end.

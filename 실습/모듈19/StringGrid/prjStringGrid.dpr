program prjStringGrid;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGrid, frmGrid);
  Application.Run;
end.

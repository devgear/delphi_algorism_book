program prjButtonPressEventHandling;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmMy};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMy, frmMy);
  Application.Run;
end.

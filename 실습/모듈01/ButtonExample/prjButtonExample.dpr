program prjButtonExample;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmButtonExample};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmButtonExample, frmButtonExample);
  Application.Run;
end.

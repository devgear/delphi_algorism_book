program prjEditBoxExample;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmEditBoxExample};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEditBoxExample, frmEditBoxExample);
  Application.Run;
end.

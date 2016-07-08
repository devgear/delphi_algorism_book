program prjMemo;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmEx};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEx, frmEx);
  Application.Run;
end.

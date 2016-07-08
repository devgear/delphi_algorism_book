program prjArraySort;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmArr};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmArr, frmArr);
  Application.Run;
end.

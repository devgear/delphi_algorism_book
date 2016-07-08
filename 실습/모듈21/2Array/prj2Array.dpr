program prj2Array;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frm2Arr};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm2Arr, frm2Arr);
  Application.Run;
end.

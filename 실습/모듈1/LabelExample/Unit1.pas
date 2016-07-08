unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLabelExample = class(TForm)
    lblMyLabel: TLabel;
    lblAnother: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLabelExample: TfrmLabelExample;

implementation

{$R *.dfm}

end.

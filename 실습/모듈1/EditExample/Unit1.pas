unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEditBoxExample = class(TForm)
    edtMyText: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditBoxExample: TfrmEditBoxExample;

implementation

{$R *.dfm}

end.

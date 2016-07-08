unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMy = class(TForm)
    btnMy: TButton;
    Edit1: TEdit;
    lblMy: TLabel;
    procedure btnMyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMy: TfrmMy;

implementation

{$R *.dfm}

procedure TfrmMy.btnMyClick(Sender: TObject);
begin
  frmMy.Close;

  Edit1.Clear;

  frmMy.Color := clWhite;

  lblMy.Caption := Edit1.Text;

  Edit1.Clear;
  Edit1.Color := clBlue;
end;

end.

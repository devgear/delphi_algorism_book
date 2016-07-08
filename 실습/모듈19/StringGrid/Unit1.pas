unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmGrid = class(TForm)
    edtLine: TEdit;
    edtStolb: TEdit;
    edtFline: TEdit;
    edtFstolb: TEdit;
    sgdMy: TStringGrid;
    btnTabl: TButton;
    btnCellRed: TButton;
    btnFCGreen: TButton;
    procedure btnTablClick(Sender: TObject);
    procedure btnFCGreenClick(Sender: TObject);
    procedure btnCellRedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrid: TfrmGrid;

implementation

{$R *.dfm}

procedure GetGridParam(var n1, n2, n3, n4: Integer);
begin
  n1 := StrToInt(frmGrid.edtLine.Text);
  n2 := StrToInt(frmGrid.edtStolb.Text);
  n3 := StrToInt(frmGrid.edtFline.Text);
  n4 := StrToInt(frmGrid.edtFstolb.Text);
end;

procedure CreateGrid(n1, n2, n3, n4: Integer);
begin
  frmGrid.sgdMy.RowCount := n2;
  frmGrid.sgdMy.ColCount := n1;
  frmGrid.sgdMy.FixedCols := n4;
  frmGrid.sgdMy.FixedRows := n3;
end;

procedure TfrmGrid.btnTablClick(Sender: TObject);
var
  nl, ns, nfl, nfs: Integer;
begin
  GetGridParam(nl, ns, nfl, nfs);
  CreateGrid(nl, ns, nfl, nfs);
end;

procedure TfrmGrid.btnCellRedClick(Sender: TObject);
begin
  frmGrid.sgdMy.Color := clRed;
end;

procedure TfrmGrid.btnFCGreenClick(Sender: TObject);
begin
  frmGrid.sgdMy.FixedColor := clGreen;
end;

end.

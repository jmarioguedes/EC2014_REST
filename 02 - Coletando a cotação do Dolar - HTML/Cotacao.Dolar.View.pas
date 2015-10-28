{
  www.arrayof.com.br - mario.guedes@arrayof.com.br
}

unit Cotacao.Dolar.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TfView = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fView: TfView;

implementation

{$R *.dfm}

uses
  Cotacao.Dolar.Model;

procedure TfView.Button1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    Self.Label1.Caption := dmModel.CotacaoDolar;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfView.FormCreate(Sender: TObject);
begin
  Self.PageControl1.ActivePageIndex := 0;
end;

end.

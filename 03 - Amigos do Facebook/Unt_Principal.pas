unit Unt_Principal;

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
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    eAccessToken: TEdit;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Unt_Nucleo;

procedure TForm1.Button1Click(Sender: TObject);
var
  iQuantidade: Integer;
begin
  dmNucleo.ProcessarLista(Self.eAccessToken.Text, iQuantidade);

  Self.Label1.Caption := IntToStr(iQuantidade);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  sID: string;
begin
  sID := dmNucleo.PostarMensagem(Self.eAccessToken.Text);
  ShowMessage(sID);
end;

procedure TForm1.DBEdit4Change(Sender: TObject);
begin
//  dmNucleo.RecuperarFoto
//    ('/hprofile-ak-xfa1/v/t1.0-1/c170.50.621.621/s50x50/388001_109771965804024_146796929_n.jpg?oh=cad0f88ea4c280ad1d0c3e2cf83cc8ec&oe=54B74CB2&__gda__=1420761218_294cc1d87eeaf95b495a637fb0f8ba69');
end;

end.

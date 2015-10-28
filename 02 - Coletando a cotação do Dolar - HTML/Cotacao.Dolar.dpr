program Cotacao.Dolar;

uses
  Vcl.Forms,
  Cotacao.Dolar.View in 'Cotacao.Dolar.View.pas' {fView},
  Cotacao.Dolar.Model in 'Cotacao.Dolar.Model.pas' {dmModel: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfView, fView);
  Application.CreateForm(TdmModel, dmModel);
  Application.Run;
end.

unit Unt_Nucleo;

interface

uses
  System.SysUtils,
  System.Classes,
  IPPeerClient,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  REST.Client,
  REST.Json.Types,
  Data.DB,
  Datasnap.DBClient,
  REST.Response.Adapter;

type

  TIDMessage = class(TObject)
  private
    FID: string;
  published
    property ID: string read FID write FId;
  end;

  TdmNucleo = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    ClientDataSet1: TClientDataSet;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RESTRequest3: TRESTRequest;
    RESTResponse3: TRESTResponse;
  private
    { Private declarations }
  public
    procedure ProcessarLista(const AAccessToken: string; out AQuantidade: Integer);
    procedure RecuperarFoto(const AURL: string);
    function PostarMensagem(const AAccessToken: string): string;
  end;

var
  dmNucleo: TdmNucleo;

implementation

uses
  REST.Json,
  System.Json;

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TDataModule1 }

function TdmNucleo.PostarMensagem(const AAccessToken: string): string;
const
  C_MENSAGEM = 'Outro Teste';
var
  oResposta: TIDMessage;
begin
  Self.RESTRequest3.Params.ParameterByName('access_token').Value := AAccessToken;
  Self.RESTRequest3.Params.ParameterByName('message').Value := '#ECon2014 Postado a partir do Delphi XE7';
  Self.RESTRequest3.Execute;

  if (Self.RESTResponse3.StatusCode in [200, 201]) then
  begin
    oResposta := TJson.JsonToObject<TIDMessage>(TJSONObject(Self.RESTResponse3.JSONValue));
    Result := oResposta.ID;
  end;
end;

procedure TdmNucleo.ProcessarLista(const AAccessToken: string; out AQuantidade: Integer);
begin
  Self.RESTRequest1.Params.ParameterByName('access_token').Value := AAccessToken;
  Self.RESTRequest1.Execute;

  if Self.RESTResponse1.StatusCode <> 200 then
  begin
    raise Exception.CreateFmt('Deu algum erro: [%d]', [Self.RESTResponse1.StatusCode]);
  end;

  AQuantidade :=

  TJSONNumber(
      TJSONObject(
          TJSONObject(
              TJSONObject(
                  Self.RESTResponse1.JSONValue
              ).Get('friends').JSONValue
          ).Get('summary').JsonValue
      ).Get('total_count').JsonValue
  ).AsInt;
end;

procedure TdmNucleo.RecuperarFoto(const AURL: string);
begin
  Self.RESTRequest2.Resource := AURL;
  Self.RESTRequest2.Execute;

  Self.RESTResponse2.Content
end;

end.

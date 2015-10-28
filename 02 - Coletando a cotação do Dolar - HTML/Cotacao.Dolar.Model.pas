{
  www.arrayof.com.br - mario.guedes@arrayof.com.br
}

unit Cotacao.Dolar.Model;

interface

uses
  System.SysUtils,
  System.Classes,
  IdContext,
  IdBaseComponent,
  IdComponent,
  IdCustomTCPServer,
  IdTCPServer,
  IdTCPConnection,
  IdTCPClient;

type
  TdmModel = class(TDataModule)
    IdTCPClient1: TIdTCPClient;
  private
    function NegociacaoHTTP: string;
  public
    property CotacaoDolar: string read NegociacaoHTTP;
  end;

var
  dmModel: TdmModel;

implementation

uses
  IdGlobal,
  System.RegularExpressions,
  Cotacao.Dolar.View;

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}
{ TDataModule2 }

function TdmModel.NegociacaoHTTP: string;
const
  C_TAMANHO = '^Content-length:[ ]*(?<TAMANHO>\d+)$';
  C_DOLAR_HOJE = 'O (euro|dolar) tá R\$ (?<VALOR>[^!]+)!';
var
  slPedido   : TStringList;
  slResposta : TStringList;
  iTam       : Integer;
  aConteudo  : TArray<Byte>;
  sPaginaHTML: string;
  _tamanho   : TMatch;
  _dolar     : TMatch;
begin
  fView.Memo1.Clear;

  iTam := 0;
  slPedido := TStringList.Create;
  slResposta := TStringList.Create;
  try
    slPedido.Add('GET / HTTP/1.1');
    slPedido.Add('Host: eurohoje.com');
    //slPedido.Add('Host: dolarhoje.com');
    slPedido.Add('User-Agent: Embarcadero Conference 2014');
    slPedido.Add('');

    fView.Memo1.Lines.Add(slPedido.Text);
    fView.Memo1.Lines.Add(StringOfChar('-', 80));
    fView.Memo1.Lines.Add('');

    Self.IdTCPClient1.Host := 'dolarhoje.com';
    Self.IdTCPClient1.Port := 80;
    Self.IdTCPClient1.Connect;
    Self.IdTCPClient1.WriteRFCStrings(slPedido);

    slResposta.Text := Self.IdTCPClient1.Socket.ReadLn(#13#10#13#10);
    fView.Memo1.Lines.Add(slResposta.Text);

    _tamanho := TRegEx.Match(slResposta.Text, C_TAMANHO, [roMultiLine, roIgnoreCase]);
    if (_tamanho.Success) then
    begin
      iTam := StrToIntDef(_tamanho.Groups['TAMANHO'].Value, 0)
    end;

    if (iTam = 0) then
    begin
      raise Exception.Create('Não retornou conteúdo válido!');
    end;

    Self.IdTCPClient1.Socket.ReadBytes(TidBytes(aConteudo), iTam);
    sPaginaHTML := TEncoding.UTF8.GetString(aConteudo);
    fView.Memo1.Lines.Add(StringReplace(sPaginaHTML, #10, #13#10, [rfReplaceAll]));

    _dolar := TRegEx.Match(sPaginaHTML, C_DOLAR_HOJE, []);
    if not(_dolar.Success) then
    begin
      raise Exception.Create('Não foi localizado o valor do dólar!');
    end;

    Result := _dolar.Groups['VALOR'].Value;
  finally
    slPedido.Free;
    slResposta.Free;
    Self.IdTCPClient1.Disconnect;
  end;
end;

end.

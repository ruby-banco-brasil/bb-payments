=begin
openapi: 3.0.1
info:
  title: Pagamentos em Lote
  description: API para realizar consultas, requisições, liberações, cancelamentos, etc., de pagamento/transferências em lote.
  contact:
    name: Banco do Brasil S.A. - BB for Developers
    url: https://developers.bb.com.br
  version: '1.41'

[Implemented] - [Tag]      => Description
[N] - [GPS]                => Pagamentos que envolvem GPS
[N] - [GRU]                => Pagamentos que envolvem GRUs
[N] - [DARF Preto]         => Pagamentos que envolvem DARFs Preto
[Y] - [Pagamentos]         => Pagamentos que envolvem mais de um tipo de Pagamento
[N] - [Código de Barras]   => Pagamentos que envolvem Códigos de Barras
[Y] - [Transferências]     => Pagamentos que envolvem Transferências
[N] - [Boletos]            => Pagamentos que envolvem Boletos
[Y] - [Transferências-PIX] => Pagamentos que envolvem Transferências do tipo PIX

=end

module BancoBrasilPayments
  class BatchPaymentsApi
    include BaseApi
    include Payments
    include Transfers

    attr_accessor :api_client, :gw_app_key

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @gw_app_key = @api_client.config.gw_app_key
    end

    def swagger(opts = {})
      validations(api_client: api_client)

      client_opts = build_client_opts(api_client: api_client,
                                      gw_app_key: gw_app_key,
                                      opts: opts)

      call_api_client(api_client: api_client,
                      http_method: :GET,
                      path: '/swagger',
                      data_only: opts.fetch(:data_only, true),
                      client_opts: client_opts)
    end
  end
end

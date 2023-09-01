# frozen_string_literal: true

=begin
[Transferências-PIX] => Pagamentos que envolvem Transferências do tipo PIX

[Implemented] - [Endpoint]                             => Description
[Y ]- [POST /lotes-transferencias-pix]                 => Efetuar Pagamentos em Lote via Transferência PIX
[Y*]- [GET /pagamentos]                                => Consultar Pagamentos (* See BancoBrasilPayments::Payments)
[Y ]- [GET /lotes-transferencias-pix/{id}/solicitacao] => Consultar Solicitação de Transferências PIX

=end
module BancoBrasilPayments::TransfersPix
  include BancoBrasilPayments::BaseApi

  # POST /lotes-transferencias-pix
  # Efetuar Pagamentos em Lote via Transferência PIX
  def create_batch_transfers_pix(body, opts = {})
    validations(api_client: api_client, body: body, validate_body: true)

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts,
                                    return_type: 'BatchPixResponse',
                                    body: @api_client.object_to_http_body(body))
    client_opts[:header_params]['Content-Type'] = @api_client.select_header_content_type(['application/json'])
    data_only = opts.fetch :data_only, true

    call_api_client(api_client: api_client,
                    http_method: :POST,
                    path: '/lotes-transferencias-pix',
                    data_only: data_only,
                    client_opts: client_opts)
  end

  # GET  /lotes-transferencias-pix/{id}/solicitacao
  # # Consultar Solicitação de Transferências PIX
  def find_batch_transfer_pix(id, opts = {})
    validations(api_client: api_client, required_params: { id: id })

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts)
    client_opts[:query_params][:'index'] = opts[:'index'] if !opts[:'index'].nil?

    call_api_client(api_client: api_client,
                    http_method: :GET,
                    path: "/lotes-transferencias-pix/#{id}/solicitacao",
                    data_only: opts.fetch(:data_only, true),
                    client_opts: client_opts)
  end
end

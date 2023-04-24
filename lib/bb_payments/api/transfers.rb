# frozen_string_literal: true

=begin
[Transferências]     => Pagamentos que envolvem Transferências

[Implemented] - [Endpoint]                             => Description
[N ]- [GET /lotes-transferencias] Consulta Lote de Pagamentos realizados via Transferências
[Y ]- [POST /lotes-transferencias] Efetua Lote de Pagamentos realizados via Transferências
[Y*]- [GET /pagamentos] Consultar Pagamentos (* See BancoBrasilPayments::Payments)
[N ]- [GET /beneficiarios/{id}/transferencias] Consultar Transferências por Beneficiário

=end
module BancoBrasilPayments::Transfers
  # POST /lotes-transferencias
  # Efetua Lote de Pagamentos realizados via Transferências
  def create_batch_transfers(body, opts = {})
    validations(api_client: api_client, body: body, validate_body: true)

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts,
                                    return_type: 'BatchTransfersResponse',
                                    body: @api_client.object_to_http_body(body))
    client_opts[:header_params]['Content-Type'] = @api_client.select_header_content_type(['application/json'])
    data_only = opts.fetch :data_only, true

    call_api_client(api_client: api_client,
                    http_method: :POST,
                    path: '/lotes-transferencias',
                    data_only: data_only,
                    client_opts: client_opts)
  end
end

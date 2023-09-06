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

  # GET /lotes-transferencias
  # Realiza consulta a um Lote de Pagamentos realizados via Tranferência Bancária
  def consult_batch_transfers(opts = {})
    validations(api_client: api_client)

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts)

    query_params = client_opts[:query_params]
    query_params[api_client.config.app_key_name.to_sym] = gw_app_key
    query_params[:numeroContratoPagamento] = opts[:payment_contract] unless opts[:payment_contract].nil?
    query_params[:agenciaDebito] = opts[:debit_branch_office] unless opts[:debit_branch_office].nil?
    query_params[:contaCorrenteDebito] = opts[:debit_current_account] unless opts[:debit_current_account].nil?
    unless opts[:check_digits_debit_current_account].nil?
      query_params[:digitoVerificadorContaCorrente] =
        opts[:check_digits_debit_current_account]
    end
    query_params[:dataInicio] = opts[:start_date].strftime('%d%m%Y').to_i unless opts[:start_date].nil?
    query_params[:dataFim] = opts[:end_date].strftime('%d%m%Y').to_i unless opts[:end_date].nil?
    query_params[:tipoPagamento] = opts[:payment_type] unless opts[:payment_type].nil?
    query_params[:estadoRequisicao] = opts[:request_state] unless opts[:request_state].nil?
    query_params[:index] = opts[:index] unless opts[:index].nil?

    call_api_client(api_client: api_client,
                    http_method: :GET,
                    path: '/lotes-transferencias',
                    data_only: opts.fetch(:data_only, true),
                    client_opts: client_opts)
  end

  # GET /beneficiarios/{id}/transferencias
  # Consultar Tranferências Bancárias realizadas por Beneficiário
  def consult_beneficiary_transfers(id, index, beneficiary_kind, start_date, end_date)
    validations(api_client: api_client)

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts)

    query_params = client_opts[:query_params]
    query_params[api_client.config.app_key_name.to_sym] = gw_app_key
    query_params[:indice] = index
    query_params[:tipoBeneficiario] = beneficiary_kind
    query_params[:dataInicio] = start_date
    query_params[:dataFim] = end_date
    query_params[:agenciaDebito] = opts[:debit_branch_office] unless opts[:debit_branch_office].nil?
    query_params[:contaCorrenteDebito] = opts[:debit_current_account] unless opts[:debit_current_account].nil?
    unless opts[:check_digits_debit_current_account].nil?
      query_params[:digitoVerificadorContaCorrente] =
        opts[:check_digits_debit_current_account]
    end
    query_params[:tipoPagamento] = opts[:payment_type] unless opts[:payment_type].nil?
    query_params[:numeroCOMPE] = opts[:clearinghouse_code] unless opts[:clearinghouse_code].nil?
    query_params[:numeroISPB] = opts[:ispb_code] unless opts[:ispb_code].nil?
    query_params[:agenciaCredito] = opts[:credit_branch_office] unless opts[:credit_branch_office].nil?
    query_params[:contaCorrenteCredito] = opts[:credit_current_account] unless opts[:credit_current_account].nil?
    unless opts[:check_digits_credit_current_account].nil?
      query_params[:digitoVerificadorContaCorrenteCredito] =
        opts[:check_digits_credit_current_account]
    end
    query_params[:contaPagamentoCredito] = opts[:credit_paymen_account] unless opts[:credit_paymen_account].nil?

    call_api_client(api_client: api_client,
                    http_method: :GET,
                    path: "/beneficiarios/#{id}/transferencias",
                    data_only: opts.fetch(:data_only, true),
                    client_opts: client_opts)
  end
end

# frozen_string_literal: true

=begin
[Pagamentos] Pagamentos que envolvem mais de um tipo de Pagamento

[Implemented] - [Endpoint]        => Description
[Y] - [POST /liberar-pagamentos]  => Liberar Pagamentos
[Y] - [POST /cancelar-pagamentos] => Cancelar Lote de Pagamentos
[Y] - [GET /pagamentos]           => Consultar Pagamentos
[N] - [GET /transferencias/{id}]  => Consultar um Pagamento Específico de um Lote de Transferências
[Y] - [GET /{id}]                 => Consultar um Lote de Pagamentos
[N] - [GET /{id}/solicitacao]     => Consultar sobre a Solicitação de um Lote de Pagamentos

=end
module BancoBrasilPayments::Payments


  # POST /liberar-pagamentos Liberar Pagamentos
  # Permite que a empresa efetue a liberação dos lotes de pagamentos diretamente de seu sistema de gestão - ERP.
  #
  # Após o comando de liberação, o processamento do pagamento de todos os lançamentos do lote liberado dependerá da
  # existência de saldo em conta até o horário limite para efetivação de cada um deles, da validação dos dados e demais
  # regras pactuadas na contratação do serviço.
  #
  # A situação de cada lançamento deverá se consultada posteriormente.
  #
  # O mesmo lote poderá ser liberado mais de uma vez. Por exemplo: Foi enviado lançamentos com data de pagamento do dia
  # anterior e do dia corrente. Após foi comandada a liberação do lote. Nesse caso, apenas os lançamentos com data do
  # dia corrente seriam efetivados. Mas a empresa poderá alterar a data de pagamento dos lançamentos com data
  # incorreta e após solicitar novamente a liberação do lote.
  def liberar_pagamentos_with(id, float, opts = {})
    validations(api_client: api_client, validate_body: false, required_params: { id: id, float: float })


    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts,
                                    body: {
                                      numeroRequisicao: id,
                                      indicadorFloat: float ? 'S' : 'N'
                                    },
                                    return_type: 'Hash<String, String>')
    call_api_client(api_client: api_client,
                    http_method: :POST,
                    path: '/liberar-pagamentos',
                    data_only: opts.fetch(:data_only, true),
                    client_opts: client_opts)
  end

  # POST /cancelar-pagamentos Cancelar Lote de Pagamentos
  # Efetua o Cancelamento de um Lote de Pagamentos
  def cancel_payments(body, opts = {})
    validations(api_client: api_client, body: body, validate_body: true)

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts,
                                    return_type: 'Hash<String, Array<Object>>',
                                    body: @api_client.object_to_http_body(body))

    call_api_client(api_client: api_client,
                    http_method: :POST,
                    path: '/cancelar-pagamentos',
                    data_only: opts.fetch(:data_only, true),
                    client_opts: client_opts)
  end

  # GET /pagamentos Consultar Pagamentos
  # Consulta os pagamentos e transferências das requisição feitas para efetuar pagamentos em lote,
  # inclusive pagamentos e transferências relacionados ao PIX. Detre as informações consulatas estão o
  # motivo e valores devolvidos.
  def consult_payments(start_date, end_date, opts = {})
    validations(api_client: api_client, required_params: { start_date: start_date, end_date: end_date })

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts)

    # query parameters
    query_params = client_opts[:query_params]
    query_params[@api_client.config.app_key_name.to_sym] = gw_app_key
    query_params[:'dataInicio'] = start_date.strftime('%d%m%Y').to_i
    query_params[:'dataFim'] = end_date.strftime('%d%m%Y').to_i
    query_params[:'agenciaDebito'] = opts[:'debit_branch_office'] if !opts[:'debit_branch_office'].nil?
    query_params[:'contaCorrenteDebito'] = opts[:'debit_current_account'] if !opts[:'debit_current_account'].nil?
    query_params[:'digitoVerificadorContaCorrente'] = opts[:'check_digits_debit_current_account'] if !opts[:'check_digits_debit_current_account'].nil?
    query_params[:'numeroContratoPagamento'] = opts[:'payment_contract'] if !opts[:'payment_contract'].nil?
    query_params[:'estadoPagamento'] = opts[:'payment_state'] if !opts[:'payment_state'].nil?
    query_params[:'index'] = opts[:'index'] if !opts[:'index'].nil?

    call_api_client(api_client: api_client,
                    http_method: :GET,
                    path: '/pagamentos',
                    data_only: opts.fetch(:data_only, true),
                    client_opts: client_opts)
  end

  # GET /{id}
  # Consulta um lote de pagamentos.
  def find_batch_payments(id, opts = {})
    validations(api_client: api_client, required_params: { id: id })

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts,
                                    return_type: 'FindBatchResponse')

    call_api_client(api_client: api_client,
                    http_method: :GET,
                    path: id.to_s,
                    data_only: opts.fetch(:data_only, true),
                    client_opts: client_opts)
  end

  # GET /transferencias/{id}
  # Consultar um Pagamento Específico de um Lote de Transferências.
  def find_payment(id, opts = {})
    validations(api_client: api_client, required_params: { id: id })

    client_opts = build_client_opts(api_client: api_client,
                                    gw_app_key: gw_app_key,
                                    opts: opts,
                                    return_type: 'FindPaymentResponse')

    call_api_client(api_client: api_client,
                    http_method: :GET,
                    path: "/transferencias/#{id.to_s}",
                    data_only: opts.fetch(:data_only, true),
                    client_opts: client_opts)
  end
end

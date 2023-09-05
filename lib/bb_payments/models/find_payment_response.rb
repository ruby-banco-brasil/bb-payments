# Objeto de Requisição quando da solicitação para efetuar pagamentos em lote via Transferência PIX.
module BancoBrasilPayments
  class FindPaymentResponse < BaseModel
    attr_accessor :id, :debit_branch_office, :debit_current_account, :check_digits_debit_current_account # id	|| integer($int64)

    # Descrição da situação do pagamento:
    # DOMÍNIOS:
    # Agendado - Pagamento aguardando a data para efetivação do crédito;
    # Cancelado - Pagamento cancelado pelo Cliente Conveniado antes da data do crédito;
    # Consistente - Dados recebidos pelo Banco sem ocorrências quanto ao formato. Aguardando validação dos dados para liberação/efetivação dos pagamentos;
    # Devolvido - Pagamento efetuado e posteriormente recusado pelo recebedor. O valor é devolvida para a Conta corrente onde ocorreu o débito da requisição;
    # Inconsistente - Dados recebidos pelo Banco com ocorrências quanto ao formato. A situação será alterada para rejeitado;
    # Pago - Pagamento efetuado;
    # Pendente - Falta autorização para o débito do pagamento na conta do cliente conveniado;
    # Rejeitado - Dados do pagamento não passaram na validações físicas e/ou lógicas. Ex: agência e conta não existem, conta não pertence ao CPF informado;
    # Vencido - Pagamento não efetuado na data indicada por falta de saldo ou falta de autorização para débito do pagamento na conta do cliente conveniado."
    attr_accessor :payment_state # estadoPagamento	|| string

    # Tipo de pagamento consultado.
    # DOMÍNIOS:
    # 1 - CRÉDITO EM CONTA 3 - DOC ou TED 5 - CRÉDITO EM POUPANCA 13 - GUIA COM CÓDIGO DE BARRA 21 - GUIA SEM CÓDIGO DE BARRA 30 - BOLETO BANCO DO BRASIL 31 - BOLETO OUTROS BANCOS 45 - PIX 71 - DEPÓSITO JUDICIAL
    attr_accessor :credit_type # tipoCredito | integer($int32) # agenciaDebito | integer($int32) # contaCorrenteDebito | integer($int32) # digitoVerificadorContaCorrente | string

    # Numero do documento de debito exibido no extrato do pagador.
    attr_accessor :debit_document # documentoDebito |	integer

    # Código de autenticação do pagamento.
    attr_accessor :payment_auth_code # codigoAutenticacaoPagamento |	string

    # Número do depósito judicial informado como favorecido do crédito. Disponível para efetivação de Depósito Judicial no BB.
    attr_accessor :deposit_in_court_identifier # numeroDepositoJudicial | string

    # Código adotado pela FEBRABAN informado para identificação da finalidade do DOC.
    attr_accessor :credit_order_purpose_code # codigoFinalidadeDOC |	string

    # Codigo adotado pelo Banco Central informado para identificar a finalidade da TED.
    attr_accessor :wire_transfer_purpose_code # codigoFinalidadeTED | string

    # Data em que o cliente enviou ao Banco a requisição de pagamento em lote.
    attr_accessor :payment_date # dataPagamento | string

    # Valor total dos Pagamentos.
    attr_accessor :payment_value # valorPagamento | 	number($double)

    # TODO
    # atributo listaPagamentos (Tipo ligeiramente diferente do TransferBase e TrasferPixBase)

    # Lista de pagamentos a serem processados em lote. Não permitido mais de 500 registros.
    attr_accessor :devolution_list # listaDevolucao | array

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        id: :id,
        payment_state: :estadoPagamento,
        credit_type: :tipoCredito,
        payment_date: :dataPagamento,
        payment_value: :valorPagamento,
        devolution_list: :listaDevolucao,
        debit_branch_office: :agenciaDebito,
        debit_current_account: :contaCorrenteDebito,
        check_digits_debit_current_account: :digitoVerificadorContaCorrente,
        debit_document: :documentoDebito,
        payment_auth_code: :codigoAutenticacaoPagamento,
        deposit_in_court_identifier: :numeroDepositoJudicial,
        credit_order_purpose_code: :codigoFinalidadeDOC,
        wire_transfer_purpose_code: :codigoFinalidadeTED
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        id: :Integer,
        payment_state: :String,
        credit_type: :Integer,
        payment_date: :NumberDate,
        payment_value: :Float,
        devolution_list: 'Array<Devolution>'
      }
    end
  end
end

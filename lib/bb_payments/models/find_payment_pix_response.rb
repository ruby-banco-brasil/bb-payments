module BancoBrasilPayments
  # Objeto de Requisição quando da solicitação para efetuar pagamentos em lote via Transferência PIX.
  class FindPaymentPixResponse < BaseModel
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

    attr_accessor :id # id	|| integer($int64)

    # Data em que o cliente enviou ao Banco a requisição de pagamento em lote.
    attr_accessor :payment_date # dataPagamento | string

    # Valor total dos Pagamentos.
    attr_accessor :payment_value # valorPagamento | 	number($double)

    # Lista de pagamentos a serem processados em lote. Não permitido mais de 500 registros.
    attr_accessor :payment_description # descricaoPagamento | string

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        id: :id,
        payment_date: :dataPagamento,
        payment_value: :valorPagamento,
        payment_description: :descricaoPagamento,
        payment_state: :estadoPagamento
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        id: :Integer,
        payment_date: :NumberDate,
        payment_value: :Float,
        payment_description: :String,
        payment_state: :String
      }
    end
  end
end

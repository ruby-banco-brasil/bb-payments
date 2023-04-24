module BancoBrasilPayments
  # Objeto de Requisição quando da solicitação para efetuar pagamentos em lote via Transferência PIX.
  class BatchTransfersResponse < BaseModel

    # Código que identifica o estado da solicitação.
    # 1 - Requisição com todos os lançamentos com dados consistentes;
    # 2 - Requisição com ao menos um dos lançamentos com dados inconsistentes;
    # 3 - Requisição com todos os lançamentos com dados inconsistentes;
    # 4 - Requisição pendente de ação pelo Conveniado - falta autorizar o pagamento;
    # 5 - Requisição em processamento pelo Banco;
    # 6 - Requisição Processada;
    # 7 - Requisição Rejeitada,
    # 8 - Preparando remessa não liberada,
    # 9 - Requisição liberada via API,
    # 10 - Preparando remessa liberada.
    #
    # As situações 1, 2 e 8 são transitórias e não requerem qualquer ação do Cliente Conveniado.
    # situação 3 sempre será migrada para situação 7.
    # A situação 4 Significa que, ao menos um lançamento, depende de ação do Cliente Conveniado, seja liberando ou cancelando os pagamentos.
    # As situações 5, 6, 7, 9 e 10 não requerem qualquer ação do Cliente Conveniado.
    # A situação 5 significa que, ao menos um lançamento, está agendado.
    # As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição.
    attr_accessor :request_status

    # Quantidade total dos lançamentos enviados para pagamento.
    attr_accessor :payments_total_quantity

    # Valor total dos lançamentos enviados para pagamento.
    attr_accessor :payments_total_value

    # Quantidade total de lançamentos válidos.
    attr_accessor :valid_payments_total_quantity

    # Valor total dos lançamentos válidos.
    attr_accessor :valid_payments_total_value

    # Lista de transferências enviada. Os campos desta lista dizem respeito a crédito a determinado beneficiário.
    attr_accessor :payments_list

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        request_status: :estadoRequisicao,
        payments_total_quantity: :quantidadeTransferencias,
        payments_total_value: :valorTransferencias,
        valid_payments_total_quantity: :quantidadeTransferenciasValidas,
        valid_payments_total_value: :valorTransferenciasValidas,
        payments_list: :transferencias
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        request_status: :Integer,
        payments_total_quantity: :Integer,
        payments_total_value: :Float,
        valid_payments_total_quantity: :String,
        valid_payments_total_value: :Float,
        payments_list: :'Object'
      }
    end
  end
end

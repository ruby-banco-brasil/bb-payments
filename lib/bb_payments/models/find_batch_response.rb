module BancoBrasilPayments
  # Objeto de Requisição quando da solicitação para efetuar pagamentos em lote via Transferência PIX.
  class FindBatchResponse < BaseModel
    # Posição do índice. Cada resposta tem um limite de 300 ocorrências na lista paymentList, 
    # iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso.
    attr_accessor :next_index # indice ||	integer($int64)

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
    # A situação 3 sempre será migrada para situação 7.
    # A situação 4 Significa que, ao menos um lançamento, depende de ação do Cliente Conveniado, 
    #   seja liberando ou cancelando os pagamentos.
    # As situações 5, 6, 7, 9 e 10 não requerem qualquer ação do Cliente Conveniado.
    # A situação 5 significa que, ao menos um lançamento, está agendado.
    # As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição.
    attr_accessor :request_status # estadoRequisicao	|| integer($int32)

    # Informado pela API de acordo com o endpoint utilizado pelo cliente. 
    # Pode ser: 126=Pagamento a Fornecedores; 127=Pagamento de Salários; 128=Pagamentos Diversos.
    attr_accessor :payment_type # tipoPagamento	|| integer($int32)

    # Data em que o cliente enviou ao Banco a requisição de pagamento em lote.
    attr_accessor :request_date # dataRequisicao | integer($int32) || example: 16042020

    # Quantidade total de Pagamentos
    attr_accessor :payments_total_quantity # quantidadePagamentos | integer($int64)

    # Valor total dos Pagamentos.
    attr_accessor :payments_total_value # valorPagamentos | 	number($double)

    # Lista de pagamentos a serem processados em lote. Não permitido mais de 500 registros.
    attr_accessor :payments_list # pagamentos | array

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        next_index: :indice,
        request_status: :estadoRequisicao,
        payment_type: :tipoPagamento,
        request_date: :dataRequisicao,
        payments_total_quantity: :quantidadePagamentos,
        payments_total_value: :valorPagamentos,
        payments_list: :pagamentos
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        next_index: :Integer,
        request_status: :Integer,
        payment_type: :Integer,
        request_date: :NumberDate,
        payments_total_quantity: :Integer,
        payments_total_value: :Float,
        payments_list: 'Array<FindBatchPayment>'
      }
    end
  end
end

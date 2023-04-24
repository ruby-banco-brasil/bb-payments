module BancoBrasilPayments
  # Objeto de Requisição quando da solicitação para efetuar pagamentos em lote via Transferência PIX.
  class FindBatchPayment < BaseModel
    # Número único gerado pelo Banco. 
    # Deve ser utilizado pelo Cliente Conveniado para efetivar consultas posteriores ao lançamento.
    attr_accessor :payment_id # identificadorPagamento |	integer($int64)

    # Data em que deverá ser efetuado o pagamento ao favorecido.
    attr_accessor :payment_date # dataPagamento	| integer($int32) | example: 17042020

    # Valor do Pagamento que deverá ser efetuada a crédito do favorecido.
    attr_accessor :payment_value # valorPagamento	| number($double) | example: 4000.75 

    # A modalidade que representa a maneira como o crédito foi dado, descrito a seguir: 
    # 1 significa Crédito em Conta Corrente; 3 significa DOC ou TED; 5 significa Crédito em Conta Poupança; 
    # 13 significa Liquidação de Guia com Código de Barra; 21 significa Liquidação de Guia sem Código de Barra; 
    # 30 significa Liquidação de Boleto Bancário; 31 significa Liquidação de Papéis Diversos; 
    # 71 significa Depósito Judicial.
    attr_accessor :credit_type # tipoCredito |	integer($int32)

    # Identification of Individual or Corporate Taxpayer Registration with the Federal Revenue Service;   CPF ou CNPJ do beneficiário no pagamento
    attr_accessor :beneficiary_kind # tipoBeneficiario	| integer($int32)
    
    # É o Nº CPF ou um Nº de CNPJ do Favorecido/Beneficiario do pagamento informado no envio do lançamento na requisição
    attr_accessor :taxpayer_registration # cpfCnpjBeneficiario	| integer($int64)

    # Nome da pessoa ou empresa beneficiária no pagamento
    attr_accessor :beneficiary_name # nomeBeneficiario |	string

    # Descrição da situação do pagamento: Domínios:
    # 
    # Consistente (pagamento recebido pelo banco, cumprem as regras de preenchimento dos campos mas ainda irá para validação e processamento)
    # Inconsistente (pagamento não aceito pelo banco por dados de entrada inconsistentes - não cumpre as regras de preenchimento dos campos)
    # Pago (pagamento efetuado ao favorecido)
    # Pendente (pagamento validado - pendência de autorização do pagamento por parte do pagador)
    # Aguardando saldo (débito não efetivado e em verificação de saldo até o horário limite da teimosinha).
    # Agendado (pagamento autorizado, porém aguardando a data de efetivação do pagamento ou horário de processamento)
    # Rejeitado (dados do pagamento não passaram na validações físicas e/ou lógicas, precisam ser corrigidos e reenviados. Ex: agência e conta não existem, conta não pertence ao CPF informado)
    # Cancelado (pagamento cancelado pelo pagador antes da data de efetivação do crédito)
    # Bloqueado (Débito na conta do pagador não efetivado por ocorrência no convênio, inconsistência de data/float ou falta de saldo)
    # Devolvido (pagamento efetuado e posteriormente devolvido pelo favorecido ou instituição recebedora. O valor é devolvido para a conta corrente onde ocorreu o débito da requisição)"
    # Debitado (pagamento debitado na conta do pagador e pendente de crédito ao favorecido)horário de processamento,
    # PAGO - Pagamento realizado ao Favorecido,
    # 
    # REJEITADO - Dados do Favorecido inválidos, o que impede a efetivação do pagamento. Dados precisam ser corrigidos e reenviados,
    # 
    # DEVOLVIDO - Pagamento efetuado e posteriormente devolvido pelo Favorecido/Banco destinatário,
    # 
    # VENCIDO - Pagamento não efetuado na data indicada,
    # 
    # CANCELADO - Pagamento cancelado pelo Pagador antes da data de efetivação do crédito.
    attr_accessor :payment_status # estadoPagamento	| string

    # Campo de uso livre pelo Cliente Conveniado - sem tratamento pelo Banco.
    attr_accessor :payment_description # descricaoPagamento	| string

    # Códigos de erros a serem verificados para correção dos dados e reenvio em novo lançamento. 
    # Quando ""0"" significa que não há erros de formatação nos dados.
    attr_accessor :error_codes_list # erros	| array

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        payment_id: :identificadorPagamento,
        payment_date: :dataPagamento,
        payment_value: :valorPagamento,
        credit_type: :tipoCredito,
        beneficiary_kind: :tipoBeneficiario,
        taxpayer_registration: :cpfCnpjBeneficiario,
        beneficiary_name: :nomeBeneficiario,
        payment_status: :estadoPagamento,
        payment_description: :descricaoPagamento,
        error_codes_list: :erros
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        payment_id: :Integer,
        payment_date: :NumberDate,
        payment_value: :Float,
        credit_type: :Integer,
        beneficiary_kind: :Integer,
        taxpayer_registration: :String,
        beneficiary_name: :String,
        payment_status: :String,
        payment_description: :String,
        error_codes_list: :Object
      }
    end
  end
end

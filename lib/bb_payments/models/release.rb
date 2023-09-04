module BancoBrasilPayments
  # Objeto de Requisição quando da solicitação para efetuar pagamentos em lote via Transferência PIX.
  class Release < BaseModel
    # Número da requisição de transferências de valores.
    attr_accessor :payment_request_number # numeroRequisicaoPagamento |	integer($int32)

    # Descrição da situação do pagamento.
    # Enum: [ Consistente, Inconsistente, Pendente, Agendado, Pago, Rejeitado, Devolvido, Cancelado, Debitado, Bloqueado, Aguardando Saldo ]
    attr_accessor :payment_state # textoEstadoPagamento | string

    # Número identificador do pagamento. Equivale ao número do protocolo do evento.
    attr_accessor :payment_id # codigoIdentificadorDoPagamento | integer($int64)

    # Nome do favorecido.
    attr_accessor :beneficiary_name # nomeDoFavorecido | string

    # Tipo de pessoa do Beneficiário (1 - Física, 2 - Jurídica).
    attr_accessor :beneficiary_kind # tipoBeneficiario	| integer($int32)

    # Número do CPF ou CNPJ do favorecido do pagamento.
    attr_accessor :tax_number # numeroCPFouCNPJ | integer($int64)

    # Data do pagamento.   
    attr_accessor :payment_date # dataPagamento	| integer($int32) | example: 17042020

    # Valor do Pagamento que deverá ser efetuada a crédito do favorecido.
    attr_accessor :payment_value # valorPagamento	| number($double) | example: 4000.75 

    # Numero do documento de débito informado pelo pagador para apresentação no extrato do favorecido.
    attr_accessor :debit_document_number # numeroDocumentoDebito | integer($int64)

    # Numero do documento de crédito informado pelo pagador para apresentação no extrato do favorecido.
    attr_accessor :credit_document_number # numeroDocumentoCredito | integer($int64)

    # Código da forma de crédito.
    # Enum [ 1, 3, 5, 13, 21, 30, 47, 71 ]
    attr_accessor :credit_form_code # codigoFormaCredito | integer($int32)

    # Código de autenticação do pagamento.
    attr_accessor :payment_auth_code # codigoAutenticacaoPagamento | string

    # Data do débito.
    attr_accessor :debit_date # dataDebito | integer($int32)

    # Código atribuído pelo sistema PRD ao produto a ser comercializado pelo BB (ativo/passivo/prestação de serviços).
    # Podendo ser: 126=Pagamento a Fornecedores; 127=Pagamento de Salários; 128=Pagamentos Diversos.
    attr_accessor :payment_type # codigoTipoPagamento | integer($int32)

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        payment_request_number: :numeroRequisicaoPagamento,
        payment_state: :textoEstadoPagamento,
        payment_id: :codigoIdentificadorDoPagamento,
        beneficiary_name: :nomeBeneficiario,
        beneficiary_kind: :tipoBeneficiario,
        tax_number: :numeroCPFouCNPJ,
        payment_date: :dataPagamento,
        payment_value: :valorPagamento,
        debit_document_number: :numeroDocumentoDebito,
        credit_document_number: :numeroDocumentoCredito,
        credit_form_code: :codigoFormaCredito,
        payment_auth_code: :codigoAutenticacaoPagamento,
        debit_date: :dataDebito,
        payment_type: :codigoTipoPagamento
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        payment_request_number: :Integer,
        payment_state: :String,
        payment_id: :Integer,
        beneficiary_name: :String,
        beneficiary_kind: :Integer,
        tax_number: :Integer,
        payment_date: :NumberDate,
        payment_value: :Float,
        debit_document_number: :Integer,
        credit_document_number: :Integer,
        credit_form_code: :Integer,
        payment_auth_code: :String,
        debit_date: :NumberDate,
        payment_type: :Integer
      }
    end
  end
end

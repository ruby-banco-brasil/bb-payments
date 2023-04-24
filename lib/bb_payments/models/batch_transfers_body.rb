module BancoBrasilPayments
  # Objeto de Requisição quando da solicitação para efetuar pagamentos em lote via Transferência PIX.
  class BatchTransfersBody < Body
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        request_identification: :numeroRequisicao,
        payment_contract: :numeroContratoPagamento,
        debit_branch_office: :agenciaDebito,
        debit_current_account: :contaCorrenteDebito,
        check_digits_debit_current_account: :digitoVerificadorContaCorrente,
        payment_type: :tipoPagamento,
        payments_list: :listaTransferencias
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        request_identification: :Integer,
        payment_contract: :Integer,
        debit_branch_office: :Integer,
        debit_current_account: :Integer,
        check_digits_debit_current_account: :String,
        payment_type: :Integer,
        payments_list: :'Array<TransferBase>'
      }
    end
  end
end

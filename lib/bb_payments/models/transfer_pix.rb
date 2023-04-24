require 'date'

module BancoBrasilPayments
  # Representação dos campos de uma solicitação de transferência em lote.
  class TransferPix < TransferPixBase

    # Número único gerado pelo Banco. Poderá ser utilizado pelo cliente conveniado para consultas o lançamento.
    attr_accessor :payment_id # identificadorPagamento || integer($int64)

    # Indicador de validação do preenchimento dos campos de cada lançamento.
    # Domínio: S - Sim (Indica que os dados foram informados conforme regra de preenchimento) N - Não (Indica que os dados não foram informados conforme regra de preenchimento)
    # Quando não aceito, cliente conveniado deverá observar o significado dos códigos de erro presentes no campo "erros".
    # Após corrigidos, o cliente conveniado poderá enviar o lançamento novamente em nova requisição de pagamento em lotes.
    attr_accessor :payment_accepted # indicadorMovimentoAceito || string maxLength: 1

    # Lista dos códigos de erro a serem verificados para correção dos dados.
    # Essa lista virá preenchida com até 10 códigos quando campo "indicadorMovimentoAceito" for igual a "N".
    attr_accessor :errors # erros || array

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      { payment_id: :identificadorPagamento,
        payment_accepted: :indicadorMovimentoAceito,
        errors: :erros }.merge super
    end

    # Attribute type mapping.
    def self.openapi_types
      { payment_id: :Integer,
        payment_accepted: :String,
        errors: :Object }.merge super
    end
  end
end

module BancoBrasilPayments
  # Objeto de Requisição quando consulta transferencia.
  class Devolution < BaseModel
    # Quando o pagamento estiver na situação:
    # Inconsistente ou Rejeitado - Detalha os motivos da rejeição do lançamento.
    # Devolvido - Detalha os motivos da devolução informada pelo Beneficiario do pagamento devolvido.
    attr_accessor :reason_code # codigoMotivo |	integer($int64)

    # Data em que deverá ser efetuado o pagamento ao favorecido.
    attr_accessor :devolution_date # dataDevolucao	| string

    # Valor do Pagamento que deverá ser efetuada a crédito do favorecido.
    attr_accessor :devolution_value # valorDevolucao	| number($double) | example: 4000.75 

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        reason_code: :codigoMotivo,
        devolution_date: :dataDevolucao,
        devolution_value: :valorDevolucao,
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        reason_code: :Integer,
        devolution_date: :NumberDate,
        devolution_value: :Float
      }
    end
  end
end

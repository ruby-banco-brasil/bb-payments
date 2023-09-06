module BancoBrasilPayments
  # Objeto de Requisição quando da solicitação para consultar lançamentos por período.
  class FindReleasesResponse < BaseModel
    # Posição do índice. Cada resposta tem um limite de 500 ocorrências na lista release_list, 
    # iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso.
    attr_accessor :next_index # numeroDaposicaoDePesquisa ||	integer($int32)

    attr_accessor :total_number # quantidadeOcorrenciasTotal	|| integer($int32)

    attr_accessor :total_number_tabled # quantidadeOcorrenciasTabeladas	|| integer($int32)

    # Lista de movimentos. Não permitido mais de 500 registros.
    attr_accessor :release_list # Movimentos | array

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        next_index: :numeroDaposicaoDePesquisa,
        total_number: :quantidadeOcorrenciasTotal,
        total_number_tabled: :quantidadeOcorrenciasTabeladas,
        release_list: :listaMovimento
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        next_index: :Integer,
        total_number: :Integer,
        total_number_tabled: :Integer,
        release_list: 'Array<Release>'
      }
    end
  end
end

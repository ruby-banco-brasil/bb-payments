require 'date'

module BancoBrasilPayments
  # Representação dos campos de uma solicitação de transferência em lote.
  class TransferPixBase < BaseModel

    # Data em que deverá ser efetuada a transferência para o favorecido. Formato: ddmmaaaa. 
    # Zero no início de numérico deve ser omitido.
    attr_accessor :payment_date # data || integer($int32) || example: 5112020

    # Valor do pagamento em reais (formato 0.00)
    attr_accessor :payment_value # valor || number($double)

    # Documento de débito que será mostrado no extrato da conta do pagador.  
    # Por ser um campo opcional, se não inserido, a conta de débito terá um único lançamento no valor total de todos os lançamentos de créditos validados. 
    # De igual modo será se o mesmo número for informado para todos os lançamentos de crédito.  
    # Quando números diferentes forem informados para cada lançamento, os lançamentos de débitos serão individualizados.
    attr_accessor :debit_document # documentoDebito || x-oad-type: integer

    # Número do documento de crédito exibido no extrato do favorecido - uso exclusivo para Crédito em conta corrente no BB.
    attr_accessor :credit_document # documentoCredito || integer($int64)

    # Campo de uso livre pelo cliente conveniado - sem tratamento pelo Banco.
    attr_accessor :payment_description # descricaoPagamento || string maxLength: 40
    
    # Descrição do pagamento instantâneo para fins de conciliação do próprio cliente. Campo de uso livre pelo cliente conveniado - sem tratamento pelo Banco.
    attr_accessor :instantaneous_payment_description # descricaoPagamentoInstantaneo || string maxLength: 35
 
    # Código da forma de identificação da conta transacional, a fim de que a transferência seja feita por meio da utilização de chaves ou apelidos. 
    # Domínio: 1 - Chave Pix tipo Telefone 2 - Chave Pix tipo Email 3 - Chave Pix tipo CPF/CNPJ 4 - Chave Aleatória 5 - Dados Bancários
    attr_accessor :key_type # formaIdentificacao || integer($int32)
    
    # Número de Discagem Direta à Distancia (DDD) do telefone do favorecido do crédito. 
    # Obrigatório caso campo "formaIdentificacao" seja 1.
    attr_accessor :phone_area_code # dddTelefone || integer($int32)

    # Número do telefone do favorecido do crédito. Obrigatório caso campo "formaIdentificacao" seja 1.
    attr_accessor :phone # telefone || integer($int32) 

    # Email do favorecido do crédito. Obrigatório caso campo "formaIdentificacao" seja 2.
    attr_accessor :email # email || string maxLength: 99

    # Número do CPF junto à Receita Federal. Não informado quando diz respeito ao pagamento de contribuinte do tipo pessoa jurídica.
    attr_accessor :individual_taxpayer_registration # cpf || integer($int64)

    # Número do CNPJ junto à Receita Federal. Não informado quando diz respeito ao pagamento de contribuinte do tipo pessoa física.
    attr_accessor :corporate_taxpayer_registration # cnpj || integer($int64)     

    # Código de identificação Aleatória do favorecido do crédito.
    # Obrigatório caso campo "formaIdentificacao" seja 4.
    attr_accessor :random_key # identificacaoAleatoria || string maxLength: 99    
    
    # Código de identificação da instituição para crédito na câmara de compensação (no Brasil, identificado pela sigla COMPE). 
    # Por exemplo, valor 1 para o Banco do Brasil e valor 104 para a Caixa Econômica Federal. Se o valor 0 for informado, o campo ispbCode será considerado.
    attr_accessor :clearinghouse_code # numeroCOMPE || 	integer($int32)

    # Código identificador do Sistema de Pagamento Brasileiro (Identificado pelo acrônimo ISPB) para crédito. 
    # Por exemplo, valor 0 para o Banco do Brasil e valor 360305 para a Caixa Econômica Federal. Não considerado quando o campo clearinghouse é informado.
    attr_accessor :ispb_code # numeroISPB || 	integer($int32)
    
    # Codigo do tipo de conta de crédito do favorecido. Domínio: 1 - Conta Corrente 2 - Conta Pagamento 3 - Conta Poupança
    attr_accessor :credit_account_kind # tipoConta || 	integer($int32)
    
    # Número da agência da conta de crédito do favorecido.
    # Obrigatório caso campo "formaIdentificacao" seja 5, e se campo "contaPagamento" não informado.
    attr_accessor :credit_branch_office # agencia || 	integer($int32)

    # Número da conta de crédito do favorecido. 
    # Obrigatório caso campo "formaIdentificacao" seja 5, e se campo "contaPagamento" não informado.
    attr_accessor :credit_current_account # conta || integer($int64)

    # Dígito verificador da agência da conta de crédito do favorecido.
    # Obrigatório caso campo "formaIdentificacao" seja 5, e se campo "contaPagamento" não informado.
    attr_accessor :check_digits_credit_current_account # digitoVerificadorConta || 	string maxLength: 1

    # Número da conta pagamento do favorecido.
    # Obrigatório caso campo "formaIdentificacao" seja 5, e caso os campos "agencia", "conta" e "digitoVerificadorConta" não sejam informados.
    attr_accessor :credit_payment_account # contaPagamento || string maxLength: 20

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        payment_date: :data,
        payment_value: :valor,
        debit_document: :documentoDebito,
        credit_document: :documentoCredito,
        payment_description: :descricaoPagamento,
        instantaneous_payment_description: :descricaoPagamentoInstantaneo,
        key_type: :formaIdentificacao,
        phone_area_code: :dddTelefone,
        phone: :telefone,
        email: :email,
        individual_taxpayer_registration: :cpf,
        corporate_taxpayer_registration: :cnpj,
        random_key: :identificacaoAleatoria,
        clearinghouse_code: :numeroCOMPE,
        ispb_code: :numeroISPB,
        credit_account_kind: :tipoConta,
        credit_branch_office: :agencia,
        credit_current_account: :conta,
        check_digits_credit_current_account: :digitoVerificadorConta,
        credit_payment_account: :contaPagamento,
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        payment_date: :Integer,
        payment_value: :Float,
        debit_document: :Integer,
        credit_document: :Integer,
        payment_description: :String,
        instantaneous_payment_description: :String,
        key_type: :Integer,
        phone_area_code: :Integer,
        phone: :Integer,
        email: :String,
        individual_taxpayer_registration: :Integer,
        corporate_taxpayer_registration: :Integer,
        random_key: :String,
        clearinghouse_code: :Integer,
        ispb_code: :Integer,
        credit_account_kind: :Integer,
        credit_branch_office: :Integer,
        credit_current_account: :Integer,
        check_digits_credit_current_account: :String,
        credit_payment_account: :String,
      }
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # TODO: add remaining constraints
    def list_invalid_properties
      invalid_properties = Array.new
      %i[payment_date payment_value key_type].each do |attr|
        next if send(attr).present?
        
        invalid_properties.push("invalid value for '#{attr}': cannot be nil.")
      end      

      invalid_properties
    end
  end
end

require 'date'

module BancoBrasilPayments
  # Representação dos campos de uma solicitação de transferência em lote.
  class TransferBase < BaseModel

    # Código de identificação da instituição para crédito na câmara de compensação (no Brasil, identificado pela sigla COMPE).
    # Por exemplo, valor 1 para o Banco do Brasil e valor 104 para a Caixa Econômica Federal. Se o valor 0 for informado, o campo ispbCode será considerado.
    attr_accessor :clearinghouse_code # numeroCOMPE || 	integer($int32)

    # Código identificador do Sistema de Pagamento Brasileiro (Identificado pelo acrônimo ISPB) para crédito.
    # Por exemplo, valor 0 para o Banco do Brasil e valor 360305 para a Caixa Econômica Federal. Não considerado quando o campo clearinghouse é informado.
    attr_accessor :ispb_code # numeroISPB || 	integer($int32)

    # Número da agência da conta de crédito do favorecido.
    # Obrigatório caso campo "formaIdentificacao" seja 5, e se campo "contaPagamento" não informado.
    attr_accessor :credit_branch_office # agenciaCredito || 	integer($int32)

    # Número da conta de crédito do favorecido.
    # Obrigatório caso campo "formaIdentificacao" seja 5, e se campo "contaPagamento" não informado.
    attr_accessor :credit_current_account # contaCorrenteCredito || integer($int64)

    # Dígito verificador da agência da conta de crédito do favorecido.
    # Obrigatório caso campo "formaIdentificacao" seja 5, e se campo "contaPagamento" não informado.
    attr_accessor :check_digits_credit_current_account # digitoVerificadorContaCorrente || 	string maxLength: 1

    # Número da conta pagamento do favorecido.
    # Obrigatório caso campo "formaIdentificacao" seja 5, e caso os campos "agencia", "conta" e "digitoVerificadorContaCorrente" não sejam informados.
    attr_accessor :credit_payment_account # contaPagamentoCredito || string maxLength: 20

    # Número do CPF junto à Receita Federal. Não informado quando diz respeito ao pagamento de contribuinte do tipo pessoa jurídica.
    attr_accessor :individual_taxpayer_registration # cpfBeneficiario || integer($int64)

    # Número do CNPJ junto à Receita Federal. Não informado quando diz respeito ao pagamento de contribuinte do tipo pessoa física.
    attr_accessor :corporate_taxpayer_registration # cnpjBeneficiario || integer($int64)

    # Data em que deverá ser efetuada a transferência para o favorecido. Formato: ddmmaaaa.
    # Zero no início de numérico deve ser omitido.
    attr_accessor :payment_date # dataTransferencia || integer($int32) || example: 5112020

    # Valor do pagamento em reais (formato 0.00)
    attr_accessor :payment_value # valorTransferencia || number($double)

    # Documento de débito que será mostrado no extrato da conta do pagador.
    # Por ser um campo opcional, se não inserido, a conta de débito terá um único lançamento no valor total de todos os lançamentos de créditos validados.
    # De igual modo será se o mesmo número for informado para todos os lançamentos de crédito.
    # Quando números diferentes forem informados para cada lançamento, os lançamentos de débitos serão individualizados.
    attr_accessor :debit_document # documentoDebito || x-oad-type: integer

    # Número do documento de crédito exibido no extrato do favorecido - uso exclusivo para Crédito em conta corrente no BB.
    attr_accessor :credit_document # documentoCredito || integer($int64)

    # Código de finalidade informado quando se trata de DOC. Uma lista de códigos permitidos é obtida na
    # Federação Brasileira de Bancos (identificada pela sigla FEBRABAN). Por exemplo, 1 para Crédito em Conta Corrente;
    # 11 para DOC em Conta Poupança; 12 para DOC em Conta de Depósito Judicial.
    attr_accessor :credit_order_purpose_code

    # Código de finalidade informado quando se trata de TED.  Uma lista de códigos permitidos é obtida no
    # Banco Central do Brasil (Identificado pelo acrônimo BACEN).
    attr_accessor :wire_transfer_purpose_code

    # Identificador informado quando se trata de depósito judicial.  Insira valor 1 para o campo COMPE ou valor 0 para
    # o campo ISPB.  Se esse campo estiver preenchido, os campos creditBranchOffice, creditCurrentAccount,
    # checkDigitsCreditCurrentAccount e creditPaymentAccount não deverão ser inseridos.
    attr_accessor :deposit_in_court_identifier

    # Campo de uso livre pelo cliente conveniado - sem tratamento pelo Banco.
    attr_accessor :payment_description # descricaoTransferencia || string maxLength: 40

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        clearinghouse_code: :numeroCOMPE,
        ispb_code: :numeroISPB,
        payment_date: :dataTransferencia,
        payment_value: :valorTransferencia,
        debit_document: :documentoDebito,
        credit_document: :documentoCredito,
        payment_description: :descricaoTransferencia,
        individual_taxpayer_registration: :cpfBeneficiario,
        corporate_taxpayer_registration: :cnpjBeneficiario,
        credit_branch_office: :agenciaCredito,
        credit_current_account: :contaCorrenteCredito,
        check_digits_credit_current_account: :digitoVerificadorContaCorrente,
        credit_payment_account: :contaPagamentoCredito,
        credit_order_purpose_code: :codigoFinalidadeDOC,
        wire_transfer_purpose_code: :codigoFinalidadeTED,
        deposit_in_court_identifier: :numeroDepositoJudicial
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
        individual_taxpayer_registration: :Integer,
        corporate_taxpayer_registration: :Integer,
        clearinghouse_code: :Integer,
        ispb_code: :Integer,
        credit_branch_office: :Integer,
        credit_current_account: :Integer,
        check_digits_credit_current_account: :String,
        credit_payment_account: :String,
        credit_order_purpose_code: :Integer,
        wire_transfer_purpose_code: :Integer,
        deposit_in_court_identifier: :String
      }
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # TODO: add remaining constraints
    def list_invalid_properties
      invalid_properties = Array.new
      %i[payment_date payment_value].each do |attr|
        next if send(attr).present?

        invalid_properties.push("invalid value for '#{attr}': cannot be nil.")
      end

      invalid_properties
    end
  end
end

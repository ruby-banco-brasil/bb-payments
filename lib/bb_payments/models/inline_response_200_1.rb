=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module BancoBrasilPayments
  # Representação dos campos de resposta de uma recuperação de pagamento na transferência em lote.
  class InlineResponse2001
    # Descrição da situação do pagamento: Domínios: - Consistente (pagamento recebido pelo banco, cumprem as regras de preenchimento dos campos mas ainda irá para validação e processamento) - Inconsistente (pagamento não aceito pelo banco por dados de entrada inconsistentes - não cumpre as regras de preenchimento dos campos) - Pago (pagamento efetuado ao favorecido) - Pendente (pagamento validado - pendência de autorização do pagamento por parte do pagador) - Aguardando saldo (débito não efetivado e em verificação de saldo até o horário limite da teimosinha). - Agendado (pagamento autorizado, porém aguardando a data de efetivação do pagamento ou horário de processamento) - Rejeitado (dados do pagamento não passaram na validações físicas e/ou lógicas, precisam ser corrigidos e reenviados. Ex: agência e conta não existem, conta não pertence ao CPF informado) - Cancelado (pagamento cancelado pelo pagador antes da data de efetivação do crédito) - Bloqueado (Débito na conta do pagador não efetivado por ocorrência no convênio, inconsistência de data/float ou falta de saldo) - Devolvido (pagamento efetuado e posteriormente devolvido pelo favorecido ou instituição recebedora. O valor é devolvido para a conta corrente onde ocorreu o débito da requisição)\" - Debitado (pagamento debitado na conta do pagador e pendente de crédito ao favorecido)
    attr_accessor :payment_status

    # Identifies the type of payment, such as: 126 - Payment to suppliers, 127 - Payment of salaries, 128 - Other payments;  Identifica o tipo de pagamento, como: 126 - Pagamento de fornecedores, 127 - Pagamento de salários, 128 - Pagamentos Diversos.
    attr_accessor :payment_type

    # The modality that represents the way the credit was given as follow:   1 - Credit in Current Account,  3 - Credit/Money Order or Wire Transfers (DOC/TED),  5 - Credit in Saving Account,  71 – Deposit in Court;  -  Modalidade que representa o modo como o crédito pago, sendo:  1 - Crédito em conta corrente,  3 - Crédito / Ordem de Pagamento ou Transferência Bancária (DOC / TED),  5 - Crédito em conta poupança,  71 – Depósito Judicial no BB.
    attr_accessor :credit_type

    # Branch office for debit;  Agência para débito.
    attr_accessor :debit_branch_office

    # Current account for debit;  Conta Corrente para débito.
    attr_accessor :debit_current_account

    # Check digits of current account for debit;  Dígito verificador da conta para débito.
    attr_accessor :check_digit_debit_current_account

    # Date of payment (payments request for non-business days will be paid in the next business day, excepting transfers between Banco do Brasil accounts);  Data do pagamento (Solicitações de pagamentos para dias não úteis serão pagas no próximo dia útil, com exceção de transferências entre contas do Banco do Brasil).
    attr_accessor :payment_date

    # Value of payment. The two ending numbers of the value represents the decimal places (cents). For example, value 10000 means 100.00 (One hundred) reais;  Valor do pagamento. Os dois números finais do valor representam o valor das casas decimais (centavos). Por exemplo, o valor 10000 significa 100,00 (cem) reais.
    attr_accessor :payment_value

    # Identification code of the institution for credit at clearinghouse (In Brazil, identified by the acronym COMPE). For example, value 1 for Banco do Brasil and value 104 for Caixa Econômica Federal. If value 0 informed then ispbCode field will be considered;  Código ISPB que representa a instituição financeira. Por exemplo, 1 - Banco do Brasil, 104 - Caixa Econômica Federal.
    attr_accessor :clearinghouse_code

    # Identifier code of the Brazilian Payment Sistem (Identified by the acronym ISPB) for credit. For example, value 0 for Banco do Brasil and value 360305 for Caixa Econômica Federal. Not considered when clearinghouseCode field is informed;  Código identificador do Sistema de Pagamentos Brasileiro para crédito. Por exemplo, 0 - Banco do Brasil e 360305 - Caixa Econômica Federal. Se campo clearinghouseCode for informado, este campo será ignorado.
    attr_accessor :ispb_code

    # Branch office for credit;  Agência para crédito.
    attr_accessor :credit_branch_office

    # Current account for credit;  Conta Corrente para crédito.
    attr_accessor :credit_current_account

    # Check digits of current account for credit;  Dígito verificador da conta para crédito.
    attr_accessor :check_digit_credit_current_account

    # Identifies the type of the taxpayer as:   1 - Individual taxpayer  2 - Corporate taxpayer;  -  Identifica o tipo de pessoa, como:  1 - Pessoa física  2 - Pessoa Jurídica.
    attr_accessor :taxpayer_type

    # Identification of Individual or Corporate Taxpayer Registration with the Federal Revenue Service;   CPF ou CNPJ do beneficiário no pagamento.
    attr_accessor :taxpayer_registration

    # Document of debit provided by payer;  Número do documento informado pelo pagador para débito.
    attr_accessor :debit_document

    # Document of credit provided by payer;  Número do documento informado pelo pagador para crédito.
    attr_accessor :credit_document

    # Name of the person or corporate that will receive the payment;   Nome da pessoa ou empresa beneficiária no pagamento.
    attr_accessor :beneficiary_name

    # Authentication Code of the payment if paid already;  Código de autenticação do pagamento, caso já tenha sido efetivado.
    attr_accessor :payment_authentication_code

    # Purpose code informed when concerning to credit/money order. A list of allowed codes is obtained at Brazilian Federation of Banks (Identified by the acronym FEBRABAN). For example:  1 - Credit in Current Account,  11 - Credit/Money Order in Saving Account,  12 - Credit/Money Order in Deposit in Court;  -  Código da finalidade das ordens de pagamento. A lista de códigos pode ser obtida junto a FEBRABAN (Federação Brasileira de Bancos). Por exemplo:  1 - Crédito em Conta Corrente,   11 - Crédito/Ordem de Pagamento em Conta Poupança,   12 - Crédito/Ordem de pagamento de Depósitos Judiciais.
    attr_accessor :credit_order_purpose_code

    # Purpose code informed when concerning to wire transfer adopted by Central Bank of Brazil (Identified by the acronym BACEN);  Código da finalidade da transferência de acordo com o BACEN (Banco Central).
    attr_accessor :wire_transfer_purpose_code

    # Identifier of the deposit in court;  Código identificador do depósito judicial.
    attr_accessor :deposit_in_court_identifier

    # Lista de devoluções
    attr_accessor :ocurrences_list

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payment_status' => :'paymentStatus',
        :'payment_type' => :'paymentType',
        :'credit_type' => :'creditType',
        :'debit_branch_office' => :'debitBranchOffice',
        :'debit_current_account' => :'debitCurrentAccount',
        :'check_digit_debit_current_account' => :'checkDigitDebitCurrentAccount',
        :'payment_date' => :'paymentDate',
        :'payment_value' => :'paymentValue',
        :'clearinghouse_code' => :'clearinghouseCode',
        :'ispb_code' => :'ispbCode',
        :'credit_branch_office' => :'creditBranchOffice',
        :'credit_current_account' => :'creditCurrentAccount',
        :'check_digit_credit_current_account' => :'checkDigitCreditCurrentAccount',
        :'taxpayer_type' => :'taxpayerType',
        :'taxpayer_registration' => :'taxpayerRegistration',
        :'debit_document' => :'debitDocument',
        :'credit_document' => :'creditDocument',
        :'beneficiary_name' => :'beneficiaryName',
        :'payment_authentication_code' => :'paymentAuthenticationCode',
        :'credit_order_purpose_code' => :'creditOrderPurposeCode',
        :'wire_transfer_purpose_code' => :'wireTransferPurposeCode',
        :'deposit_in_court_identifier' => :'depositInCourtIdentifier',
        :'ocurrences_list' => :'ocurrencesList'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_status' => :'Object',
        :'payment_type' => :'Object',
        :'credit_type' => :'Object',
        :'debit_branch_office' => :'Object',
        :'debit_current_account' => :'Object',
        :'check_digit_debit_current_account' => :'Object',
        :'payment_date' => :'Object',
        :'payment_value' => :'Object',
        :'clearinghouse_code' => :'Object',
        :'ispb_code' => :'Object',
        :'credit_branch_office' => :'Object',
        :'credit_current_account' => :'Object',
        :'check_digit_credit_current_account' => :'Object',
        :'taxpayer_type' => :'Object',
        :'taxpayer_registration' => :'Object',
        :'debit_document' => :'Object',
        :'credit_document' => :'Object',
        :'beneficiary_name' => :'Object',
        :'payment_authentication_code' => :'Object',
        :'credit_order_purpose_code' => :'Object',
        :'wire_transfer_purpose_code' => :'Object',
        :'deposit_in_court_identifier' => :'Object',
        :'ocurrences_list' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `BancoBrasilPayments::InlineResponse2001` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BancoBrasilPayments::InlineResponse2001`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      end

      if attributes.key?(:'payment_type')
        self.payment_type = attributes[:'payment_type']
      end

      if attributes.key?(:'credit_type')
        self.credit_type = attributes[:'credit_type']
      end

      if attributes.key?(:'debit_branch_office')
        self.debit_branch_office = attributes[:'debit_branch_office']
      end

      if attributes.key?(:'debit_current_account')
        self.debit_current_account = attributes[:'debit_current_account']
      end

      if attributes.key?(:'check_digit_debit_current_account')
        self.check_digit_debit_current_account = attributes[:'check_digit_debit_current_account']
      end

      if attributes.key?(:'payment_date')
        self.payment_date = attributes[:'payment_date']
      end

      if attributes.key?(:'payment_value')
        self.payment_value = attributes[:'payment_value']
      end

      if attributes.key?(:'clearinghouse_code')
        self.clearinghouse_code = attributes[:'clearinghouse_code']
      end

      if attributes.key?(:'ispb_code')
        self.ispb_code = attributes[:'ispb_code']
      end

      if attributes.key?(:'credit_branch_office')
        self.credit_branch_office = attributes[:'credit_branch_office']
      end

      if attributes.key?(:'credit_current_account')
        self.credit_current_account = attributes[:'credit_current_account']
      end

      if attributes.key?(:'check_digit_credit_current_account')
        self.check_digit_credit_current_account = attributes[:'check_digit_credit_current_account']
      end

      if attributes.key?(:'taxpayer_type')
        self.taxpayer_type = attributes[:'taxpayer_type']
      end

      if attributes.key?(:'taxpayer_registration')
        self.taxpayer_registration = attributes[:'taxpayer_registration']
      end

      if attributes.key?(:'debit_document')
        self.debit_document = attributes[:'debit_document']
      end

      if attributes.key?(:'credit_document')
        self.credit_document = attributes[:'credit_document']
      end

      if attributes.key?(:'beneficiary_name')
        self.beneficiary_name = attributes[:'beneficiary_name']
      end

      if attributes.key?(:'payment_authentication_code')
        self.payment_authentication_code = attributes[:'payment_authentication_code']
      end

      if attributes.key?(:'credit_order_purpose_code')
        self.credit_order_purpose_code = attributes[:'credit_order_purpose_code']
      end

      if attributes.key?(:'wire_transfer_purpose_code')
        self.wire_transfer_purpose_code = attributes[:'wire_transfer_purpose_code']
      end

      if attributes.key?(:'deposit_in_court_identifier')
        self.deposit_in_court_identifier = attributes[:'deposit_in_court_identifier']
      end

      if attributes.key?(:'ocurrences_list')
        if (value = attributes[:'ocurrences_list']).is_a?(Array)
          self.ocurrences_list = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_status == o.payment_status &&
          payment_type == o.payment_type &&
          credit_type == o.credit_type &&
          debit_branch_office == o.debit_branch_office &&
          debit_current_account == o.debit_current_account &&
          check_digit_debit_current_account == o.check_digit_debit_current_account &&
          payment_date == o.payment_date &&
          payment_value == o.payment_value &&
          clearinghouse_code == o.clearinghouse_code &&
          ispb_code == o.ispb_code &&
          credit_branch_office == o.credit_branch_office &&
          credit_current_account == o.credit_current_account &&
          check_digit_credit_current_account == o.check_digit_credit_current_account &&
          taxpayer_type == o.taxpayer_type &&
          taxpayer_registration == o.taxpayer_registration &&
          debit_document == o.debit_document &&
          credit_document == o.credit_document &&
          beneficiary_name == o.beneficiary_name &&
          payment_authentication_code == o.payment_authentication_code &&
          credit_order_purpose_code == o.credit_order_purpose_code &&
          wire_transfer_purpose_code == o.wire_transfer_purpose_code &&
          deposit_in_court_identifier == o.deposit_in_court_identifier &&
          ocurrences_list == o.ocurrences_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_status, payment_type, credit_type, debit_branch_office, debit_current_account, check_digit_debit_current_account, payment_date, payment_value, clearinghouse_code, ispb_code, credit_branch_office, credit_current_account, check_digit_credit_current_account, taxpayer_type, taxpayer_registration, debit_document, credit_document, beneficiary_name, payment_authentication_code, credit_order_purpose_code, wire_transfer_purpose_code, deposit_in_court_identifier, ocurrences_list].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        BancoBrasilPayments.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end

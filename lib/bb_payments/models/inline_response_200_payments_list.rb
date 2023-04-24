=begin
#Payments-VPN

#Esta API fornece os serviços de pagamento do Banco do Brasil.

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module BancoBrasilPayments
  class InlineResponse200PaymentsList
    # Payment identifier to the beneficiary (Protocol Number);  Número identificador do pagamento ao Beneficiário (número do protocolo).
    attr_accessor :payment_id

    # Data do pagamento (formato ddmmaaaa). Solicitações de pagamentos para dias não úteis ou após o horário limite de processamento serão pagas no próximo dia útil, com exceção de transferências entre contas do Banco do Brasil
    attr_accessor :payment_date

    # Valor do pagamento em reais (formato 0.00)
    attr_accessor :payment_value

    # The modality that represents the way the credit was given as follow:   1 - Credit in Current Account,  3 - Credit/Money Order or Wire Transfers (DOC/TED),  5 - Credit in Saving Account,  13 - Settlement of Bar-coded Slip,  21 - Settlement of Non Bar-coded Slip,  30 - Settlement of Bank Paper;  -  Modalidade que representa o modo como o crédito pago, sendo:  1 - Crédito em conta corrente,  3 - Crédito / Ordem de Pagamento ou Transferência Bancária (DOC / TED),  5 - Crédito em conta poupança  13 - Liquidação de Boleto com Código de Barras,  21 - Liquidação de Boleto sem Código de Barras,  30 - Liquidação de Boleto Bancário;
    attr_accessor :credit_type

    # Identification of Individual or Corporate Taxpayer Registration with the Federal Revenue Service;   CPF ou CNPJ do beneficiário no pagamento
    attr_accessor :taxpayer_registration

    # Name of the person or corporate that will receive the payment;   Nome da pessoa ou empresa beneficiária no pagamento
    attr_accessor :beneficiary_name

    # Descrição da situação do pagamento: Domínios: - Consistente (pagamento recebido pelo banco, cumprem as regras de preenchimento dos campos mas ainda irá para validação e processamento) - Inconsistente (pagamento não aceito pelo banco por dados de entrada inconsistentes - não cumpre as regras de preenchimento dos campos) - Pago (pagamento efetuado ao favorecido) - Pendente (pagamento validado - pendência de autorização do pagamento por parte do pagador) - Aguardando saldo (débito não efetivado e em verificação de saldo até o horário limite da teimosinha). - Agendado (pagamento autorizado, porém aguardando a data de efetivação do pagamento ou horário de processamento) - Rejeitado (dados do pagamento não passaram na validações físicas e/ou lógicas, precisam ser corrigidos e reenviados. Ex: agência e conta não existem, conta não pertence ao CPF informado) - Cancelado (pagamento cancelado pelo pagador antes da data de efetivação do crédito) - Bloqueado (Débito na conta do pagador não efetivado por ocorrência no convênio, inconsistência de data/float ou falta de saldo) - Devolvido (pagamento efetuado e posteriormente devolvido pelo favorecido ou instituição recebedora. O valor é devolvido para a conta corrente onde ocorreu o débito da requisição)\" - Debitado (pagamento debitado na conta do pagador e pendente de crédito ao favorecido)horário de processamento,  PAGO - Pagamento realizado ao Favorecido,  REJEITADO - Dados do Favorecido inválidos, o que impede a efetivação do pagamento. Dados precisam ser corrigidos e reenviados,  DEVOLVIDO - Pagamento efetuado e posteriormente devolvido pelo Favorecido/Banco destinatário,  VENCIDO - Pagamento não efetuado na data indicada,  CANCELADO - Pagamento cancelado pelo Pagador antes da data de efetivação do crédito.
    attr_accessor :payment_status

    # Description of the payment by the covenant partner, without treatment by the Bank;  Campo de descrição do pagamento de uso livre pelo Cliente Conveniado - sem tratamento pelo Banco.
    attr_accessor :payment_description

    # Lista de códigos de erros, descrito a seguir:  1 - Agência de crédito está zerada. Informe o nº da Agência de Crédito. 2 - Conta de crédito informada não é numérica. Informe apenas números. 3 - Dígito da conta de crédito não informado. Informe o DV da conta de crédito. 4 - CPF informado não é numérico. Informe apenas números. 5 - CNPJ informado não é numérico. Informe apenas números. 6 - Data do pagamento não informada. Informe a data do pagamento. 7 - Data do pagamento inválida. Verifique o dado informado. 8 - Valor do pagamento informado não é númerico. Informe apenas números. 9 - Valor do pagamento está zerado. Informe o valor do pagamento. 10 - Ambos os campos Número Compensação e Número ISPB não foram informados. Informe um dos campos. 11 - Ambos os campos Número Compensação e Número ISPB foram informados. Informe apenas um dos campos. 12 - Ambos os campos Finalidade DOC e Finalidade TED não foram informados. Informe um dos campos. 13 - Ambos os campos Finalidade DOC e Finalidade TED foram informados. Informe apenas um dos campos. 14 - Número de depósito judicial não informado. Informe o número do depósito judicial. 15 - Digito da conta de crédito inválido. Verifique o dado informado. 16 - Ambos os campos CPF e CNPJ foram informados. Informe apenas um dos campos. Caso informado os 2 campos, nas consultas será exibido apenas os dados do CPF. 17 - Ambos os campos CPF e CNPJ não foram informados. Informe um dos campos. 18 - Dígito do CPF inválido. Verifique o dado informado. 19 - Dígito do CNPJ inválido. Verifique o dado informado. 20 - Agência e conta de crédito estão iguais às de débito. Opção não permitida. 21 - Número Compensação inválido. Verifique o dado informado. 22 - Número ISPB diferente de zeros. Não informe o nº ISPB. 23 - Conta de crédito não informada. Informe o número da conta de crédito. 24 - CPF não informado. Informe o nº do CPF. 25 - CNPJ foi informado. Não informe CNPJ. 26 - Conta de crédito foi informada. Não informe Conta de crédito. 27 - Dígito da conta de crédito foi informado. Não informe dígito da conta de crédito. 28 - Finalidade do DOC foi informada. Não informe finalidade do DOC. 29 - Finalidade da TED foi informada. Não informe finalidade da TED. 30 - Número Depósito Judicial informado. Não informe finalidade Depósito Judicial. 31 - Número do documento de crédito informado não é numérico. Informe apenas números. 32 - Número do documento de débito não é numérico. Informe apenas números. 33 - CPF não encontrado na base da receita federal. Verifique o dado informado. 34 - CNPJ não encontrado na base da receita federal. Verifique o dado informado. 35 - Conta poupança não permitido para \"Pagamento ao Fornecedor\". Para creditar em conta poupança utilize o recurso para efetivação de \"Pagamentos Diversos\". 36 - Código COMPE deve ser igual a 1 37 - Código ISPB deve ser igual a 0 38 - Código de barras não é numérico. Informe apenas números. 39 - Código de barras igual a zeros. Informe apenas números. 40 - Número de inscrição do pagador não é numérico. Informe apenas números. 41 - Número de inscrição do beneficiário não é numérico. Informe apenas números. 42 - Número de inscrição do avalista não é numérico. Informe apenas números. 43 - Digito do CPF para o pagador inválido. Verifique o dado informado. 44 - Digito do CPF para o beneficiário inválido. Verifique o dado informado. 45 - Digito do CPF para o avalista inválido. Verifique o dado informado. 46 - Digito do CNPJ para o pagador inválido. Verifique o dado informado. 47 - Digito do CNPJ para o beneficiário inválido. Verifique o dado informado. 48 - Digito do CNPJ para o avalista inválido.Verifique o dado informado. 49 - Data do vencimento inválida.  Verifique o dado informado. 50 - Valor nominal não é numérico. Informe apenas números. 51 - Valor de desconto não é numérico. Informe apenas números; 52 - Valor de mora não é numérico. Informe apenas números. 53 - Data do pagamento deve ser maior ou igual ao dia atual.  54 - Número do documento de débito não informado. Informe o nº do doc de débito. 55 - Data do vencimento não informada. Informe a data de vencimento. 56 - Nome do beneficiário não informado. Informe o nome do beneficiário. 57 - Número de inscrição do beneficiário não informado. Informe o CPF ou o CNPJ do beneficiário. 58 - Conta pagamento foi informada. Não informe conta pagamento. 59 - Ambos os campos conta de crédito e conta pagamento foram informados. Informe apenas um dos campos. 99 - Consultar o Banco para detalhar o erro 200 - Insuficiência de Fundos - Débito Não Efetuado 201 - Crédito ou Débito Cancelado pelo Pagador 202 - Débito Autorizado pela Agência - Efetuado 203 - Controle Inválido. Verificar campos 01, 02 e 03 do header ou segmento A, B, C, J, J52, N, O ou W do Arquivo CNAB240. 204 - Tipo de Operação Inválido. Verificar campo 04.1 do header de lote. Valor default = \"C\" 205 - Tipo de Serviço Inválido. Utilize 20 para Pagamento a Fornecedores, 30 Pagamento de Salários ou 98 Pagamentos Diversos no header de Lote, campo 05.1, do CNAB240 206 - Forma de Lançamento Inválida. Para crédito em Poupança utilize Pagamentos Diversos. Para crédito em Conta Pagamento utilize Pagamentos Diversos ou Pagamento a Fornecedores. Para Pagamento de salário a conta de crédito deve ser do BB. 207 - Tipo/Número de Inscrição Inválido. CPF ou CNPJ inválido.  Verifique dados informados. 208 - Código de Convênio Inválido. Verifique dados informados. 209 - Agência/Conta Corrente/DV Inválido. Verifique dados informados. 210 - Nº Seqüencial do Registro no Lote Inválido. Verifique dado informado. 211 - Código de Segmento de Detalhe Inválido. Verifique dado informado. 212 - Lançamento inconsistente, rejeitado na prévia. Corrigir os dados do lançamento e enviar novo pagamento. 213 - Nº Compe do Banco para crédito Inválido. Verifique dado informado. 214 - Nº do ISPB Banco, Instituição de Pagamento para crédito Inválido. Verifique dado informado. 215 - Agência Mantenedora da Conta Corrente do Favorecido Inválida. Verifique dado informado. 216 - Conta Corrente/DV/Conta de Pagamento do Favorecido Inválido. Verifique dado informado. 217 - Nome do Favorecido não Informado. Informe o nome do favorecido. 218 - Data Lançamento Inválido. Verifique dado informado. 219 - Tipo/Quantidade da Moeda Inválido. Verifique dado informado. 220 - Valor do Lançamento Inválido. Verifique dado informado. 221 - Aviso ao Favorecido - Identificação Inválida. 222 - Tipo/Número de Inscrição do Favorecido Inválido. CPF ou CNPJ do favorecido inválido. Arquivo: Verifique o campo 07.3B - registro detalhe do segmento B. 223 - Logradouro do Favorecido não Informado. Informe o logradouro do favorecido. 224 - Nº do Local do Favorecido não Informado. Informe o nº do local do favorecido. 225 - Cidade do Favorecido não Informada. Informe a cidade do favorecido. 226 - CEP/Complemento do Favorecido Inválido. Verifique dado informado. 227 - Sigla do Estado do Favorecido Inválida. Verifique dado informado. 228 - Nº do Banco para crédito Inválido. Verifique dado informado. 229 - Código/Nome da Agência Depositária não Informado. Informe o dado solicitado. 230 - Seu Número Inválido. Verifique dado informado. 231 - Nosso Número Inválido. Verifique dado informado. 232 - Inclusão Efetuada com Sucesso 233 - Alteração Efetuada com Sucesso 234 - Exclusão Efetuada com Sucesso 235 - Agência/Conta Impedida Legalmente 236 - Empresa não pagou salário. Conta de crédito só aceita pagamento de salário 237 - Falecimento do mutuário. 238 - Empresa não enviou remessa do mutuário 239 - Empresa não enviou remessa no vencimento 240 - Valor da parcela inválida. Verifique dado informado. 241 - Identificação do contrato inválida. Verifique dado informado. 242 - Operação de Consignação Incluída com Sucesso 243 - Operação de Consignação Alterada com Sucesso 244 - Operação de Consignação Excluída com Sucesso 245 - Operação de Consignação Liquidada com Sucesso 246 - Reativação Efetuada com Sucesso 247 - Suspensão Efetuada com Sucesso 248 - Código de Barras - Código do Banco Inválido. 249 - Código de Barras - Código da Moeda Inválido 250 - Código de Barras - Dígito Verificador Geral Inválido 251 - Código de Barras - Valor do Título Inválido 252 - Código de Barras - Campo Livre Inválido 253 - Valor do Documento Inválido. Verifique dado informado. 254 - Valor do Abatimento Inválido. Verifique dado informado. 255 - Valor do Desconto Inválido. Verifique dado informado. 256 - Valor de Mora Inválido. Verifique dado informado. 257 - Valor da Multa Inválido. Verifique dado informado. 258 - Valor do IR Inválido. Verifique dado informado. 259 - Valor do ISS Inválido. Verifique dado informado. 260 - Valor do IOF Inválido. Verifique dado informado. 261 - Valor de Outras Deduções Inválido. Verifique dado informado. 262 - Valor de Outros Acréscimos Inválido. Verifique dado informado. 263 - Valor do INSS Inválido. Verifique dado informado. 264 - Lote Não Aceito. Reenvie os documentos. 265 - Inscrição da Empresa Inválida para o Contrato 266 - Convênio com a Empresa Inexistente/Inválido para o Contrato 267 - Agência/Conta Corrente da Empresa Inexistente/Inválido para o Contrato. Verifique dado informado. 268 - Tipo de Serviço Inválido para o Contrato. Para contrato de Pagamentos, utilize 20 para Pagamento a Fornecedores, 30 Pagamento de Salários ou 98 Pagamentos Diversos no header de Lote, campo 05.1, do CNAB240 269 - Conta Corrente da Empresa com Saldo Insuficiente. 270 - Lote de Serviço Fora de Seqüência 271 - Lote de Serviço Inválido 272 - Arquivo não aceito 273 - Tipo de Registro Inválido 274 - Código Remessa / Retorno Inválido 275 - Versão de layout inválida 276 - Mutuário não identificado 277 - Tipo do beneficio não permite empréstimo 278 - Beneficio cessado/suspenso 279 - Beneficio possui representante legal 280 - Beneficio é do tipo PA (Pensão alimentícia) 281 - Quantidade de contratos permitida excedida 282 - Beneficio não pertence ao Banco informado 283 - Início do desconto informado já ultrapassado 284 - Número da parcela inválida. Verifique dado informado. 285 - Quantidade de parcela inválida. Verifique dado informado. 286 - Margem consignável excedida para o mutuário dentro do prazo do contrato. Verifique suas margens disponíveis. 287 - Empréstimo já cadastrado 288 - Empréstimo inexistente 289 - Empréstimo já encerrado 290 - Arquivo sem trailer 291 - Mutuário sem crédito na competência 292 - Não descontado – outros motivos 293 - Retorno de Crédito não pago 294 - Cancelamento de empréstimo retroativo 295 - Outros Motivos de Glosa 296 - Margem consignável excedida para o mutuário acima do prazo do contrato 297 - Mutuário desligado do empregador. Pagamento não permitido. 298 - Mutuário afastado por licença. Pagamento não permitido. 299 - Primeiro nome do mutuário diferente do primeiro nome do movimento do censo ou diferente da base de Titular do Benefício. Verificar necessidade de ajustes. 300 - Benefício suspenso/cessado pela APS ou Sisobi 301 - Benefício suspenso por dependência de cálculo 302 - Benefício suspenso/cessado pela inspetoria/auditoria 303 - Benefício bloqueado para empréstimo pelo beneficiário 304 - Benefício bloqueado para empréstimo por TBM 305 - Benefício está em fase de concessão de PA ou desdobramento. 306 - Benefício cessado por óbito. 307 - Benefício cessado por fraude. 308 - Benefício cessado por concessão de outro benefício. 309 - Benefício cessado: estatutário transferido para órgão de origem. 310 - Empréstimo suspenso pela APS. 311 - Empréstimo cancelado pelo banco. 312 - Crédito transformado em PAB. 313 - Término da consignação foi alterado. 314 - Fim do empréstimo ocorreu durante período de suspensão ou concessão. 315 - Empréstimo suspenso pelo banco. 316 - Não averbação de contrato – quantidade de parcelas/competências informadas ultrapassou a data limite da extinção de cota do dependente titular de benefícios 317 - Lote Não Aceito - Totais do Lote com Diferença 318 - Título Não Encontrado 319 - Identificador Registro Opcional Inválido. Verifique dado informado. 320 - Código Padrão Inválido. Verifique dado informado. 321 - Código de Ocorrência Inválido. Verifique dado informado. 322 - Complemento de Ocorrência Inválido. Verifique dado informado. 323 - Alegação já Informada 324 - Agência / Conta do Favorecido Substituída. . Verifique dado informado. 325 - Divergência entre o primeiro e último nome do beneficiário versus primeiro e último nome na Receita Federal. Verificar com beneficiário necessidade de ajustes. 326 - Confirmação de Antecipação de Valor 327 - Antecipação parcial de valor 328 - Boleto bloqueado na base. Não passível de pagamento. 329 - Sistema em contingência – Boleto valor maior que referência. Consulte o beneficiário ou tente efetuar o pagamento mais tarde. 330 - Sistema em contingência – Boleto vencido. Consulte o beneficiário ou tente efetuar o pagamento mais tarde. 331 - Sistema em contingência – Boleto indexado. Consulte o beneficiário ou tente efetuar o pagamento mais tarde. 332 - Beneficiário divergente. Verifique dado informado. 333 - Limite de pagamentos parciais do boleto excedido. Consulte o Beneficiário do boleto. 334 - Boleto já liquidado. Não passível de pagamento. 999 - Consultar o Banco para detalhar o erro.
    attr_accessor :error_codes_list

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payment_id' => :'paymentId',
        :'payment_date' => :'paymentDate',
        :'payment_value' => :'paymentValue',
        :'credit_type' => :'creditType',
        :'taxpayer_registration' => :'taxpayerRegistration',
        :'beneficiary_name' => :'beneficiaryName',
        :'payment_status' => :'paymentStatus',
        :'payment_description' => :'paymentDescription',
        :'error_codes_list' => :'errorCodesList'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_id' => :'Object',
        :'payment_date' => :'Object',
        :'payment_value' => :'Object',
        :'credit_type' => :'Object',
        :'taxpayer_registration' => :'Object',
        :'beneficiary_name' => :'Object',
        :'payment_status' => :'Object',
        :'payment_description' => :'Object',
        :'error_codes_list' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BancoBrasilPayments::InlineResponse200PaymentsList` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BancoBrasilPayments::InlineResponse200PaymentsList`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.key?(:'payment_date')
        self.payment_date = attributes[:'payment_date']
      end

      if attributes.key?(:'payment_value')
        self.payment_value = attributes[:'payment_value']
      end

      if attributes.key?(:'credit_type')
        self.credit_type = attributes[:'credit_type']
      end

      if attributes.key?(:'taxpayer_registration')
        self.taxpayer_registration = attributes[:'taxpayer_registration']
      end

      if attributes.key?(:'beneficiary_name')
        self.beneficiary_name = attributes[:'beneficiary_name']
      end

      if attributes.key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      end

      if attributes.key?(:'payment_description')
        self.payment_description = attributes[:'payment_description']
      end

      if attributes.key?(:'error_codes_list')
        if (value = attributes[:'error_codes_list']).is_a?(Array)
          self.error_codes_list = value
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
          payment_id == o.payment_id &&
          payment_date == o.payment_date &&
          payment_value == o.payment_value &&
          credit_type == o.credit_type &&
          taxpayer_registration == o.taxpayer_registration &&
          beneficiary_name == o.beneficiary_name &&
          payment_status == o.payment_status &&
          payment_description == o.payment_description &&
          error_codes_list == o.error_codes_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_id, payment_date, payment_value, credit_type, taxpayer_registration, beneficiary_name, payment_status, payment_description, error_codes_list].hash
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

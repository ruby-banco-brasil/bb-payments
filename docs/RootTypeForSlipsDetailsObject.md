# BancoBrasilPayments::RootTypeForSlipsDetailsObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slip_id** | **String** | Código identificador do pagamento. | [optional] 
**payment_date** | **Integer** | Data em que deverá ser efetivado o pagamento do boleto (formato: ddmmaaaa). Campo Obrigatório. Agendamentos poderão ser afetuados para até 180 dias | 
**payment_value** | **Float** | Valor do pagamento do boleto (formato 0.00). Campo Obrigatório | 
**numeric_bar_code** | **String** | Código de barras numérico do boleto. Campo obrigatório | 
**due_date** | **Integer** | Data de vencimento do boleto (formato: ddmmaaaa). Campo Obrigatório | 
**bank_slip_value** | **Float** | Valor de registro do boleto, sem descontos ou multas (formato 0.00). Campo Obrigatório | 
**discount_value** | **Float** | Valor do desconto ou do abatimento do boleto ou do desconto + abatimento (formato 0.00) | [optional] 
**late_payment_value** | **Float** | Valor do juros ou de mora ou multa ou juros + mora+ multa, adicionado valor do boleto (formato 0.00) | [optional] 
**our_number** | **String** | Número indicado no boleto no campo Nosso Número, no formato STRING, com 20 dígitos. Ex:  31285570000088000 | [optional] 
**your_number** | **String** | Nº de uso livre pelo cliente conveniado. Equivalente ao Seu Número (Limitado a 20 caracteres). | [optional] 
**payer_taxpayer_type** | **Integer** | Identifica o tipo de pessoa, como: 1 - Pessoa física 2 - Pessoa Jurídica. | [optional] 
**payer_taxpayer_registration** | **Integer** | CPF ou CNPJ do pagador. | [optional] 
**beneficiary_taxpayer_type** | **Integer** | Identifica o tipo de pessoa, como: 1 - Pessoa física 2 - Pessoa Jurídica. | 
**beneficiary_taxpayer_registration** | **Integer** | CPF ou CNPJ do beneficiário no pagamento. | 
**guarantor_taxpayer_type** | **Integer** | Identifica o tipo de pessoa, como: 1 - Pessoa física 2 - Pessoa Jurídica. | [optional] 
**guarantor_taxpayer_registration** | **Integer** | CPF ou CNPJ do avalista. | [optional] 
**client_description** | **String** | Descrição do pagamento de Boletos. Pode ser preenchido livremente pelo cliente como forma de identificação para o pagamento. | 


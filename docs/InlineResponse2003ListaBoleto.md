# BancoBrasilPayments::InlineResponse2003ListaBoleto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**codigo_barras** | **String** | \&quot;Código de barras do boleto consultado.  Não é a linha digitável do boleto.\&quot;  | [optional] 
**nosso_documento** | **String** | Exibe o Nosso Número quando informado na solicitação de pagamento. Não validado pelo Banco.  | [optional] 
**seu_documento** | **String** | Exibe o Seu Número quando informado na solicitação de pagamento. Não validado pelo Banco.  | [optional] 
**tipo_pessoa_beneficiario** | **Integer** | Determina se é um Nº CPF ou um Nº de CNPJ no campo Número Inscrição Beneficiário do Boleto DOMÍNIOS: 1 - CPF 2 – CNPJ | [optional] 
**documento_beneficiario** | **Integer** | Nº CPF ou um Nº de CNPJ do Beneficiário do Boleto informado na solicitação de pagamento.  | [optional] 
**nome_beneficiario** | **String** | Nome do Beneficiário - dado retornado pelo Banco  | [optional] 
**tipo_pessoa_pagador** | **Integer** | Determina se é um Nº CPF ou um Nº de CNPJ no campo Número Inscrição Pagador do Boleto. DOMÍNIOS: 1 - CPF 2 – CNPJ  | [optional] 
**documento_pagador** | **Integer** | Nº CPF ou um Nº de CNPJ do Pagador do boleto informado na solicitação de pagamento.  | [optional] 
**nome_pagador** | **String** | Nome do Pagador - dado retornado pelo Banco. | [optional] 
**tipo_pessoa_avalista** | **Integer** | Determina se é um Nº CPF ou um Nº de CNPJ no campo Número Inscrição Avalista do Boleto. DOMÍNIOS:  1 - CPF 2 – CNPJ | [optional] 
**documento_avalista** | **Integer** | Nº CPF ou um Nº de CNPJ do Avalista do boleto informado na solicitação de pagamento.  | [optional] 
**nome_avalista** | **String** | Nome do Avalista - dado retornado pelo Banco  | [optional] 
**data_vencimento** | **Integer** | Data de vencimento do boleto informado na solicitação de pagamento (formato ddmmaaaa) | [optional] 
**data_agendamento** | **Integer** | Data do pagamento informado na solicitação de pagamento  (formato ddmmaaaa) | [optional] 
**valor_nominal** | **Integer** | Valor do boleto registrado pelo Beneficiário do Boleto e informado na solicitação de pagamento  (formato 0.00) | [optional] 
**valor_mora_multa** | **Integer** | Valor do juros mora e multa informado na solicitação de pagamento  (formato 0.00) | [optional] 
**valor_desconto** | **Integer** | Valor do desconto/abatimento informado na solicitação de pagamento (formato 0.00) | [optional] 
**texto** | **String** | Campo livre informado pelo pagador quando do envio do lançamento consultado – sem tratamento pelo Banco.  | [optional] 


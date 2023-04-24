# BancoBrasilPayments::BankSlipsApi

All URIs are relative to *https://api.desenv.bb.com.br/payments-vpn/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consulta_pagamento_boleto**](BankSlipsApi.md#consulta_pagamento_boleto) | **GET** /barcode-payment-slips/{id} | Barcode Payment Slip Details
[**enviar_pagamento_boletos_lote**](BankSlipsApi.md#enviar_pagamento_boletos_lote) | **POST** /batch-slips | Batch Payment of Bank Slips
[**sondagem_pagamento_boleto**](BankSlipsApi.md#sondagem_pagamento_boleto) | **GET** /batch-slips/{id}/check | Checks the payment of Bank Slips made in the Request Payment feature

# **consulta_pagamento_boleto**
> InlineResponse2003 consulta_pagamento_boleto(id, gw_dev_app_key, authorization, opts)

Barcode Payment Slip Details

Detalha um boleto de pagamento.

### Example
```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BankSlipsApi.new
id = 'id_example' # String | Código identificador do pagamento.
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
opts = { 
  agencia: 56, # Integer | Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
  conta: 56, # Integer | Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. 
  digito_conta: 'digito_conta_example' # String | Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. 
}

begin
  #Barcode Payment Slip Details
  result = api_instance.consulta_pagamento_boleto(id, gw_dev_app_key, authorization, opts)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling BankSlipsApi->consulta_pagamento_boleto: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Código identificador do pagamento. | 
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN] | 
 **agencia** | **Integer**| Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
 **conta** | **Integer**| Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.  | [optional] 
 **digito_conta** | **String**| Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.  | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enviar_pagamento_boletos_lote**
> RootTypeForBankSlipsBatchPaymentResponseObject enviar_pagamento_boletos_lote(bodyauthorizationgw_dev_app_key)

Batch Payment of Bank Slips

solicitar pagamento em lote de Boletos

### Example
```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BankSlipsApi.new
body = BancoBrasilPayments::RootTypeForBankSlipsBatchPayment.new # RootTypeForBankSlipsBatchPayment | Objeto de requisição do recurso de pagamento em lote de Boletos.
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed


begin
  #Batch Payment of Bank Slips
  result = api_instance.enviar_pagamento_boletos_lote(bodyauthorizationgw_dev_app_key)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling BankSlipsApi->enviar_pagamento_boletos_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RootTypeForBankSlipsBatchPayment**](RootTypeForBankSlipsBatchPayment.md)| Objeto de requisição do recurso de pagamento em lote de Boletos. | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN] | 
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed | 

### Return type

[**RootTypeForBankSlipsBatchPaymentResponseObject**](RootTypeForBankSlipsBatchPaymentResponseObject.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sondagem_pagamento_boleto**
> RootTypeForBankSlipsBatchPaymentResponseObject sondagem_pagamento_boleto(id)

Checks the payment of Bank Slips made in the Request Payment feature

Consulta o pagamento de Boletos realizado no recurso de Solicitação de Pagamento. Recurso utilizado quando a empresa não recebeu a confirmação da Solicitação de Pagamento do Boleto, ou quando precisar recuperar a resposta original ou quando quer confirmar que o número requestID já foi utilizado.

### Example
```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BankSlipsApi.new
id = 'id_example' # String | Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único.


begin
  #Checks the payment of Bank Slips made in the Request Payment feature
  result = api_instance.sondagem_pagamento_boleto(id)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling BankSlipsApi->sondagem_pagamento_boleto: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único. | 

### Return type

[**RootTypeForBankSlipsBatchPaymentResponseObject**](RootTypeForBankSlipsBatchPaymentResponseObject.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




# BancoBrasilPayments::CollectionFormsApi

All URIs are relative to *https://api.desenv.bb.com.br/payments-vpn/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consulta_pagamento_guia_lote**](CollectionFormsApi.md#consulta_pagamento_guia_lote) | **GET** /barcode-collection-forms/{id} | Consulta Pagamentos em Lote de Guias com Código de Barra
[**envia_pagamento_guias_lote**](CollectionFormsApi.md#envia_pagamento_guias_lote) | **POST** /barcode-collection-forms | Barcode Collection Forms Payment
[**sondagem_pagamento_guia_lote**](CollectionFormsApi.md#sondagem_pagamento_guia_lote) | **GET** /barcode-collection-forms/{id}/check | Barcode Collection Forms Payment Check

# **consulta_pagamento_guia_lote**
> BarcodeCollectionFormsIDResponseObject consulta_pagamento_guia_lote(id, authorization, gw_dev_app_key, opts)

Consulta Pagamentos em Lote de Guias com Código de Barra

A partir de um código identificador de pagamento de uma Guia com Código de Barra, retorna os detalhes do pagamento desta, como estado do pagamento, data do pagamento, forma do pagamento, valor, descrição, código de devolução, entre outros.

### Example
```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::CollectionFormsApi.new
id = 'id_example' # String | Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único.
authorization = 'authorization_example' # String | É o valor do token de acesso fornecido pelo OAuth. Exemplo: Bearer <acess_token>
gw_dev_app_key = 'gw_dev_app_key_example' # String | É a chave de acesso do aplicativo do desenvolvedor obtida no Portal do Desenvolvedor. Essa chave será usada para identificação do aplicativo.
opts = { 
  agencia: 3.4, # Float | Número da agência da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
  conta_corrente: 3.4, # Float | Número da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
  digito_verificador: 'digito_verificador_example' # String | Dígito verificador da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token.
}

begin
  #Consulta Pagamentos em Lote de Guias com Código de Barra
  result = api_instance.consulta_pagamento_guia_lote(id, authorization, gw_dev_app_key, opts)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling CollectionFormsApi->consulta_pagamento_guia_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único. | 
 **authorization** | **String**| É o valor do token de acesso fornecido pelo OAuth. Exemplo: Bearer &lt;acess_token&gt; | 
 **gw_dev_app_key** | **String**| É a chave de acesso do aplicativo do desenvolvedor obtida no Portal do Desenvolvedor. Essa chave será usada para identificação do aplicativo. | 
 **agencia** | **Float**| Número da agência da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token. | [optional] 
 **conta_corrente** | **Float**| Número da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token. | [optional] 
 **digito_verificador** | **String**| Dígito verificador da conta corrente de débito do valor total de cada requisição. Quando utilizado o fluxo Client Credentials, esse campo é informado pelo cliente. Quando utilizado o fluxo Authorization Code, essa informação é do token. | [optional] 

### Return type

[**BarcodeCollectionFormsIDResponseObject**](BarcodeCollectionFormsIDResponseObject.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **envia_pagamento_guias_lote**
> InlineResponse2011 envia_pagamento_guias_lote(body)

Barcode Collection Forms Payment

Solicitar pagamento em lote de Guias de Recolhimento com código de barras.

### Example
```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::CollectionFormsApi.new
body = BancoBrasilPayments::BarcodeCollectionFormsRequestObject.new # BarcodeCollectionFormsRequestObject | Objeto de requisição do recurso de pagamento em lote de Guias com Código de Barras.


begin
  #Barcode Collection Forms Payment
  result = api_instance.envia_pagamento_guias_lote(body)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling CollectionFormsApi->envia_pagamento_guias_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BarcodeCollectionFormsRequestObject**](BarcodeCollectionFormsRequestObject.md)| Objeto de requisição do recurso de pagamento em lote de Guias com Código de Barras. | 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sondagem_pagamento_guia_lote**
> InlineResponse2011 sondagem_pagamento_guia_lote(id, gw_dev_app_key, authorization, debit_branch_office, debit_current_account, check_digits_debit_current_account)

Barcode Collection Forms Payment Check

Consultar a resposta de uma solicitação de pagamento em lote de guias de recolhimento com código de barras.

### Example
```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::CollectionFormsApi.new
id = 'id_example' # String | Identificação da solicitação de pagamento. É um número único, não sequencial, cujo valor vai de 1 a 999999999.
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
debit_branch_office = 56 # Integer | Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
debit_current_account = 56 # Integer | Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
check_digits_debit_current_account = 'check_digits_debit_current_account_example' # String | Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.


begin
  #Barcode Collection Forms Payment Check
  result = api_instance.sondagem_pagamento_guia_lote(id, gw_dev_app_key, authorization, debit_branch_office, debit_current_account, check_digits_debit_current_account)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling CollectionFormsApi->sondagem_pagamento_guia_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identificação da solicitação de pagamento. É um número único, não sequencial, cujo valor vai de 1 a 999999999. | 
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN] | 
 **debit_branch_office** | **Integer**| Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | 
 **debit_current_account** | **Integer**| Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | 
 **check_digits_debit_current_account** | **String**| Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




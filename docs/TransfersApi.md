# BancoBrasilPayments::TransfersApi

All URIs are relative to *https://api.desenv.bb.com.br/payments-vpn/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consula_pagamento_transferencias_lote**](TransfersApi.md#consula_pagamento_transferencias_lote) | **GET** /batch-transfers/payments/{id} | Retrieval of detailed infomation of a specific payment
[**consulta_transferencia_lote**](TransfersApi.md#consulta_transferencia_lote) | **GET** /batch-transfers/{id} | Retrieval from transfers in batch
[**envia_transferencias_lote**](TransfersApi.md#envia_transferencias_lote) | **POST** /batch-transfers | Request for transfers in batch
[**lista_transferencias_lote**](TransfersApi.md#lista_transferencias_lote) | **GET** /batch-transfers | List of transfers in batch
[**sondagem_transferencia_lote**](TransfersApi.md#sondagem_transferencia_lote) | **GET** /batch-transfers/{id}/check | Checks a transfers in batch request

# **consula_pagamento_transferencias_lote**
> InlineResponse2001 consula_pagamento_transferencias_lote(id, gw_dev_app_key, authorization)

Retrieval of detailed infomation of a specific payment

Recupera detalhes de uma transferência específica enviada enviada pela solicitação ao recurso /batch-transfers (POST)

### Example

```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
    # Configure OAuth2 access token for authorization: OAuth2-CC
    config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BatchPaymentsApi.new
id = 'id_example' # String | Identificação de um pagamento específico para um beneficiário. NÃO é o valor do campo requestIdentification do recurso \"Solicitação para transferências em lote\", mas o campo paymentId na matriz paymentsList do recurso \"Recuperação de transferências em lote\".
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.

begin
    #Retrieval of detailed infomation of a specific payment
    result = api_instance.consulta_pagamento_transferencias_lote(id, gw_dev_app_key, authorization)
    p result
rescue BancoBrasilPayments::ApiError => e
    puts "Exception when calling BatchPaymentsApi->consula_pagamento_transferencias_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identificação de um pagamento específico para um beneficiário. NÃO é o valor do campo requestIdentification do recurso \&quot;Solicitação para transferências em lote\&quot;, mas o campo paymentId na matriz paymentsList do recurso \&quot;Recuperação de transferências em lote\&quot;. | 
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor. | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0. | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **consulta_transferencia_lote**
> InlineResponse200 consulta_transferencia_lote(id, gw_dev_app_key, authorization, opts)

Retrieval from transfers in batch

Recupera as informações da solicitação, incluindo a situação da solicitação, e a lista de pagamentos com a situação de cada pagamento da solicitação de transferências em lote. Este recurso tem um limite de 300 ocorrências por resposta.

### Example

```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
    # Configure OAuth2 access token for authorization: OAuth2-CC
    config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BatchPaymentsApi.new
id = 'id_example' # String | Identificador da requisição de pagamento. Número único, não sequencial, com domínio entre 1 e 999999999.
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.
opts = {
    index: BancoBrasilPayments::BigDecimal.new # BigDecimal | Posição do índice. Cada resposta tem um limite de 300 ocorrências na lista paymentList, iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso usando o valor do campo nextIndex da resposta.
}

begin
    #Retrieval from transfers in batch
    result = api_instance.consulta_transferencia_lote(id, gw_dev_app_key, authorization, opts)
    p result
rescue BancoBrasilPayments::ApiError => e
    puts "Exception when calling BatchPaymentsApi->consulta_transferencia_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identificador da requisição de pagamento. Número único, não sequencial, com domínio entre 1 e 999999999. | 
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor. | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0. | 
 **index** | **BigDecimal**| Posição do índice. Cada resposta tem um limite de 300 ocorrências na lista paymentList, iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso usando o valor do campo nextIndex da resposta. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **envia_transferencias_lote**
> InlineResponse201 envia_transferencias_lote(bodyauthorizationgw_dev_app_key)

Request for transfers in batch

Pedido de transferências em lote de pagamento de qualquer tipo (fornecedores, salário ou diversos), por transferência bancária (incluindo outros bancos) ou por depósito judicial.  A solicitação será submetida a uma validação prévia das informações do pagador e das entradas inseridas na lista de pagamentos. Após 10 minutos, a rotina de lote será executada, para que as entradas passem por uma validação mais completa.  Além disso, com a intenção de saber definitivamente se tudo correu bem, recomenda-se que o pagador utilize o recurso /batch-transfers/ (GET)

### Example

```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
    # Configure OAuth2 access token for authorization: OAuth2-CC
    config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BatchPaymentsApi.new
body = BancoBrasilPayments::Body.new # Body | 
authorization = 'authorization_example' # String | É um \"token\" de acesso fornecido pelo OAuth 2.0.
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.

begin
    #Request for transfers in batch
    result = api_instance.envia_transferencias_lote(bodyauthorizationgw_dev_app_key)
    p result
rescue BancoBrasilPayments::ApiError => e
    puts "Exception when calling BatchPaymentsApi->envia_transferencias_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)|  | 
 **authorization** | **String**| É um \&quot;token\&quot; de acesso fornecido pelo OAuth 2.0. | 
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor. | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **lista_transferencias_lote**
> RootTypeForBatchTransferGETResponseObject lista_transferencias_lote(gw_dev_app_key, authorization, start_date, end_date, opts)

List of transfers in batch

Retorna uma lista de lotes de pagamentos.

### Example

```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
    # Configure OAuth2 access token for authorization: OAuth2-CC
    config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BatchPaymentsApi.new
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
start_date = 56 # Integer | Data inicial de envio da requisição a ser pesquisada (formato: ddmmaaaa)
end_date = 56 # Integer | Data final de envio da requisição a ser pesquisada (formato: ddmmaaaa)
opts = {
    payment_contract: 56, # Integer | Contrato de pagamento entre o terceiro e o Banco do Brasil. Opcionalmente, quando não informado, será considerado o contrato vinculado à identificação interna do cliente.
    debit_branch_office: 56, # Integer | Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    debit_current_account: 56, # Integer | Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    check_digits_debit_current_account: 'check_digits_debit_current_account_example', # String | Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
    payment_type: 56, # Integer | A modalidade que representa o tipo de pagamento, descrita a seguir: 126 significa pagamento de fornecedores; 127 significa pagamento de salário; 128 significa pagamento diverso.
    request_status: 56, # Integer | Código do estado da requisição a ser pesquisada: 1 - Requisição com todos os lançamentos com dados consistentes;  2 - Requisição com ao menos um dos lançamentos com dados inconsistentes; 3 - Requisição com todos os lançamentos com dados inconsistentes;  4 - Requisição pendente de ação pelo Conveniado - falta autorizar o pagamento;  5 - Requisição em processamento pelo Banco;  6 - Requisição Processada;  7 - Requisição Rejeitada,  8 - Preparando remessa não liberada,  9 - Requisição liberada via API,  10 -  Preparando remessa liberada.   As situações 1, 2 e 8 são transitórias e não requerem qualquer ação do Cliente Conveniado. situação 3 sempre será migrada para situação 7.  A situação 4 Significa que, ao menos um lançamento, depende de ação do Cliente Conveniado, seja liberando ou cancelando os pagamentos.  As situações 5, 6, 7, 9 e 10 não requerem qualquer ação do Cliente Conveniado. A situação 5 significa que, ao menos um lançamento, está agendado.  As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição. 
    index: 56 # Integer | Posição do índice de paginação.  Indica a posição a partir da qual a pesquisa tratá os registros (ex: valor 0, indica que está trazendo a partir do registro 1, valor 300 indica que está trazendo a partir do 301). Cada resposta tem um limite de 300 ocorrências na lista paymentList, iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso usando o valor do campo nextIndex da resposta
}

begin
    #List of transfers in batch
    result = api_instance.lista_transferencias_lote(gw_dev_app_key, authorization, start_date, end_date, opts)
    p result
rescue BancoBrasilPayments::ApiError => e
    puts "Exception when calling BatchPaymentsApi->lista_transferencias_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN] | 
 **start_date** | **Integer**| Data inicial de envio da requisição a ser pesquisada (formato: ddmmaaaa) | 
 **end_date** | **Integer**| Data final de envio da requisição a ser pesquisada (formato: ddmmaaaa) | 
 **payment_contract** | **Integer**| Contrato de pagamento entre o terceiro e o Banco do Brasil. Opcionalmente, quando não informado, será considerado o contrato vinculado à identificação interna do cliente. | [optional] 
 **debit_branch_office** | **Integer**| Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
 **debit_current_account** | **Integer**| Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
 **check_digits_debit_current_account** | **String**| Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
 **payment_type** | **Integer**| A modalidade que representa o tipo de pagamento, descrita a seguir: 126 significa pagamento de fornecedores; 127 significa pagamento de salário; 128 significa pagamento diverso. | [optional] 
 **request_status** | **Integer**| Código do estado da requisição a ser pesquisada: 1 - Requisição com todos os lançamentos com dados consistentes;  2 - Requisição com ao menos um dos lançamentos com dados inconsistentes; 3 - Requisição com todos os lançamentos com dados inconsistentes;  4 - Requisição pendente de ação pelo Conveniado - falta autorizar o pagamento;  5 - Requisição em processamento pelo Banco;  6 - Requisição Processada;  7 - Requisição Rejeitada,  8 - Preparando remessa não liberada,  9 - Requisição liberada via API,  10 -  Preparando remessa liberada.   As situações 1, 2 e 8 são transitórias e não requerem qualquer ação do Cliente Conveniado. situação 3 sempre será migrada para situação 7.  A situação 4 Significa que, ao menos um lançamento, depende de ação do Cliente Conveniado, seja liberando ou cancelando os pagamentos.  As situações 5, 6, 7, 9 e 10 não requerem qualquer ação do Cliente Conveniado. A situação 5 significa que, ao menos um lançamento, está agendado.  As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição.  | [optional] 
 **index** | **Integer**| Posição do índice de paginação.  Indica a posição a partir da qual a pesquisa tratá os registros (ex: valor 0, indica que está trazendo a partir do registro 1, valor 300 indica que está trazendo a partir do 301). Cada resposta tem um limite de 300 ocorrências na lista paymentList, iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso usando o valor do campo nextIndex da resposta | [optional] 

### Return type

[**RootTypeForBatchTransferGETResponseObject**](RootTypeForBatchTransferGETResponseObject.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sondagem_transferencia_lote**
> InlineResponse2002 sondagem_transferencia_lote(id, gw_dev_app_key, authorization)

Checks a transfers in batch request

Verifica se a requisição ao recurso Transfers in Batch foi bem-sucedida ao se registrar no sistema de pagamento do Banco do Brasil.  O requestresource (Transfers in Batch) faz uma validação referente ao solicitante do pagamento e às entradasfornecidas na requisição. Após 10 minutos, quando a rotina em lote é executada, o cliente deve verificar o resultado para ver se algum outro ponto de inconsistência foi encontrado. Além disso, após a data de pagamento informada, o cliente deve consultar novamente a solicitação de pagamento para saber definitivamente se tudo correu bem.

### Example

```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
    # Configure OAuth2 access token for authorization: OAuth2-CC
    config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BatchPaymentsApi.new
id = 'id_example' # String | Identificador da requisição de pagamento. Número único, não sequencial, controlado pelo cliente, com domínio entre 1 e 999999999.
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.

begin
    #Checks a transfers in batch request
    result = api_instance.sondagem_transferencia_lote(id, gw_dev_app_key, authorization)
    p result
rescue BancoBrasilPayments::ApiError => e
    puts "Exception when calling BatchPaymentsApi->sondagem_transferencia_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identificador da requisição de pagamento. Número único, não sequencial, controlado pelo cliente, com domínio entre 1 e 999999999. | 
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor. | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0. | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




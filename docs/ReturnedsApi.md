# BancoBrasilPayments::ReturnedsApi

All URIs are relative to *https://api.desenv.bb.com.br/payments-vpn/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consulta_pagamentos_retornados**](ReturnedsApi.md#consulta_pagamentos_retornados) | **GET** /returneds | Returned Payments

# **consulta_pagamentos_retornados**
> RootTypeForReturnedPaymentsResponseObject consulta_pagamentos_retornados(gw_dev_app_key, authorization, opts)

Returned Payments

Consultar as transferências via TED/DOC, conta pagamento e os pagamentos de boletos que foram efetivados e posteriormente devolvidos pelos favorecidos e/ou beneficiário.

### Example
```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::ReturnedsApi.new
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
opts = { 
  payment_contract: 56, # Integer | Contrato de pagamento entre o terceiro e o Banco do Brasil. Opcionalmente, quando não informado, será considerado o contrato vinculado à identificação interna do cliente.
  debit_branch_office: 56, # Integer | Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
  debit_current_account: 56, # Integer | Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
  check_digits_debit_current_account: 'check_digits_debit_current_account_example', # String | Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth.
  status_description: 'status_description_example', # String | Descrição da situação do pagamento: Agendado - Pagamento aguardando a data para efetivação do crédito;  Cancelado - Pagamento cancelado pelo Cliente Conveniado antes da data do crédito;  Consistente - Dados recebidos pelo Banco sem ocorrências quanto ao formato. Aguardando validação dos dados para liberação/efetivação dos pagamentos;  Devolvido - Pagamento efetuado e posteriormente recusado pelo recebedor. O valor é devolvida para a Conta corrente onde ocorreu o débito da requisição; Inconsistente - Dados recebidos pelo Banco com ocorrências quanto ao formato. A situação será alterada para rejeitado; Pago - Pagamento efetuado;  Pendente - Falta autorização para o débito do pagamento na conta do cliente conveniado;  Rejeitado - Dados do pagamento não passaram na validações físicas e/ou lógicas. Ex: agência e conta não existem, conta não pertence ao CPF informado; Vencido - Pagamento não efetuado na data indicada por falta de saldo ou falta de autorização para débito do pagamento na conta do cliente conveniado.
  start_date: 56, # Integer | Data inicial de envio da requisição a ser pesquisada.
  end_date: 56, # Integer | Data final de envio da requisição a ser pesquisada.
  index: 56 # Integer | Posição do índice. Cada resposta tem um limite de 300 ocorrências na lista paymentList, iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso usando o valor do campo nextIndex da resposta.
}

begin
  #Returned Payments
  result = api_instance.consulta_pagamentos_retornados(gw_dev_app_key, authorization, opts)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling ReturnedsApi->consulta_pagamentos_retornados: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN] | 
 **payment_contract** | **Integer**| Contrato de pagamento entre o terceiro e o Banco do Brasil. Opcionalmente, quando não informado, será considerado o contrato vinculado à identificação interna do cliente. | [optional] 
 **debit_branch_office** | **Integer**| Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
 **debit_current_account** | **Integer**| Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
 **check_digits_debit_current_account** | **String**| Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
 **status_description** | **String**| Descrição da situação do pagamento: Agendado - Pagamento aguardando a data para efetivação do crédito;  Cancelado - Pagamento cancelado pelo Cliente Conveniado antes da data do crédito;  Consistente - Dados recebidos pelo Banco sem ocorrências quanto ao formato. Aguardando validação dos dados para liberação/efetivação dos pagamentos;  Devolvido - Pagamento efetuado e posteriormente recusado pelo recebedor. O valor é devolvida para a Conta corrente onde ocorreu o débito da requisição; Inconsistente - Dados recebidos pelo Banco com ocorrências quanto ao formato. A situação será alterada para rejeitado; Pago - Pagamento efetuado;  Pendente - Falta autorização para o débito do pagamento na conta do cliente conveniado;  Rejeitado - Dados do pagamento não passaram na validações físicas e/ou lógicas. Ex: agência e conta não existem, conta não pertence ao CPF informado; Vencido - Pagamento não efetuado na data indicada por falta de saldo ou falta de autorização para débito do pagamento na conta do cliente conveniado. | [optional] 
 **start_date** | **Integer**| Data inicial de envio da requisição a ser pesquisada. | [optional] 
 **end_date** | **Integer**| Data final de envio da requisição a ser pesquisada. | [optional] 
 **index** | **Integer**| Posição do índice. Cada resposta tem um limite de 300 ocorrências na lista paymentList, iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso usando o valor do campo nextIndex da resposta. | [optional] 

### Return type

[**RootTypeForReturnedPaymentsResponseObject**](RootTypeForReturnedPaymentsResponseObject.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




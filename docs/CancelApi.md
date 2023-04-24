# BancoBrasilPayments::CancelApi

All URIs are relative to *https://api.desenv.bb.com.br/payments-vpn/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelamento_transferencia_lote**](CancelApi.md#cancelamento_transferencia_lote) | **POST** /batch-transfers/cancel | Cancels a request for transfers in batch

# **cancelamento_transferencia_lote**
> RootTypeForBatchTransfersCancelResponseObject cancelamento_transferencia_lote(bodyauthorizationgw_dev_app_key)

Cancels a request for transfers in batch

Cancela, em lote, solicitações de transferências e de pagamentos boletos e guias, requisitadas através dos recursos: /batch-transfers (POST), /barcode-collection-forms (POST), /payments-vpn/v2/batch-slips (POST).

### Example
```ruby
# load the gem
require 'bb_payments'
# setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::CancelApi.new
body = BancoBrasilPayments::RootTypeForBatchTransfersCancelRequestObject.new # RootTypeForBatchTransfersCancelRequestObject | Objeto de Requisição do recurso Batch Transfers Cancel
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed


begin
  #Cancels a request for transfers in batch
  result = api_instance.cancelamento_transferencia_lote(bodyauthorizationgw_dev_app_key)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling CancelApi->cancelamento_transferencia_lote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RootTypeForBatchTransfersCancelRequestObject**](RootTypeForBatchTransfersCancelRequestObject.md)| Objeto de Requisição do recurso Batch Transfers Cancel | 
 **authorization** | **String**| É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN] | 
 **gw_dev_app_key** | **String**| Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed | 

### Return type

[**RootTypeForBatchTransfersCancelResponseObject**](RootTypeForBatchTransfersCancelResponseObject.md)

### Authorization

[OAuth2-CC](../README.md#OAuth2-CC)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




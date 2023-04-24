# bb_payments

BancoBrasilPayments - The Ruby gem for the the Banco do Brasil Payments API

- API version: 3.5
- Package version: 1.0.0
For more information, please visit [https://developers.bb.com.br](https://developers.bb.com.br)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build bb_payments.gemspec
```

Then either install the gem locally:

```shell
gem install ./bb_payments-1.0.0.gem
```
(for development, run `gem install --dev ./bb_payments-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'bb_payments', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'bb_payments', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'bb_payments'
# Setup authorization
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
# Setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BankSlipsApi.new
body = BancoBrasilPayments::RootTypeForBankSlipsBatchPayment.new # RootTypeForBankSlipsBatchPayment | Objeto de requisição do recurso de pagamento em lote de Boletos.
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]

begin
  #Batch Payment of Bank Slips
  result = api_instance.enviar_pagamento_boletos_lote(body, gw_dev_app_key, authorization)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling BankSlipsApi->enviar_pagamento_boletos_lote: #{e}"
end
# Setup authorization
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
# Setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::CancelApi.new
body = BancoBrasilPayments::RootTypeForBatchTransfersCancelRequestObject.new # RootTypeForBatchTransfersCancelRequestObject | Objeto de Requisição do recurso Batch Transfers Cancel
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.  Example: 0021239456d80136bebf005056891bed
authorization = 'authorization_example' # String | É um “token” de acesso fornecido pelo OAuth 2.0.  Example: Bearer [ACCESS_TOKEN]

begin
  #Cancels a request for transfers in batch
  result = api_instance.cancelamento_transferencia_lote(body, gw_dev_app_key, authorization)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling CancelApi->cancelamento_transferencia_lote: #{e}"
end
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
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
# Setup authorization
BancoBrasilPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2-CC
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BancoBrasilPayments::BatchPaymentsApi.new
body = BancoBrasilPayments::Body.new # Body | 
gw_dev_app_key = 'gw_dev_app_key_example' # String | Chave de acesso do aplicativo do desenvolvedor. Esta chave é única e obtida no Portal “BB for Developers” e usada para identificar as requisições da aplicação do desenvolvedor.
authorization = 'authorization_example' # String | É um \"token\" de acesso fornecido pelo OAuth 2.0.

begin
  #Request for transfers in batch
  result = api_instance.envia_transferencias_lote(body, gw_dev_app_key, authorization)
  p result
rescue BancoBrasilPayments::ApiError => e
  puts "Exception when calling BatchPaymentsApi->envia_transferencias_lote: #{e}"
end
# Setup authorization
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
# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://api.desenv.bb.com.br/payments-vpn/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BancoBrasilPayments::BankSlipsApi* | [**consulta_pagamento_boleto**](docs/BankSlipsApi.md#consulta_pagamento_boleto) | **GET** /barcode-payment-slips/{id} | Barcode Payment Slip Details
*BancoBrasilPayments::BankSlipsApi* | [**enviar_pagamento_boletos_lote**](docs/BankSlipsApi.md#enviar_pagamento_boletos_lote) | **POST** /batch-slips | Batch Payment of Bank Slips
*BancoBrasilPayments::BankSlipsApi* | [**sondagem_pagamento_boleto**](docs/BankSlipsApi.md#sondagem_pagamento_boleto) | **GET** /batch-slips/{id}/check | Checks the payment of Bank Slips made in the Request Payment feature
*BancoBrasilPayments::CancelApi* | [**cancelamento_transferencia_lote**](docs/CancelApi.md#cancelamento_transferencia_lote) | **POST** /batch-transfers/cancel | Cancels a request for transfers in batch
*BancoBrasilPayments::CollectionFormsApi* | [**consulta_pagamento_guia_lote**](docs/CollectionFormsApi.md#consulta_pagamento_guia_lote) | **GET** /barcode-collection-forms/{id} | Consulta Pagamentos em Lote de Guias com Código de Barra
*BancoBrasilPayments::CollectionFormsApi* | [**envia_pagamento_guias_lote**](docs/CollectionFormsApi.md#envia_pagamento_guias_lote) | **POST** /barcode-collection-forms | Barcode Collection Forms Payment
*BancoBrasilPayments::CollectionFormsApi* | [**sondagem_pagamento_guia_lote**](docs/CollectionFormsApi.md#sondagem_pagamento_guia_lote) | **GET** /barcode-collection-forms/{id}/check | Barcode Collection Forms Payment Check
*BancoBrasilPayments::ReturnedsApi* | [**consulta_pagamentos_retornados**](docs/ReturnedsApi.md#consulta_pagamentos_retornados) | **GET** /returneds | Returned Payments
*BancoBrasilPayments::TransfersApi* | [**consula_pagamento_transferencias_lote**](docs/TransfersApi.md#consula_pagamento_transferencias_lote) | **GET** /batch-transfers/payments/{id} | Retrieval of detailed infomation of a specific payment
*BancoBrasilPayments::TransfersApi* | [**consulta_transferencia_lote**](docs/TransfersApi.md#consulta_transferencia_lote) | **GET** /batch-transfers/{id} | Retrieval from transfers in batch
*BancoBrasilPayments::TransfersApi* | [**envia_transferencias_lote**](docs/TransfersApi.md#envia_transferencias_lote) | **POST** /batch-transfers | Request for transfers in batch
*BancoBrasilPayments::TransfersApi* | [**lista_transferencias_lote**](docs/TransfersApi.md#lista_transferencias_lote) | **GET** /batch-transfers | List of transfers in batch
*BancoBrasilPayments::TransfersApi* | [**sondagem_transferencia_lote**](docs/TransfersApi.md#sondagem_transferencia_lote) | **GET** /batch-transfers/{id}/check | Checks a transfers in batch request

## Documentation for Models

 - [BancoBrasilPayments::BarcodeCollectionFormsIDResponseObject](docs/BarcodeCollectionFormsIDResponseObject.md)
 - [BancoBrasilPayments::BarcodeCollectionFormsIDResponseObjectListaGuiaCodigoBarra](docs/BarcodeCollectionFormsIDResponseObjectListaGuiaCodigoBarra.md)
 - [BancoBrasilPayments::BarcodeCollectionFormsIDResponseObjectListaOcorrencia](docs/BarcodeCollectionFormsIDResponseObjectListaOcorrencia.md)
 - [BancoBrasilPayments::BarcodeCollectionFormsRequestObject](docs/BarcodeCollectionFormsRequestObject.md)
 - [BancoBrasilPayments::BarcodecollectionformsCollectionFormDetailsList](docs/BarcodecollectionformsCollectionFormDetailsList.md)
 - [BancoBrasilPayments::BatchtransfersPaymentsList](docs/BatchtransfersPaymentsList.md)
 - [BancoBrasilPayments::BatchtransferscancelPaymentIds](docs/BatchtransferscancelPaymentIds.md)
 - [BancoBrasilPayments::Body](docs/Body.md)
 - [BancoBrasilPayments::Error](docs/Error.md)
 - [BancoBrasilPayments::ErrorErrors](docs/ErrorErrors.md)
 - [BancoBrasilPayments::ErrorOAuthUnauthorized](docs/ErrorOAuthUnauthorized.md)
 - [BancoBrasilPayments::ErrorOAuthUnauthorizedAttributes](docs/ErrorOAuthUnauthorizedAttributes.md)
 - [BancoBrasilPayments::InlineResponse200](docs/InlineResponse200.md)
 - [BancoBrasilPayments::InlineResponse2001](docs/InlineResponse2001.md)
 - [BancoBrasilPayments::InlineResponse2001OcurrencesList](docs/InlineResponse2001OcurrencesList.md)
 - [BancoBrasilPayments::InlineResponse2002](docs/InlineResponse2002.md)
 - [BancoBrasilPayments::InlineResponse2002PaymentsList](docs/InlineResponse2002PaymentsList.md)
 - [BancoBrasilPayments::InlineResponse2003](docs/InlineResponse2003.md)
 - [BancoBrasilPayments::InlineResponse2003ListaBoleto](docs/InlineResponse2003ListaBoleto.md)
 - [BancoBrasilPayments::InlineResponse2003ListaDevolucao](docs/InlineResponse2003ListaDevolucao.md)
 - [BancoBrasilPayments::InlineResponse200PaymentsList](docs/InlineResponse200PaymentsList.md)
 - [BancoBrasilPayments::InlineResponse201](docs/InlineResponse201.md)
 - [BancoBrasilPayments::InlineResponse2011](docs/InlineResponse2011.md)
 - [BancoBrasilPayments::InlineResponse2011PaymentsList](docs/InlineResponse2011PaymentsList.md)
 - [BancoBrasilPayments::InlineResponse201PaymentsList](docs/InlineResponse201PaymentsList.md)
 - [BancoBrasilPayments::InlineResponse400](docs/InlineResponse400.md)
 - [BancoBrasilPayments::InlineResponse401](docs/InlineResponse401.md)
 - [BancoBrasilPayments::RootTypeForBankSlipList](docs/RootTypeForBankSlipList.md)
 - [BancoBrasilPayments::RootTypeForBankSlipsBatchPayment](docs/RootTypeForBankSlipsBatchPayment.md)
 - [BancoBrasilPayments::RootTypeForBankSlipsBatchPaymentResponseObject](docs/RootTypeForBankSlipsBatchPaymentResponseObject.md)
 - [BancoBrasilPayments::RootTypeForBatchTransferGETResponseObject](docs/RootTypeForBatchTransferGETResponseObject.md)
 - [BancoBrasilPayments::RootTypeForBatchTransferPaymentsListGET](docs/RootTypeForBatchTransferPaymentsListGET.md)
 - [BancoBrasilPayments::RootTypeForBatchTransfersCancelPaymentsListObject](docs/RootTypeForBatchTransfersCancelPaymentsListObject.md)
 - [BancoBrasilPayments::RootTypeForBatchTransfersCancelRequestObject](docs/RootTypeForBatchTransfersCancelRequestObject.md)
 - [BancoBrasilPayments::RootTypeForBatchTransfersCancelResponseObject](docs/RootTypeForBatchTransfersCancelResponseObject.md)
 - [BancoBrasilPayments::RootTypeForReturnedPaymentsDetails](docs/RootTypeForReturnedPaymentsDetails.md)
 - [BancoBrasilPayments::RootTypeForReturnedPaymentsResponseObject](docs/RootTypeForReturnedPaymentsResponseObject.md)
 - [BancoBrasilPayments::RootTypeForSlipsDetailsObject](docs/RootTypeForSlipsDetailsObject.md)

## Documentation for Authorization


### OAuth2-CC

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - : 


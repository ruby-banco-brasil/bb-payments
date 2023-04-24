# BancoBrasilPayments::RootTypeForBatchTransferPaymentsListGET

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sequential_request_id** | **Integer** | ID sequencial da requisição | [optional] 
**request_payment_message** | **String** | Texto de uso livre do cliente. | [optional] 
**request_status** | **Integer** | Código do estado da requisição a ser pesquisada: 1 - Requisição com todos os lançamentos com dados consistentes;  2 - Requisição com ao menos um dos lançamentos com dados inconsistentes; 3 - Requisição com todos os lançamentos com dados inconsistentes;  4 - Requisição pendente de ação pelo Conveniado - falta autorizar o pagamento;  5 - Requisição em processamento pelo Banco;  6 - Requisição Processada;  7 - Requisição Rejeitada,  8 - Preparando remessa não liberada,  9 - Requisição liberada via API,  10 -  Preparando remessa liberada.   As situações 1, 2 e 8 são transitórias e não requerem qualquer ação do Cliente Conveniado. situação 3 sempre será migrada para situação 7.  A situação 4 Significa que, ao menos um lançamento, depende de ação do Cliente Conveniado, seja liberando ou cancelando os pagamentos.  As situações 5, 6, 7, 9 e 10 não requerem qualquer ação do Cliente Conveniado. A situação 5 significa que, ao menos um lançamento, está agendado.  As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição.  | [optional] 
**debit_branch_office** | **Integer** | Código da agência para débito. | [optional] 
**debit_current_account** | **Integer** | Conta corrente de débito.  | [optional] 
**check_digits_debit_current_account** | **String** | Dígito do verificador da conta corrente para débito. | [optional] 
**request_date** | **Integer** | Data em que o cliente enviou ao banco a requisição de pagamento (formato ddmmaaaa). Solicitações de pagamentos para dias não úteis ou após o horário limite de processamento serão pagas no próximo dia útil, com exceção de transferências entre contas do Banco do Brasil | [optional] 
**request_sent_hour** | **Integer** | Hora do envio da requisição do envio do lote | [optional] 
**payment_type** | **Integer** | Modalidade que representa o tipo de pagamento, sendo: 126 pagamento de fornecedores; 127 pagamento de salário e 128 pagamentos diversos | [optional] 
**user_id** | **String** | Identificação do usuário que enviou a requisição | [optional] 
**user_name** | **String** | Nome do responsável pelo envio do lote. (para casos de login e explícito) | [optional] 
**bankpayment_quantity** | **Integer** | Quantidade total de boletos | [optional] 
**bankpayment_amount** | **Float** | Valor do pagamento em reais (formato 0.00) | [optional] 
**valid_bankpayment_quantity** | **Integer** | Quantidade total de todos os pagamentos pretendidos válidos a serem processados em lote | [optional] 
**valid_bankpayment_amount** | **Float** | Valor total de todos os pagamentos pretendidos válidos a serem processados em lote (formato 0.00) | [optional] 


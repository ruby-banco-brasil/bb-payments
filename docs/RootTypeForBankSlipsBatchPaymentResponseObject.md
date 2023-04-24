# BancoBrasilPayments::RootTypeForBankSlipsBatchPaymentResponseObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_status** | **Integer** | Código do estado da requisição a ser pesquisada: 1 - Requisição com todos os lançamentos com dados consistentes;  2 - Requisição com ao menos um dos lançamentos com dados inconsistentes; 3 - Requisição com todos os lançamentos com dados inconsistentes;  4 - Requisição pendente de ação pelo Conveniado - falta autorizar o pagamento;  5 - Requisição em processamento pelo Banco;  6 - Requisição Processada;  7 - Requisição Rejeitada,  8 - Preparando remessa não liberada,  9 - Requisição liberada via API,  10 -  Preparando remessa liberada.   As situações 1, 2 e 8 são transitórias e não requerem qualquer ação do Cliente Conveniado. situação 3 sempre será migrada para situação 7.  A situação 4 Significa que, ao menos um lançamento, depende de ação do Cliente Conveniado, seja liberando ou cancelando os pagamentos.  As situações 5, 6, 7, 9 e 10 não requerem qualquer ação do Cliente Conveniado. A situação 5 significa que, ao menos um lançamento, está agendado.  As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição.  | [optional] 
**bank_slip_quantity** | **Integer** | Quantidade total de boletos | [optional] 
**bank_slip_amount** | **Integer** | Valor total dos boletos (formato 0.00) | [optional] 
**valid_bank_slip_quantity** | **Integer** | Quantidade total de boletos válidos | [optional] 
**valid_bank_slip_amount** | **Integer** | Valor total dos boletos válidos (formato 0.00) | [optional] 
**bank_slip_list** | [**Array&lt;RootTypeForBankSlipList&gt;**](RootTypeForBankSlipList.md) | Lista de Boletos. | [optional] 


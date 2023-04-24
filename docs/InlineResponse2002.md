# BancoBrasilPayments::InlineResponse2002

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status_description** | **Float** | pt-BR: Código do estado da requisição a ser pesquisada: 1 - Requisição com todos os lançamentos com dados consistentes;  2 - Requisição com ao menos um dos lançamentos com dados inconsistentes; 3 - Requisição com todos os lançamentos com dados inconsistentes;  4 - Requisição pendente de ação pelo Conveniado - falta autorizar o pagamento;  5 - Requisição em processamento pelo Banco;  6 - Requisição Processada;  7 - Requisição Rejeitada  As situações 1 e 2 são transitórias e não requerem qualquer ação do Cliente Conveniado. A situação 3 sempre será migrada para situação 7. A situação 4 Significa que, ao menos um lançamento, depende de açao do Cliente Conveniado, seja liberando ou cancelando os pagamentos.  As situações 5, 6 e 7 não requerem qualquer ação do Cliente Conveniado. A situação 5 significa que, ao menos um lançamento, está agendado. As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição. | [optional] 
**payments_quantity** | **Float** | Quantidade de pagamentos pretendidos a serem processados em lote. | [optional] 
**payments_amount** | **Float** | Valor total de todos os pagamentos pretendidos a serem processados em lote (formato 0.00) | [optional] 
**valid_payments_quantity** | **Float** | Quantidade de pagamentos pretendidos válidos a serem processados em lote. | [optional] 
**valid_payments_amount** | **Float** | Valor total de todos os pagamentos pretendidos válidos a serem processados em lote (formato 0.00) | [optional] 
**payments_list** | [**Array&lt;InlineResponse2002PaymentsList&gt;**](InlineResponse2002PaymentsList.md) | Lista parcial de pagamentos a serem processados em lote. | [optional] 


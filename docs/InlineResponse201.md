# BancoBrasilPayments::InlineResponse201

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_identification** | **Float** | Identificação da solicitação de pagamento. É um número único, não sequencial, controlado pelo cliente, cujo valor vai de 1 a 999999. | [optional] 
**request_status** | **Float** | Código do estado da requisição a ser pesquisada: 1 - Requisição com todos os lançamentos com dados consistentes;  2 - Requisição com ao menos um dos lançamentos com dados inconsistentes; 3 - Requisição com todos os lançamentos com dados inconsistentes;  4 - Requisição pendente de ação pelo Conveniado - falta autorizar o pagamento;  5 - Requisição em processamento pelo Banco;  6 - Requisição Processada;  7 - Requisição Rejeitada,  8 - Preparando remessa não liberada,  9 - Requisição liberada via API,  10 -  Preparando remessa liberada.   As situações 1, 2 e 8 são transitórias e não requerem qualquer ação do Cliente Conveniado. situação 3 sempre será migrada para situação 7.  A situação 4 Significa que, ao menos um lançamento, depende de ação do Cliente Conveniado, seja liberando ou cancelando os pagamentos.  As situações 5, 6, 7, 9 e 10 não requerem qualquer ação do Cliente Conveniado. A situação 5 significa que, ao menos um lançamento, está agendado.  As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição.  | [optional] 
**payments_quantity** | **Float** | Quantidade de pagamentos pretendidos a serem processados em lote. | [optional] 
**payments_total_value** | **Float** | Valor total, em reais, de todos os pagamentos pretendidos a serem processados em lote. Os dois números finais do valor representam o formato decimal. Por exemplo, o valor 10000 significa R$ 100,00. | [optional] 
**valid_payments_quantity** | **Float** | Quantidade de pagamentos pretendidos válidos a serem processados em lote. | [optional] 
**valid_payments_total_value** | **Float** | Valor total, em reais, de todos os pagamentos pretendidos válidos a serem processados em lote. Os dois números finais do valor representam o formato decimal. Por exemplo, o valor 10000 significa R$ 100,00. | [optional] 
**payments_list** | [**Array&lt;InlineResponse201PaymentsList&gt;**](InlineResponse201PaymentsList.md) | Lista de pagamentos a serem processados em lote. | [optional] 


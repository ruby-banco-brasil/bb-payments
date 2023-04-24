# BancoBrasilPayments::InlineResponse2011

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_identification** | **Integer** | Identificação da solicitação de pagamento. É um número único, não sequencial, controlado pelo cliente, cujo valor vai de 1 a 999999. | [optional] 
**request_status** | **Integer** | Código do estado da requisição a ser pesquisada: 1 - Requisição com todos os lançamentos com dados consistentes;  2 - Requisição com ao menos um dos lançamentos com dados inconsistentes; 3 - Requisição com todos os lançamentos com dados inconsistentes;  4 - Requisição pendente de ação pelo Conveniado - falta autorizar o pagamento;  5 - Requisição em processamento pelo Banco;  6 - Requisição Processada;  7 - Requisição Rejeitada,  8 - Preparando remessa não liberada,  9 - Requisição liberada via API,  10 -  Preparando remessa liberada.   As situações 1, 2 e 8 são transitórias e não requerem qualquer ação do Cliente Conveniado. situação 3 sempre será migrada para situação 7.  A situação 4 Significa que, ao menos um lançamento, depende de ação do Cliente Conveniado, seja liberando ou cancelando os pagamentos.  As situações 5, 6, 7, 9 e 10 não requerem qualquer ação do Cliente Conveniado. A situação 5 significa que, ao menos um lançamento, está agendado.  As situações 6 e 7 são definitivas não havendo alteração posterior da situação da requisição.  | [optional] 
**payment_quantity** | **Integer** | Quantidade total de Guias de Recolhimento | [optional] 
**payment_amount** | **Float** | Valor total das Guias de Recolhimento (formato 0.00) | [optional] 
**valid_payment_quantity** | **Integer** | Quantidade total de lançamentos válidos | [optional] 
**valid_payment_amount** | **Float** | Valor total dos lançamentos válidos (formato 0.00). | [optional] 
**payments_list** | [**Array&lt;InlineResponse2011PaymentsList&gt;**](InlineResponse2011PaymentsList.md) | Lista de pagamentos a serem processados em lote. | [optional] 


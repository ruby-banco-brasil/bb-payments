# BancoBrasilPayments::RootTypeForBatchTransferGETResponseObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **Integer** | Posição do índice. Cada resposta tem um limite de 300 ocorrências na lista paymentsList, iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso usando o valor do campo nextIndex da resposta. | [optional] 
**payments_quantity** | **Integer** | Quantidade de pagamentos | [optional] 
**payments_list** | [**Array&lt;RootTypeForBatchTransferPaymentsListGET&gt;**](RootTypeForBatchTransferPaymentsListGET.md) | List of payments to be processed in batch. Not allowed more than 500 records.  pt-BR: Lista de pagamentos a serem processados em lote. Não permitido mais de 500 registros. | [optional] 


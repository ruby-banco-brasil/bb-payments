# BancoBrasilPayments::RootTypeForReturnedPaymentsResponseObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **Integer** | Posição do índice. Cada resposta tem um limite de 300 ocorrências na lista paymentList, iniciada a partir do valor do índice fornecido. Para todas as ocorrências, itere sobre esse recurso usando o valor do campo nextIndex da resposta. | [optional] 
**list_payments** | [**Array&lt;RootTypeForReturnedPaymentsDetails&gt;**](RootTypeForReturnedPaymentsDetails.md) | Lista de detalhes dos pagamentos | [optional] 
**total_list_quantity** | **Integer** | Quantidade total de pagamentos na tabela | [optional] 
**current_list_quantity** | **Integer** | Quantidade total de pagamentos | [optional] 


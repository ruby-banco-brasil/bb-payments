# BancoBrasilPayments::RootTypeForBatchTransfersCancelRequestObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debit_branch_office** | [**BigDecimal**](BigDecimal.md) | Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**debit_current_account** | [**BigDecimal**](BigDecimal.md) | Current account for debit;  Conta Corrente para débito. | [optional] 
**check_digit_debit_current_account** | **String** | Check digits of current account for debit;  Dígito verificador da conta para débito. | [optional] 
**payment_contract** | **Integer** | pt-BR: Contract of payment between the third party and Banco do Brasil. Optionally when not informed it will be considered the contract bound to internal identification of the customer.  pt-BR: Contrato de pagamento entre o terceiro e o Banco do Brasil. Opcionalmente, quando não informado, será considerado o contrato vinculado à identificação interna do cliente. | 
**payments_quantity** | **Integer** | en-US: Quantity of intended payments to be processed in batch.  pt-BR: Quantidade de pagamentos pretendidos a serem processados​em lote. | 
**payment_ids** | [**Array&lt;BatchtransferscancelPaymentIds&gt;**](BatchtransferscancelPaymentIds.md) | Lista de cancelamentos a serem processados em lote. (Atenção!! As transferências poderão ser canceladas até que a remessa de solicitação do pagamento esteja PROCESSADA. Após o processamento, cancelamentos não serão possíveis) | 


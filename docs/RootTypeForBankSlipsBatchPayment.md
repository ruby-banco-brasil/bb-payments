# BancoBrasilPayments::RootTypeForBankSlipsBatchPayment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_contract** | **Integer** | Contrato de pagamento entre o terceiro e o Banco do Brasil. Opcionalmente, quando não informado, será considerado o contrato vinculado à identificação interna do cliente. | [optional] 
**debit_branch_office** | **Integer** | Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**debit_current_account** | **Integer** | Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**check_digits_debit_current_account** | **String** | Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**slips_details_list** | [**Array&lt;RootTypeForSlipsDetailsObject&gt;**](RootTypeForSlipsDetailsObject.md) | Lista de detalhes de boletos. | 
**request_id** | **Integer** | Numero controlado pelo cliente para identificar cada acionamento da API e os lançamentos de cada chamada. Não precisa ser sequencial. De uso único. | 


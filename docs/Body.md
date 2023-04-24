# BancoBrasilPayments::Body

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_identification** | **Float** | Identificação da solicitação de pagamento. É um número único, não sequencial, controlado pelo cliente, cujo valor vai de 1 a 999999. | [optional] 
**payment_contract** | **Float** | Contrato de pagamento entre o terceiro e o Banco do Brasil. Opcionalmente, quando não informado, será considerado o contrato vinculado à identificação interna do cliente. | [optional] 
**debit_branch_office** | **Float** | Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**debit_current_account** | [**BigDecimal**](BigDecimal.md) | Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**check_digits_debit_current_account** | **String** | Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**payment_type** | **Float** | Modalidade que representa o tipo de pagamento, sendo: 126 pagamento de fornecedores; 127 pagamento de salário e 128 pagamentos diversos | [optional] 
**payments_list** | [**Array&lt;BatchtransfersPaymentsList&gt;**](BatchtransfersPaymentsList.md) | Lista de pagamentos a serem processados em lote. Não permitido mais de 250 registros. | [optional] 


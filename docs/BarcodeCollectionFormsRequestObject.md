# BancoBrasilPayments::BarcodeCollectionFormsRequestObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_identification** | **Integer** | Identificação da solicitação de pagamento. É um número único, não sequencial, controlado pelo cliente, cujo valor vai de 1 a 999999. | 
**payment_contract** | **Integer** | Contrato de pagamento entre o terceiro e o Banco do Brasil. Opcionalmente, quando não informado, será considerado o contrato vinculado à identificação interna do cliente. | [optional] 
**debit_branch_office** | **Integer** | Código da agência para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**debit_current_account** | **Integer** | Conta corrente de débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**check_digits_debit_current_account** | **String** | Dígito do verificador da conta corrente para débito. Não é necessário quando a solicitação é acessada pelo código de autorização no fluxo do OAuth. | [optional] 
**collection_form_details_list** | [**Array&lt;BarcodecollectionformsCollectionFormDetailsList&gt;**](BarcodecollectionformsCollectionFormDetailsList.md) | Lista de Guias de Pagamento detalhadas | 


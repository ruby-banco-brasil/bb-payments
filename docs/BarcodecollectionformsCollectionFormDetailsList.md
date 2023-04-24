# BancoBrasilPayments::BarcodecollectionformsCollectionFormDetailsList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**numeric_bar_code** | **String** | Define o código de barras numérico da Guia de Recolhimento. | 
**payment_date** | **Integer** | Data em que deverá ser efetivado o pagamento (formato: ddmmaaaa). Os pagamentos poderão ser agendados para até 180 dias. Campo Obrigatório. | 
**payment_value** | **Float** | Valor total das Guias de Recolhimento (formato 0.00). Campo Obrigatório. | 
**debit_code** | **Integer** | Código personalizado usado para identificar um débito no extrato bancário do cliente. Pode ser usado para agrupar débitos similares | [optional] 
**your_number** | **String** | Nº de uso livre pelo cliente conveniado. Equivalente ao Seu Número (Limitado a 20 caracteres). | [optional] 
**customer_description** | **String** | Descrição do pagamento. Pode ser preenchido livremente pelo cliente como forma de identificação para o pagamento. | [optional] 


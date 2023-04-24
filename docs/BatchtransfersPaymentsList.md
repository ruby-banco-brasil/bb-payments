# BancoBrasilPayments::BatchtransfersPaymentsList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clearinghouse_code** | **Float** | Código de identificação da instituição para crédito na câmara de compensação (no Brasil, identificado pela sigla COMPE). Por exemplo, valor 1 para o Banco do Brasil e valor 104 para a Caixa Econômica Federal. Se o valor 0 for informado, o campo ispbCode será considerado. | [optional] 
**ispb_code** | **Float** | Código identificador do Sistema de Pagamento Brasileiro (Identificado pelo acrônimo ISPB) para crédito. Por exemplo, valor 0 para o Banco do Brasil e valor 360305 para a Caixa Econômica Federal. Não considerado quando o campo clearinghouse é informado. | [optional] 
**credit_branch_office** | **Float** | Código da agência para crédito. | [optional] 
**credit_current_account** | **Float** | Conta corrente para crédito. | [optional] 
**check_digits_credit_current_account** | **String** | Dígito verificador da conta corrente para crédito. | [optional] 
**credit_payment_account** | **String** | Conta de pagamento para crédito. Se esse campo estiver preenchido, os campos creditBranchOffice, creditCurrentAccount, checkDigitsCreditCurrentAccount e depositInCourtIdentifier não deverão ser inseridos. | [optional] 
**individual_taxpayer_registration** | **Float** | Número do CPF junto à Receita Federal. Não informado quando diz respeito ao pagamento de contribuinte do tipo pessoa jurídica. | [optional] 
**corporate_taxpayer_registration** | [**BigDecimal**](BigDecimal.md) | Número do CNPJ junto à Receita Federal. Não informado quando diz respeito ao pagamento de contribuinte do tipo pessoa física. | [optional] 
**payment_date** | **Float** | Data do pagamento (formato ddmmaaaa). Solicitações de pagamentos para dias não úteis ou após o horário limite de processamento serão pagas no próximo dia útil, com exceção de transferências entre contas do Banco do Brasil. Poderão ser efetuados agendamentos para até 180 dias | [optional] 
**payment_value** | **Float** | Valor do pagamento em reais (formato 0.00) | 
**debit_document** | **Float** | Documento de débito que será mostrado no extrato da conta do pagador.  Por ser um campo opcional, se não inserido, a conta de débito terá um único lançamento no valor total de todos os lançamentos de créditos validados. De igual modo será se o mesmo número for informado para todos os lançamentos de crédito.  Quando números diferentes forem informados para cada lançamento, os lançamentos de débitos serão individualizados. | [optional] 
**credit_document** | **Float** | Número do documento de crédito exibido no extrato do favorecido - uso exclusivo para Crédito em conta corrente no BB. | [optional] 
**credit_order_purpose_code** | **String** | Código de finalidade informado quando se trata de DOC. Uma lista de códigos permitidos é obtida na Federação Brasileira de Bancos (identificada pela sigla FEBRABAN). Por exemplo, 1 para Crédito em Conta Corrente; 11 para DOC em Conta Poupança; 12 para DOC em Conta de Depósito Judicial. | [optional] 
**wire_transfer_purpose_code** | **String** | Código de finalidade informado quando se trata de TED.  Uma lista de códigos permitidos é obtida no Banco Central do Brasil (Identificado pelo acrônimo BACEN). | [optional] 
**deposit_in_court_identifier** | **String** | Identificador informado quando se trata de depósito judicial.  Insira valor 1 para o campo COMPE ou valor 0 para o campo ISPB.  Se esse campo estiver preenchido, os campos creditBranchOffice, creditCurrentAccount, checkDigitsCreditCurrentAccount e creditPaymentAccount não deverão ser inseridos. | [optional] 
**payment_description** | **String** | Campo de uso livre pelo cliente conveniado - sem tratamento pelo Banco. | [optional] 


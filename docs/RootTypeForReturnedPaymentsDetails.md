# BancoBrasilPayments::RootTypeForReturnedPaymentsDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_id** | **String** | Código identificador do pagamento. | [optional] 
**payment_type** | **Integer** | Modalidade que representa o tipo de pagamento, sendo: 126 pagamento de fornecedores; 127 pagamento de salário e 128 pagamentos diversos | [optional] 
**credit_type** | **Integer** | A modalidade que representa a maneira como o crédito foi dado, descrito a seguir: 1 significa Crédito em Conta Corrente; 3 significa DOC ou TED; 5 significa Crédito em Conta Poupança; 13 significa Liquidação de Guia com Código de Barra; 21 significa Liquidação de Guia sem Código de Barra; 30 significa Liquidação de Boleto Bancário; 31 significa Liquidação de Papéis Diversos; 71 significa Depósito Judicial. | [optional] 
**payment_date** | **Integer** | Data do pagamento (formato ddmmaaaa). Solicitações de pagamentos para dias não úteis ou após o horário limite de processamento serão pagas no próximo dia útil, com exceção de transferências entre contas do Banco do Brasil | [optional] 
**clearinghouse_code** | **Integer** | Código de identificação da instituição para crédito na câmara de compensação (no Brasil, identificado pela sigla COMPE). Por exemplo, valor 1 para o Banco do Brasil e valor 104 para a Caixa Econômica Federal. Se o valor 0 for informado, o campo ispbCode será considerado. | [optional] 
**ispb_code** | **Integer** | Código identificador do Sistema de Pagamento Brasileiro (Identificado pelo acrônimo ISPB) para crédito. Por exemplo, valor 0 para o Banco do Brasil e valor 360305 para a Caixa Econômica Federal. Não considerado quando o campo clearinghouse é informado. | [optional] 
**credit_branch_office** | **Integer** | Código da agência para crédito. | [optional] 
**credit_current_account** | **Integer** | Conta corrente para crédito. Não informado quando se trata de depósito judicial. | [optional] 
**check_digits_credit_current_account** | **String** | Dígito verificador da conta corrente para crédito. Não informado quando se trata de depósito judicial.  | [optional] 
**payment_current_account** | **String** | Conta corrente para pagamento. | [optional] 
**payer_taxpayer_type** | **Integer** | Identifica o tipo de beneficiário, como: 1 - Pessoa física 2 - Pessoa Jurídica. | [optional] 
**payer_taxpayer_registration** | **Integer** | CPF ou CNPJ do pagador. | [optional] 
**beneficiary_name** | **String** | Nome da pessoa ou empresa beneficiária no pagamento  | [optional] 
**paid_value** | **Float** | Valor pago em reais (formato 0.00) | [optional] 
**numeric_bar_code** | **String** | Define o código de barras numérico do pagamento. | [optional] 
**payment_value** | **Float** | Valor do pagamento em reais (formato 0.00) | [optional] 
**request_identification** | **Integer** | Identificação da solicitação de pagamento. É um número único, não sequencial, controlado pelo cliente, cujo valor vai de 1 a 999999. | [optional] 
**debit_branch_office** | **Integer** | Código da agência para débito. | [optional] 
**debit_current_account** | **Integer** | Conta corrente de débito. | [optional] 
**check_digits_debit_current_account** | **String** | Dígito do verificador da conta corrente para débito. | [optional] 
**credit_card_first_four_digits_start** | **Integer** | Quatro primeiros números do cartão de crédito utilizado para pagamento (pagamento devolvido) | [optional] 
**credit_card_last_four_digits_end** | **Integer** | Quatro últimos números do cartão de crédito utilizado para pagamento (pagamento devolvido) | [optional] 
**debit_document** | **Integer** | Documento de débito. | [optional] 
**returned_date** | **Integer** | Data da devolução do pagamento pelo Beneficiário (formato ddmmaaaa) | [optional] 
**returned_value** | **Integer** | Valor da devolução do pagamento pelo Beneficiário (formato 0.00) | [optional] 
**returned_code** | **Integer** | Código que representa o motivo da devolução do pagamento  Domínios(Tipo de pagamento - Código - Mensagem):  Transferência - 01 - CONTA DESTINATÁRIA DO CRÉDITO ENCERRADA; Transferência - 02 - AGÊNCIA OU CONTA DESTINATÁRIA DO CRÉDITO INVÁLIDA; Transferência - 03 - AUSÊNCIA OU DIVERGÊNCIA NA INDICAÇÃO DO CPF/CNPJ ; Transferência - 04 - MENSAGEM INVÁLIDA PARA O TIPO DE TRANSAÇÃO/FINALIDADE; Transferência - 05 - DIVERGÊNCIA NA TITULARIDADE; Transferência - 06 - TRANSFERÊNCIA INSUFICIENTE PARA A FINALIDADE INDICADA; Transferência - 57 - AG/CTA OU CPF/CNPJ DESTINATÁRIO INVÁLIDO OU TRANSF. ENTRE CONTAS CONJUNTAS; Transferência - 58 - TRANSFERÊNCIA DE UMA CONTA CORRENTE PARA UMA CONTA DE POUPANÇA; Transferência - 62 - DIVERGÊNCIA CPF/CNPJ DE UM DOS TITULARES; Transferência - 66 - TRANSFERÊNCIA DE CONTA CONJUNTA PARA CONTA INDIVIDUAL OU VICE VERSA; Transferência - 67 - SEM INDICAÇÃO DO TIPO DE CONTA; Boleto - 01 - DATA DE RECEBIMENTO NÃO NUMÉRICA; Boleto - 02 - AGÊNCIA INVÁLIDA; Boleto - 03 - VALOR RECEBIDO NÃO NUMÉRICO OU IGUAL A ZERO; Boleto - 04 - LOTE NÃO NUMÉRCIO; Boleto - 05 - BANCO INVÁLIDO; Boleto - 06 - CÓDIGO MOEDA NÃO NUMÉRICO; Boleto - 07 - DV CÓDIGO DE BARRAS NÃO NUMÉRICO; Boleto - 08 - FATOR VENCIMENTO NÃO NUMÉRICO; Boleto - 09 - VALOR TÍTULO NÃO NUMÉRICO; Boleto - 10 - CAMPO LIVRE NÃO NUMÉRICO; Boleto - 11 - DV CÓDIGO DE BARRAS NÃO CONFERE; Boleto - 12 - DATA DE RECEBIMENTO INVÁLIDA; Boleto - 13 - VALOR RECEBIMENTO ACIMA DO LIMITE; | [optional] 
**returned_sequence** | **Integer** | Em caso de devolução parcial dos pagamentos, este campo indicará a sequência de devolução | [optional] 


# BancoBrasilPayments::RootTypeForBatchTransfersCancelPaymentsListObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_id** | **String** | Identificação do pagamento. Representa o número do protocolo por meio do qual o beneficiário pode verificar a situação do crédito, se necessário. | [optional] 
**cancel_indicator** | **String** | Indica se o pagamento foi cancelado ou não | [optional] 
**payment_status** | **String** | Descrição da situação do pagamento: Domínios: - Consistente (pagamento recebido pelo banco, cumprem as regras de preenchimento dos campos mas ainda irá para validação e processamento) - Inconsistente (pagamento não aceito pelo banco por dados de entrada inconsistentes - não cumpre as regras de preenchimento dos campos) - Pago (pagamento efetuado ao favorecido) - Pendente (pagamento validado - pendência de autorização do pagamento por parte do pagador) - Aguardando saldo (débito não efetivado e em verificação de saldo até o horário limite da teimosinha). - Agendado (pagamento autorizado, porém aguardando a data de efetivação do pagamento ou horário de processamento) - Rejeitado (dados do pagamento não passaram na validações físicas e/ou lógicas, precisam ser corrigidos e reenviados. Ex: agência e conta não existem, conta não pertence ao CPF informado) - Cancelado (pagamento cancelado pelo pagador antes da data de efetivação do crédito) - Bloqueado (Débito na conta do pagador não efetivado por ocorrência no convênio, inconsistência de data/float ou falta de saldo) - Devolvido (pagamento efetuado e posteriormente devolvido pelo favorecido ou instituição recebedora. O valor é devolvido para a conta corrente onde ocorreu o débito da requisição)\&quot; - Debitado (pagamento debitado na conta do pagador e pendente de crédito ao favorecido) | [optional] 
**processing_message** | **String** | Descrição do estado da requisição de cancelamento da transferência | [optional] 


# BancoBrasilPayments::InlineResponse2003

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Numero identificador do pagamento consultado. | 
**estado_pagamento** | **String** | Descrição da situação do pagamento: Domínios: - Consistente (pagamento recebido pelo banco, cumprem as regras de preenchimento dos campos mas ainda irá para validação e processamento) - Inconsistente (pagamento não aceito pelo banco por dados de entrada inconsistentes - não cumpre as regras de preenchimento dos campos) - Pago (pagamento efetuado ao favorecido) - Pendente (pagamento validado - pendência de autorização do pagamento por parte do pagador) - Aguardando saldo (débito não efetivado e em verificação de saldo até o horário limite da teimosinha). - Agendado (pagamento autorizado, porém aguardando a data de efetivação do pagamento ou horário de processamento) - Rejeitado (dados do pagamento não passaram na validações físicas e/ou lógicas, precisam ser corrigidos e reenviados. Ex: agência e conta não existem, conta não pertence ao CPF informado) - Cancelado (pagamento cancelado pelo pagador antes da data de efetivação do crédito) - Bloqueado (Débito na conta do pagador não efetivado por ocorrência no convênio, inconsistência de data/float ou falta de saldo) - Devolvido (pagamento efetuado e posteriormente devolvido pelo favorecido ou instituição recebedora. O valor é devolvido para a conta corrente onde ocorreu o débito da requisição)\&quot; - Debitado (pagamento debitado na conta do pagador e pendente de crédito ao favorecido) | 
**tipo_pagamento** | **Integer** | Código do tipo de pagamento efetuado: DOMÍNIOS: 126&#x3D;Pagamento a Fornecedores;  127&#x3D;Pagamento de Salários;  128&#x3D;Pagamentos Diversos | 
**agencia_debito** | **Integer** | Número da agência da Conta Corrente onde foi efetuado o débito para efetivação do pagamento consultado. | 
**conta_debito** | **Integer** | Número da Conta Corrente onde foi efetuado o débito para efetivação do pagamento consultado. | 
**digito_conta_debito** | **String** | Digito verificador da Conta corrente onde foi efetuado o débito para efetivação do pagamento consultado. | 
**numero_cartao_inicio** | **Integer** | Primeiros 4 numeros do cartao de credito do pagador, caso o debito tenha sido feito nele. | 
**numero_cartao_fim** | **Integer** | Ultimos 4 numeros do cartao de credito do pagador, caso o debito tenha sido feito nele. | 
**requisicao_pagamento** | **Integer** | Numero sequencial da requisição que solicitou o pagamento do lançamento consultado. Nº único  controlada pelo cliente conveniado. | 
**arquivo_pagamento** | **String** | Numero do arquivo que o cliente envia quando utilizado CNAB240. | 
**data_pagamento** | **Integer** | Data efetiva do pagamento (formato ddmmaaaa) | 
**valor_pagamento** | **Integer** | Valor total do pagamento (formato 0.00) | 
**numero_documento_debito** | **Integer** | Numero do documento de debito exibido no extrato do pagador. | 
**codigo_transmissao** | **Integer** | Código da Forma de transmissão de envio do lançamento consultado. DOMÍNIOS: 1 - API 2 - Arquivo CNAB 3 - Pagamento Online via Gerenciador Financeiro 4 - Sistemas Internos 99 - Outros | 
**descricao_pagamento** | **String** | Campo livre informado pelo pagador quando do envio do lançamento consultado – sem tratamento pelo Banco. | 
**autenticacao_pagamento** | **String** | Código de autenticação do pagamento. | 
**quantidade_ocorrencia_devolucao** | **Integer** | Quantidade de ocorrências de devoluções. | 
**ocorrencia_boleto** | **Integer** | \&quot;Quando valor &#x3D; 1 indica que o identificador consultado é de boleto.  Quando valor &#x3D; 0 indica que o identificador consultado NÃO é de boleto.  Para consulta ao detalhamento do identificador informado utilize o recurso de detalhamento do tipo de pagamento a ser consultado.\&quot;  | [optional] 
**lista_devolucao** | [**Array&lt;InlineResponse2003ListaDevolucao&gt;**](InlineResponse2003ListaDevolucao.md) | Lista de devoluções. | [optional] 
**lista_boleto** | [**Array&lt;InlineResponse2003ListaBoleto&gt;**](InlineResponse2003ListaBoleto.md) | Lista de boletos. | [optional] 


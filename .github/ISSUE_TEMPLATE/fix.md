---
name: Fix
about: São atividades que visam resolver um incidente ou problema reportado pelo canal de requisições.
title: "[FIX] Título da Correção"
labels: fix
---

# 📝 **Contexto**  
_Explique o cenário que levou à identificação do problema. Detalhe os impactos e a importância da correção._  

**Exemplo:**  
O sistema de notificações falhou para alguns usuários, resultando na perda de alertas críticos. Esse problema afeta diretamente a experiência do usuário e pode comprometer ações importantes.  

---

# 🛑 **Erro Identificado**  
_Descreva o erro encontrado, incluindo mensagens de erro, comportamentos inesperados e possíveis impactos._  

**Exemplo:**  
Os alertas de push não estão sendo entregues para usuários no Android após a última atualização do aplicativo.  

---

# 🔄 **Passos para Reproduzir**  
_Lista de passos para replicar o erro e facilitar a investigação._  

1. Abrir o aplicativo no Android.  
2. Executar uma ação que deveria gerar uma notificação.  
3. Verificar se a notificação foi recebida.  

---

# 📸 **Evidências**  
_Anexe prints, vídeos ou logs que comprovem o erro. Sempre que possível, inclua data e hora para referência._  

- [📷 Screenshot do erro](#)  
- [📹 Vídeo demonstrativo](#)  
- [📜 Log do servidor](#)  

---

# 🤔 **Hipóteses**  
_Lista de possíveis causas para o problema, que devem ser validadas ou descartadas._  

- 📌 Erro na configuração do serviço de notificações.  
- 📌 Problema na permissão do app para notificações no Android.  
- 📌 Falha na comunicação com o Firebase Cloud Messaging (FCM).  

---

# 🔧 **O que deve ser feito?**  
_Lista de ações necessárias para corrigir o problema._  

- 🛠️ Revisar as configurações do FCM e logs de envio.  
- 🛠️ Testar o envio de notificações em dispositivos diferentes.  
- 🛠️ Ajustar a documentação para evitar o erro no futuro.  

---

# ✅ **Como Testar?**  
_Lista de passos para validar a correção do problema._  

1. Executar os passos de reprodução após a correção.  
2. Verificar se a notificação é entregue corretamente.  
3. Testar em múltiplos dispositivos e sistemas operacionais.  

---

# 🎯 **Definição de Pronto**  
_Critérios que devem ser atendidos para considerar o erro resolvido._  

- ✅ Notificações funcionando corretamente para todos os usuários.  
- ✅ Logs indicando sucesso no envio das mensagens.  
- ✅ Nenhum erro novo introduzido com a correção.  

---

# 📚 **Materiais Complementares**  
_Adicione links úteis, documentos técnicos ou cards relacionados._  

- [🔗 Documento de integração com Firebase](#)  
- [🔗 Registro de logs](#)  

---

# ❓ **Perguntas e Respostas**  
_Questões ainda não esclarecidas para os desenvolvedores que atuarão na tarefa._  

- ❓ O problema afeta apenas Android ou também iOS?  
- ❓ O erro começou após uma atualização específica?  
- ❓ Existe algum log de erro no backend indicando falha no envio?  
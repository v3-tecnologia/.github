---
name: Spike
about: São atividades específicas para investigações.
title: "[SPIKE] Título da Investigação"
labels: spike
---

# 📝 **Contexto**  
_Explique o cenário que levou à necessidade da investigação. Inclua informações sobre impactos e relevância._  

**Exemplo:**  
Usuários relataram intermitência no carregamento de dados no painel de métricas. A investigação visa entender a causa do problema e propor soluções.  

---

# 📢 **Origem da Investigação**  
_Informe qual departamento ou pessoa reportou o problema._  

**Exemplo:**  
🔹 Time de Suporte relatou múltiplos chamados sobre o erro.  
🔹 Relatório de monitoramento identificou aumento nas falhas de requisição.  

---

# 🔍 **O que deve ser investigado?**  
_Detalhe o que precisa ser analisado, incluindo áreas afetadas e suspeitas iniciais._  

**Exemplo:**  
Analisar a API de métricas para identificar possíveis falhas na consulta ao banco de dados e verificar logs de erro no serviço responsável pelo carregamento dos gráficos.  

---

# 🤔 **Hipóteses**  
_Lista de possíveis causas que precisam ser validadas ou descartadas._  

- 📌 Latência alta na resposta do banco de dados.  
- 📌 Configuração incorreta de cache.  
- 📌 Erro de integração entre o backend e o front.  

---

# 📄 **Entregável**  
_Descreva o que deve ser entregue ao final da investigação._  

**Exemplo:**  
- 📜 Relatório técnico detalhando as descobertas.  
- ✅ Confirmação de quais hipóteses foram validadas ou descartadas.  
- 🔍 Sugestões de próximas ações caso o problema seja confirmado.  

---

# 🛠 **Informações Técnicas**  
_Detalhe informações úteis para a investigação, como serviços, módulos e arquivos envolvidos._  

**Exemplo:**  
- Aplicação: 📊 Painel de Métricas  
- Módulo: 📦 API de Estatísticas  
- Arquivo: `metrics_service.py`  

---

# 📚 **Materiais Complementares**  
_Adicione links úteis, documentos técnicos ou cards relacionados._  

- [🔗 Logs de erro da API](#)  
- [🔗 Chamados do suporte](#)  
- [🔗 Documentação da API](#)  

---

# ❓ **Perguntas e Respostas**  
_Questões que ainda não estão claras para a equipe e precisam de resposta antes do desenvolvimento._  

- ❓ O problema ocorre em todas as requisições ou apenas em algumas?  
- ❓ Há um padrão nos horários em que ocorre a falha?  
- ❓ Alguma atualização recente pode ter causado essa intermitência?  
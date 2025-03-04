#!/bin/bash

# Carrega variáveis do arquivo .env
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
else
  echo "Arquivo .env não encontrado!"
  exit 1
fi

# Função para remover todas as labels existentes
remove_all_labels() {
  echo "🔄 Removendo labels existentes..."

  # Pega todas as labels do repositório
  LABELS_TO_DELETE=$(curl -s -H "Authorization: token $TOKEN" \
    -H "Accept: application/vnd.github.v3+json" \
    "https://api.github.com/repos/$OWNER/$REPO/labels" | jq -r '.[].name')

  for label in $LABELS_TO_DELETE; do
    curl -X DELETE "https://api.github.com/repos/$OWNER/$REPO/labels/$label" \
      -H "Authorization: token $TOKEN" \
      -H "Accept: application/vnd.github.v3+json"
    echo "❌ Label removida: $label"
  done
}

# Array com os novos labels
LABELS=(
  "epic 881235 🚀 Iniciativa estratégica de grande impacto"
  "user-story 1d76db 📖 Nova funcionalidade ou melhoria no produto"
  "tech 5319e7 🛠️ Execução de uma tarefa técnica"
  "spike ffcc00 🔍 Investigação, pesquisa ou prova de conceito"
  "fix d73a4a 🐛 Correção de bug ou problema reportado"
  "sprint 0e8a16 🏃‍♂️ Itens priorizados para a sprint atual"
)

# LABELS=(
#   "teste ffcc00 🔬 Validação e testes finais antes da entrega"
#   "pedido 0075ca 🛒 Pedido formalizado e aguardando processamento"
#   "lead 9b59b6 🎯 Novo lead capturado, aguardando primeiro contato"
#   "follow-up f39c12 📞 Acompanhamento necessário para fechar negócio"
#   "proposta 27ae60 📄 Proposta enviada ao cliente"
#   "fechamento 2ecc71 🤝 Negociação avançada, perto de fechar contrato"
#   "financeiro d73a4a 💰 Processos administrativos e financeiros"
#   "logistica f1c40f 🚛 Envio de materiais ou equipamentos"
#   "instalacao 3498db 🛠️ Agendamento e execução da instalação"
#   "contrato 8e44ad ✍️ Assinatura de contrato e formalização"
#   "suporte 16a085 🆘 Atendimento pós-venda e suporte técnico"
# )

# Função para criar novas labels
create_labels() {
  echo "🚀 Criando novas labels..."

  for label in "${LABELS[@]}"; do
    read -r name color description <<< "$label"

    curl -X POST "https://api.github.com/repos/$OWNER/$REPO/labels" \
         -H "Authorization: token $TOKEN" \
         -H "Accept: application/vnd.github.v3+json" \
         -d "{\"name\":\"$name\",\"color\":\"$color\",\"description\":\"$description\"}"

    echo "✅ Label criada: $name"
  done
}

# Executa as funções
remove_all_labels
create_labels

echo "🎉 Labels atualizadas com sucesso!"
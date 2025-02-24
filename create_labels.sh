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
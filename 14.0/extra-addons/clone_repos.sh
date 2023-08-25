#!/bin/bash

# Define o caminho para o arquivo oca-dependencies.txt
dependencies_file="./l10n-brazil/oca_dependencies.txt"

# Loop through the dependencies file
while read repo; do
  # Clona o repositório usando o comando git clone
  git clone -b 14.0 --single-branch --depth=1 git@github.com:/OCA/$repo.git ./$repo
  sudo rm -rf ./$repo/.git
  sudo rm -rf ./$repo/.github
  sudo rm -rf ./$repo/.copier-answers.yml
  sudo rm -rf ./$repo/.pre-commit-config.yaml
  sudo rm -rf ./$repo/LICENSE

  # Verifica se existe um arquivo "requirements.txt" no repositório
  if [ -f ./$repo/requirements.txt ]; then
    # Salva o conteúdo do arquivo "requirements.txt" em "pip-requirements.txt"
    cat ./$repo/requirements.txt >> ../pip-requirements.txt
  fi
done < "$dependencies_file"
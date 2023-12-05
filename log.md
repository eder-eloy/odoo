# Módulo de Construção:

## Regras de Negócio

1. Toda construção é um projeto próprio
2. A construção é dividida em fases
3. Pode ser dividida em subtarefas
    - subsolo
    - alicerce
    - parte estrutural
    - levantamento das paredes (baldrames)
    - conferência
    - Quase paralelos:
        - acabamento
            - revestimento
            - pintura
            - portas / janelas
            - iluminação
            - hidráulica
            - etc


## Arquitetura

1. incluir no construction.site uma serialização do nome do projeto, concatenando com o nome editado, para fins de auditoria e historicidade.

3. herança
    3.1 parent_id vs. child_ids
        - toda tarefa em project.project deve ser capaz de:
            - ter uma tarefa mae, e
            - ter várias tarefas filhas
        
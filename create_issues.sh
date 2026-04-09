#!/bin/bash

# Script para criar issues iniciais do projeto Plantiv via GitHub CLI

gh issue create --title "Setup inicial do frontend" \
--body "Configurar ambiente Flutter para desenvolvimento multiplataforma (Android, iOS e Web).\n\n- [ ] Criar projeto Flutter com suporte a Web\n- [ ] Adicionar pasta \`lib/ui\` para organização de telas\n- [ ] Criar tela de boas-vindas mockada\n- [ ] Adicionar suporte a rotas (usando \`go_router\` ou \`Navigator 2.0\`)\n- [ ] Commitar estrutura base" \
--label "type:frontend,type:infra,status:todo"

gh issue create --title "Setup inicial do backend" \
--body "Criar ambiente FastAPI com estrutura modular e integração futura com IA.\n\n- [ ] Criar ambiente virtual (Poetry ou venv)\n- [ ] Estruturar pastas: \`app/api\`, \`app/core\`, \`app/models\`, \`app/services\`\n- [ ] Criar rota \`/ping\` de teste\n- [ ] Testar servidor localmente\n- [ ] Commitar setup base" \
--label "type:backend,type:infra,status:todo"

gh issue create --title "Integração entre Flutter e API FastAPI" \
--body "Criar tela de autenticação simples no Flutter e validar conexão com API.\n\n- [ ] Criar tela de login no Flutter\n- [ ] Criar rota \`/auth/mock\` no FastAPI que retorna JSON fixo\n- [ ] Fazer requisição HTTP via Flutter (usando \`http\` ou \`dio\`)\n- [ ] Exibir resposta na interface\n- [ ] Validar comunicação e commitar" \
--label "type:frontend,type:backend,type:integration,status:todo"

gh issue create --title "Implementar banco de dados local (SQLite)" \
--body "Criar estrutura de banco local para funcionamento offline no app Flutter.\n\n- [ ] Adicionar dependência \`sqflite\` no Flutter\n- [ ] Criar modelo de dados para \`Talhão\`\n- [ ] Criar funções básicas de CRUD local\n- [ ] Testar persistência no dispositivo" \
--label "type:frontend,type:data,type:offline,status:todo"

gh issue create --title "Preparar sincronização com PostgreSQL" \
--body "Preparar modelo inicial de sincronização backend entre SQLite e PostgreSQL.\n\n- [ ] Criar banco PostgreSQL (local ou Supabase)\n- [ ] Criar script de sincronização FastAPI → PostgreSQL\n- [ ] Criar endpoint \`/sync\` no backend\n- [ ] Testar envio e persistência dos dados recebidos" \
--label "type:backend,type:data,type:sync,status:todo"

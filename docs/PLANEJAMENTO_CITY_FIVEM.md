# Planejamento de Construcao - 011RP (Tema Sao Paulo)

## Decisao tecnica
- Base escolhida: `FivemCity` (estrutura final na raiz).
- Framework: `vRP`.
- Motivo: ja vem com grande parte do escopo funcional (faccoes, casas, garagens, celular, admin).

## Objetivo comercial
Entregar uma cidade funcional e profissional para o cliente subir packs/customizacoes depois.

## Fase 1 - Fundacao e seguranca (1-2 dias)
1. Isolar segredos em arquivo privado.
2. Centralizar branding em arquivo unico.
3. Limpar risco de importar base com dados de terceiros.
4. Validar boot local sem erros criticos.

Entregaveis:
- `config.branding.cfg`
- `config.private.cfg`
- checklist de setup local atualizado

## Fase 2 - Homologacao de features (2-3 dias)
1. Validar garagens/blips/casas no jogo.
2. Validar painel de faccoes (`/org`, `/orgadm`).
3. Validar smartphone + tabelas SQL.
4. Validar admin panel in-game (`/admin`) + comandos operacionais.
5. Validar VIP manual por grupos.

Entregavel:
- relatorio de "OK / AJUSTAR" por feature.

## Fase 3 - Ajuste para 011RP (3-5 dias)
1. Rebranding completo (nome, textos, logos, links).
2. Normalizar cargos/faccoes para tema Sao Paulo.
3. Revisar economy inicial (salarios, precos, progressao).
4. Revisar spawn/new player para onboarding limpo.

Entregavel:
- build `011RP_DEV` pronta para teste fechado.

## Fase 4 - Lacunas do escopo comercial (3-7 dias)
1. VIP automatizado (painel + webhook + pagamento).
2. Tablet dedicado (se cliente quiser separado do painel fac).
3. Melhorias UX/UI (hud/loading/menu/apresentacao).

Entregavel:
- versao candidata para entrega ao cliente.

## Fase 5 - Entrega operacional (1-2 dias)
1. Documentacao de operacao para o cliente.
2. Guia de alterar nome da cidade em 1 arquivo.
3. Guia de backup/restore de banco.
4. Pacote final + checklist de aceite.

## Backlog tecnico recomendado
1. Anticheat basico server-side (validacao de eventos criticos).
2. Otimizacao de scripts obfuscados/pesados.
3. Padronizacao de logs Discord por categoria.
4. Pipeline de atualizacao (branch dev/hml/prod).

## Regras para evitar retrabalho
1. Nao reintroduzir stack antiga QBCore nesta estrutura.
2. Toda mudanca de nome/tema deve sair de `config.branding.cfg`.
3. Nao commitar `config.private.cfg`.
4. Nao importar dump legado de jogadores em ambiente limpo de entrega.

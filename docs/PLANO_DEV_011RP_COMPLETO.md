# 011RP - Plano Completo de Implementacao (Dev)

## Objetivo
Transformar a base atual em produto de entrega comercial com qualidade de operacao, performance e monetizacao.

## Premissas
- Framework fixado: `vRP`.
- Base oficial de trabalho: raiz `FivemCity`.
- Ambiente de homologacao local: Windows + XAMPP + FiveM.

## Fase 0 - Baseline Tecnica (imediato)
Status: **Concluida em grande parte**

Feito:
- correcao de erros criticos de startup;
- conexao do banco estabilizada (`creawork` + imports);
- limpeza de dependencias quebradas em manifests;
- desativacao de recurso sem entitlement (`mapstwo`).

Pendencias pequenas:
- remover pasta `server-data` vazia que esta com lock de processo no Windows.

## Fase 1 - Produto apresentavel ao cliente (prioridade maxima)

## 1.1 Rebranding total para 011RP
Ajustar textos/logo/links antigos nos recursos principais.

Arquivos-alvo iniciais:
- `config.branding.cfg`
- `resources/[scripts]/five_orgs_v2/config.lua`
- `resources/vrp/config/Discord.lua`
- UIs com referencia antiga (quando houver).

Criterio de pronto:
- sem aparicao de branding antigo em HUD/menu/painel/log principal.

## 1.2 Matriz de aceite funcional
Validar em runtime cada feature do escopo comercial:
- faccoes
- blips
- casas
- vip
- celular
- painel admin

Criterio de pronto:
- checklist com status `OK` ou `AJUSTAR`, com evidencias (print/video curto).

## 1.3 Congelar configuracao de entrega
- revisar `config.cfg` e `config.private.cfg.example`.
- documentar parametros obrigatorios para subir em novo host.

Criterio de pronto:
- deploy reproduzivel em maquina limpa.

## Fase 2 - Qualidade de gameplay (prioridade alta)

## 2.1 Balanceamento economico
- calibrar salarios (jobs, faccoes, VIP).
- calibrar custos de propriedade, veiculos, taxas, rewards.

Criterio de pronto:
- progressao sem inflacao precoce e sem grind inviavel.

## 2.2 Fluxo de onboarding
- revisar criacao de personagem e spawn inicial.
- tutorial minimo no primeiro login (inventario, celular, garagem, org).

Criterio de pronto:
- novo player consegue jogar sem ajuda staff em 5-10 min.

## 2.3 Revisao de permissoes
- auditar grupos `Admin`, `Premium`, orgs e jobs.
- validar comandos sensiveis e acessos indevidos.

Criterio de pronto:
- matriz de permissao por grupo com aprovacao interna.

## Fase 3 - Monetizacao VIP (prioridade alta/comercial)

## 3.1 VIP manual robusto
- padronizar concessao/revogacao e auditoria via comando admin.
- padronizar perks por tier em documento tecnico.

## 3.2 VIP automatizado
Implementar uma das abordagens:
- Tebex com webhook.
- gateway custom + endpoint de ativacao.

Requisitos minimos:
- ativacao automatica por compra;
- expiracao/renovacao;
- logs (quem comprou, quando ativou, quando expira);
- fallback manual de contingencia.

Criterio de pronto:
- ciclo compra -> ativacao -> expiracao testado ponta a ponta.

## Fase 4 - Performance e estabilidade (prioridade alta)

## 4.1 Otimizacao de assets
Problema atual:
- muitos `warnings` de assets acima do tamanho recomendado (principalmente frota).

Plano:
- inventariar top 30 maiores `.ytd/.yft`.
- reduzir texturas/lods dos piores casos.
- dividir packs por contexto (civis vs faccao) se necessario.

Criterio de pronto:
- queda de warnings e melhora de streaming/fps em teste real.

## 4.2 Profiling de scripts
- medir loops e consumo por resource (client/server).
- identificar hotspots (`Wait(0)` excessivo, eventos spam).

Criterio de pronto:
- relatorio de consumo com actions aplicadas.

## 4.3 Banco de dados
- adicionar backup rotativo.
- criar rotina de limpeza para tabelas de log volumosas.
- revisar indices em tabelas de alto acesso.

Criterio de pronto:
- estabilidade de query e tempo de resposta consistente.

## Fase 5 - Seguranca (prioridade alta)

## 5.1 Hardening de eventos server-side
- validar origem e permissao de eventos sensiveis.
- bloquear abuso de rewards, spawn, inventory, transferencias.

## 5.2 Auditoria
- logs consistentes para admin, economy, vip, faccoes.
- integracao Discord por canal/categoria.

Criterio de pronto:
- trilha de auditoria util para investigacao e suporte.


## Backlog tecnico sugerido (curto prazo)
1
## Fase 6 - Entrega comercial

Entregaveis finais:
- build estavel da 011RP;
- pacote de docs para cliente;
- guia operacional (start, backup, comandos, vip, faccoes);
- checklist de aceite assinado.. Resolver warning de `screenshot` duplicado ([exclusive] vs [system]).
2. Padronizar `fxmanifest` antigos e nomes de includes.
3. Consolidar comandos admin com help interno.
4. Criar ambiente `hml` separado de `prod`.

## Checklist semanal de dev (pratico)
1. Rodar boot e capturar log limpo.
2. Validar banco conectado e migrations.
3. Testar 5 fluxos obrigatorios: spawn, inventario, celular, garagem, org.
4. Revisar regressao de permissao admin/vip.
5. Publicar changelog tecnico.

## Definicao de pronto para entregar ao contratante
- sem erro critico no startup;
- escopo funcional prometido validado;
- docs de operacao prontas;
- VIP comercial (manual + automatico ou roadmap fechado com data);
- desempenho aceitavel em homologacao com players simultaneos.

# 011RP - Descricao Completa do Produto

## 1) Resumo Executivo
A `011RP` e uma cidade FiveM baseada em `vRP`, com stack funcional de RP ja operacional para uso local e preparacao de entrega comercial.

O produto atual ja entrega:
- base jogavel com login e progressao;
- sistema de faccoes com painel de gestao;
- sistema VIP por grupos;
- casas e propriedades;
- garagens e frota civil/faccao/servico;
- celular completo com apps e persistencia SQL;
- painel administrativo in-game e comandos operacionais;
- recursos de trabalho, economy e roleplay de suporte.

## 2) Escopo Tecnico Atual

### Framework e infraestrutura
- Framework principal: `vRP`.
- Banco de dados: `MariaDB/MySQL` via `oxmysql`.
- Voz: `pma-voice`.
- Runtime: FXServer artifacts (incluso no projeto).
- Nome e branding centralizados em:
  - `config.branding.cfg`
  - `config.cfg`

### Estrutura base de recursos
- `resources/[addons]`: mapas, roupas, veiculos e armas custom.
- `resources/[exclusive]`: sistemas principais de gameplay e UI.
- `resources/[scripts]`: logicas centrais de jobs, inventario, faccoes, propriedades.
- `resources/[works]`: rotas e empregos de farm/servico.
- `resources/[system]`: recursos base (voice, loading, sessao, sons).

## 3) Features Entregues (Produto)

## 3.1 Core RP
- Spawn inicial e sobrevivencia (`spawn`, `survival`, `hud`, `player`, `paramedic`).
- Inventario funcional e sistema de itens (`inventory`, `chest`, `shops`, `target`, `taskbar`).
- Sistema de portas/animacoes/interacoes (`doors`, `animacoes`, `notify*`, `dynamic`).

## 3.2 Faccoes e Organizacoes
- Painel de organizacoes (`five_orgs_v2`) com:
  - hierarquia por cargos;
  - convite, promocao, rebaixamento e demissao;
  - banco da organizacao (deposito/saque);
  - alertas/chat interno;
  - metas e ranking;
  - blacklist de faccao com tempo.
- Comandos principais:
  - `/org` (painel org)
  - `/orgadm` (painel admin org)

## 3.3 VIP
- Sistema VIP por grupos no `vRP`:
  - `Bronze`, `Prata`, `Ouro`, `Diamante`, `Patrocinador`.
- Grupo agregador `Premium` para controle logico de perks.
- Beneficios ja distribuidos em scripts da base (salarios/permissoes/regras por grupo).
- Comandos administrativos de suporte VIP:
  - `/vips`
  - `/premiumveh`
  - `/group` e `/ungroup`

## 3.4 Casas e Propriedades
- Sistema `propertys` com compra e interacao completa.
- Base pre-configurada com cerca de **599 propriedades**.
- Funcoes:
  - entrada/saida;
  - bau interno;
  - guarda-roupa;
  - marcacao no mapa;
  - controle por ownership.

## 3.5 Garagens e Veiculos
- Sistema `garages` com cerca de **87 pontos** predefinidos.
- Garagens civis, servico e faccao.
- Frota custom ampla (incluindo `hiden_vehs`, `hiden_veiculos`, `hiden_vtrs`).
- Comandos de suporte:
  - `/car` (spawn admin)
  - `/dv` (delete vehicle)

## 3.6 Celular
- Recurso `smartphone` integrado ao inventario (uso via item `cellphone`).
- Banco dedicado para apps sociais e servicos (tabelas smartphone_*).
- Estrutura de apps identificada no schema:
  - WhatsApp
  - Instagram
  - Twitter
  - Tinder
  - OLX
  - Uber
  - iFood
  - Casino
  - Tor/payments
  - faturas e transacoes

## 3.7 Staff/Admin
- Painel in-game `adminmenu`.
- Comandos administrativos robustos (ban/wl/group/item/money/teleport/revive/spectate etc).
- Alguns comandos importantes:
  - `/admin`, `/wl`, `/unwl`, `/ban`, `/unban`, `/kick`
  - `/group`, `/ungroup`, `/item`, `/money`
  - `/god`, `/goda`, `/tpto`, `/tptome`, `/tpway`
  - `/save`, `/anuncio`, `/services`, `/blips`

## 3.8 Jobs e Economias
- Jobs em `resources/[works]` e scripts de apoio:
  - bus, delivery, farmer, routes, taxi, tractor, trucker.
- Sistemas adicionais:
  - mecanica (`bennys`), hospital, bancos, crafting, radio, corridas, desmontagem.

## 4) Atalhos e Experiencia do Jogador
- Inventario: tecla `~` (`OEM_3`) ou comando `Inventory`.
- Menu dinamico:
  - `F9` menu principal
  - `F10` menu emergencial
  - `INSERT` menu administrativo
- Smartphone:
  - principal por uso do item `cellphone`.

## 5) Banco de Dados e Persistencia
- Banco esperado: `creawork`.
- Schema carregado atualmente:
  - `database/base_schema.sql`
  - `database/smartphone_schema.sql`
- Estado atual validado:
  - conexao do `oxmysql` estabelecida;
  - tabelas base criadas (71 tabelas na validacao atual).

## 6) Regras Operacionais do Produto
- Nao misturar com bases QBCore (este produto e `vRP`).
- Nao commitar segredos em repositorio:
  - usar `config.private.cfg` local.
- Alterar nome da cidade apenas no branding:
  - `config.branding.cfg`.
- Nao importar dump legado de jogadores em ambiente limpo de entrega.

## 7) Limites e Observacoes Atuais
- O produto esta funcional, mas ainda ha warnings de assets muito pesados em carros/armas/roupas.
- Isso impacta streaming/performance e precisa de tratativa de otimizacao para release final.
- `mapstwo` foi desativado por dependencia de entitlement/licenca externa.

## 8) O que o você recebe hoje
- Cidade funcional pronta para operacao local/homologacao.
- Bloco completo de features exigidas na proposta (faccao, casa, blips, vip base, celular, painel).
- Estrutura preparada para customizacao posterior (packs, visual, balanceamento e monetizacao).
- Logo

## 9) Itens que faltam para "produto comercial final" (go-live)
- Automacao de venda VIP (gateway/webhook/painel).
- Otimizacao de assets pesados (principal gargalo tecnico atual).
- Ajuste fino de economia, cargos e onboarding de novo player.
- Hardening de seguranca e trilha de auditoria final.
- Ajustes de layout, cores de branding
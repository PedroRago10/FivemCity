# Validacao de Features - 011RP Base

## Escopo validado para proposta
Cliente: cidade completa com faccoes, blips, casas, VIP e extras.
Tema definido: `011RP` / Sao Paulo.

## Status atual da base

| Feature | Status | Evidencia tecnica | Observacao |
|---|---|---|---|
| Framework | `OK` | `config.cfg` inicia `vrp` | Base e vRP (nao QBCore) |
| Garagens | `OK` | `resources/[exclusive]/garages` | Muitas garagens civis/servico/faccao |
| Blips de servico | `OK` | `resources/[scripts]/blipsystem` | Blips de policia/hospital e servicos |
| Casas | `OK` | `resources/[scripts]/propertys` | Tabela de propriedades grande (602 entradas) |
| Faccoes | `OK` | `resources/[scripts]/five_orgs_v2` | Painel org + permissoes + banco/chest/ranking |
| VIP base | `OK (base)` | `resources/vrp/config/Groups.lua` | Grupos Bronze/Prata/Ouro/Diamante/Patrocinador |
| Celular | `OK` | `resources/[exclusive]/smartphone` + `celular.sql` | Abre via item `cellphone` |
| Painel admin in-game | `OK` | `resources/[exclusive]/adminmenu` | Comando padrao `/admin` |
| Tablet | `PARCIAL` | `five_orgs_v2` usa animacao/tablet | Nao existe "tablet universal" separado |
| Venda VIP automatica | `NAO` | sem gateway integrado | Exige integrar Tebex/webhook/pagamento |

## Comandos e testes rapidos (in-game)

1. Inventario:
- tecla padrao: `~` (OEM_3) ou comando `Inventory`.

2. Celular:
- use o item `cellphone` no inventario.
- atalho do smartphone existe no recurso (`k`), mas o fluxo principal e por item.

3. Faccoes:
- comando painel fac: `/org`
- painel admin de fac: `/orgadm`

4. Admin:
- abrir painel admin: `/admin`
- comandos uteis: `/group`, `/ungroup`, `/wl`, `/unwl`, `/item`, `/money`, `/blips`.

5. Garagens:
- testar retirada e guarda em ponto de garagem civil e de servico.
- para debug admin: `/car nome_do_veiculo` e `/dv`.

6. Casas:
- ir em propriedade, testar entrada/saida, bau, roupas.
- testar marcar/desmarcar propriedades no mapa pelo menu dinamico.

7. VIP:
- aplicar grupo VIP por admin com `/group [id] Bronze 1` (ou Prata/Ouro/Diamante/Patrocinador).
- validar beneficios (salario/permissoes/veiculos VIP conforme scripts).

## Riscos identificados antes de producao

1. Evitar importar dumps antigos de jogadores em ambiente limpo.
2. Existiam chaves sensiveis no `config.cfg` original.
3. Branding antigo "Hiden" espalhado em configs e assets.

## Criterio de aceite desta etapa
- Servidor sobe sem erro critico.
- Jogador conecta e joga fluxo basico.
- Faccoes, casas, garagens, celular e admin testados localmente.
- VIP manual funcionando.

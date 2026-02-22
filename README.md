# 011RP - FiveM (vRP)

Estrutura final do projeto da cidade `011RP` com tema Sao Paulo.

## Estrutura principal
- `artifacts/` - binarios do FXServer.
- `resources/` - todos os scripts/resources da cidade.
- `config.cfg` - configuracao principal do servidor.
- `config.branding.cfg` - nome/branding centralizado da cidade.
- `config.private.cfg` - segredos locais (ignorado no git).
- `database/` - SQL de estrutura inicial.
- `docs/` - guias operacionais.
- `start.bat` - inicializacao local.

## Start local (Windows)
```bat
cd C:\Users\Pedro\Documents\FivemCity
start.bat
```

Conectar no FiveM (F8):
```text
connect 127.0.0.1:30120
```

## Branding da cidade
Altere apenas:
- `config.branding.cfg`

## Segredos
Preencha localmente:
- `config.private.cfg`

Modelo:
- `config.private.cfg.example`

## Documentacao principal
- Produto completo para cliente: `docs/PRODUTO_011RP_COMPLETO.md`
- Plano tecnico de implementacao (dev): `docs/PLANO_DEV_011RP_COMPLETO.md`

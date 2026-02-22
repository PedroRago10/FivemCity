# Setup Local - 011RP (vRP)

## Objetivo
Subir a base final da `011RP` no seu Windows e conectar pelo FiveM local.

## 1) Pre-requisitos
- GTA V instalado e abrindo normal.
- FiveM client instalado.
- XAMPP/MySQL rodando (porta 3306).
- FXServer artifacts baixado (ja existe em `artifacts`).

## 2) Banco de dados local
1. Crie o banco `creawork` no MySQL (collation `utf8mb4`).
2. Importe:
   - `database/base_schema.sql`
   - `database/smartphone_schema.sql`

## 3) Configuracao local (segredos + branding)
Arquivos usados:
- `config.cfg`: config principal.
- `config.branding.cfg`: nome/identidade da cidade.
- `config.private.cfg`: licenca e chaves (ignorado no git).

Checklist:
1. Confirme `sv_licenseKey` valido em `config.private.cfg`.
2. Confirme `steam_webApiKey` em `config.private.cfg`.
3. Confirme `mysql_connection_string` apontando para seu MySQL local.

## 4) Subir o servidor
No CMD do Windows:

```bat
cd C:\Users\Pedro\Documents\FivemCity
start.bat
```

## 5) Conectar no FiveM local
No F8 do FiveM:

```text
connect 127.0.0.1:30120
```

## 6) Erros comuns
- `Unable to establish a connection to the database`: usuario/senha/database errados no `config.private.cfg`.
- `Server license key authentication failed`: `sv_licenseKey` invalida ou expirada.
- Tela travada em NUI: erro de script bloqueando focus; ver console do jogo e servidor.
- `No such export` entre recursos: versoes misturadas de framework (QBCore x vRP).

## 7) Regra operacional
Durante o desenvolvimento da `011RP`, trabalhe apenas nesta raiz `FivemCity`.

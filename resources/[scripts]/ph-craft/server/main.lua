local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("ph-craft",src)
vCLIENT = Tunnel.getInterface("ph-craft")

local function toAmount(v)
    if type(v) == "number" then return v end
    if type(v) == "string" then return tonumber(v) or 0 end
    if type(v) == "table" then return tonumber(v[1]) or 0 end
    return 0
end

function ExecuteSql(query)
    local IsBusy = true
    local result = nil
    if Config.Mysql == "oxmysql" then
        if MySQL == nil then
            exports.oxmysql:execute(query, function(data)
                result = data
                IsBusy = false
            end)
        else
            MySQL.query(query, {}, function(data)
                result = data
                IsBusy = false
            end)
        end
    elseif Config.Mysql == "mysql-async" then
        MySQL.Async.fetchAll(query, {}, function(data)
            result = data
            IsBusy = false
        end)
    end
    while IsBusy do
        Citizen.Wait(0)
    end
    return result
end

function SendWebhookMessage(webhook, message)
    if webhook ~= nil and webhook ~= "" then
        PerformHttpRequest(webhook, function(err, text, headers)
        end, 'POST', json.encode({
            content = message
        }), {
            ['Content-Type'] = 'application/json'
        })
    end
end

function src.Permissao(item,id)
	local source = source
    for k, v in pairs(item) do
        local user_id = getPlayer(source)
        if Config.Craft[id] ~= nil then
            if Permissions(user_id, Config.Craft[id].perm) and v == Config.Craft[id].category then
                return true       
            end
        end
	end
end

function src.acessoperm(id)
    if Config.Craft[id] ~= nil then
        local source = source
        local user_id = getPlayer(source)
        if Permissions(user_id, Config.Craft[id].perm) then
            return true
        end
    end
end

function src.sendItem(d,e,c,b,a,f,g)
        local src = source
        local xPlayer = getPlayer(source)
        local identifier = xPlayer
        local time = os.time()
        local deneme = json.decode(d)
        local success = true
        local itemtest

        for k, v in pairs(deneme) do
            local have = toAmount(Itemamount(xPlayer, v.name))
            local need = toAmount(v.amount)
            if have >= need and need > 0 then
                Removeitem(xPlayer, v.name, need)
            else
                success = false
                TriggerClientEvent("codem-cyberhud:Notify123", src, Config.Notifications["error"]["message"], Config.Notifications["error"]["type"], Config.Notifications["error"]["time"])
                return false
            end
        end

        if success then
            TriggerClientEvent("codem-cyberhud:Notify123", src, Config.Notifications["success"]["message"],
            Config.Notifications["success"]["type"], Config.Notifications["success"]["time"])
            local data = ExecuteSql("INSERT INTO `ph_crafts` (`identifier`,`weaponname`,`weapontime`,`weaponlabel`,`itemTime`,`images`,`quantidade`) VALUES ('" ..xPlayer .. "','" .. a .. "','" .. b .. "','" .. c .. "','" .. time .. "','" .. e .. "','" .. g .. "')")
            local item = ExecuteSql("SELECT * FROM ph_craft WHERE user_id = '" .. xPlayer .. "'")
        
            if item[1] then
                ExecuteSql("UPDATE  `ph_craft` SET `craftxp` = '" .. item[1].craftxp + f .. "' WHERE `user_id` = '" ..identifier .. "'")
            end
        end
    return a, b, c, d, e, f, g
end

RegisterServerEvent('ph-craft:addItem')
AddEventHandler('ph-craft:addItem', function(a, b)
    src = source
    local xPlayer = getPlayer(src)
    if not b then return end
    local qtds = ExecuteSql("SELECT * FROM ph_crafts WHERE id = '" .. b .. "'")

    SendWebhookMessage(Config.webhook,"```prolog\n[ID]: "..xPlayer.." \n[COLETOU]: "..a.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
    if qtds and qtds[1] and qtds[1].quantidade then
        Giveitem(xPlayer, a, parseInt(qtds[1].quantidade))
        ExecuteSql("DELETE FROM `ph_crafts` WHERE `id` = '" .. b .. "'")
        vCLIENT.getDats(src)
    end
end)

function src.getData()
    local source = source
    local xPlayer = getPlayer(source)
    local item = ExecuteSql("SELECT * FROM ph_crafts WHERE identifier = '" .. xPlayer .. "'")
    return item
end

function src.getxP()
    local source = source
    local xPlayer = getPlayer(source)
    local time = os.time()
    local item = ExecuteSql("SELECT * FROM ph_craft WHERE user_id = '" .. xPlayer .. "'")
    if item[1] then
        xp = item[1].craftxp 
        time = time
    end
    return xp,time
end

function src.getname()
    local source = source
    local xPlayer = getPlayer(source)

    if Config.framework == "extended" then
        local identity = getIdentity(xPlayer)
        if identity and identity.Name and identity.Lastname then
            local nams = identity.Name.." "..identity.Lastname
            return nams
        else
            return vRP.FullName(xPlayer)
        end
    else
        local identity = getIdentity(xPlayer)
        if identity and identity.name then
            local last = identity.name2 or identity.firstname or ""
            local nams = last ~= "" and (identity.name.." "..last) or identity.name
            return nams
        else
            return vRP.FullName(xPlayer)
        end
    end
end

function src.getmoney()
    local source = source
    local xPlayer = getPlayer(source)
    local moneys = getMoney(xPlayer)
    local money = moneys
    return money
end

function src.checkitens(v)
    local src = source
    local user_id = getPlayer(src)
    local inv = getInventory(user_id)

    for g,s in pairs(inv) do
        name = s.item
        amount = s.amount

        for d,a in pairs(Config.CraftItem) do
            if a.itemName == v then
                local ok = true
                for k,q in pairs(a.required) do
                    local have = toAmount(Itemamount(user_id, q.name))
                    local need = toAmount(q.amount)
                    if not (have >= need and need > 0) then
                        ok = false
                        break
                    end
                end
                return ok
            end
        end
    end
end

function src.VeryPlayerDB()
    local source = source
    local Player = getPlayer(source)
    local existingData = ExecuteSql("SELECT * FROM ph_craft WHERE user_id = '" .. Player .. "'")
        
    if existingData[1] then
        return true
    else
        ExecuteSql("INSERT INTO `ph_craft` (`user_id`,`craftxp`) VALUES ('" ..Player .. "','" .. 0 .. "')")
        return false
    end
end

-- Script de inicialização no FiveM
AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        print("FiveCommunity O script foi iniciado com sucesso!")
    end
end)

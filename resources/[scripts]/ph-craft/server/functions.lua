
Config = Config or { framework = "network" }

function getPlayer(source)
    if Config.framework == "vrpex" or Config.framework == "creativev5" then
        return vRP.getUserId(source)
    elseif Config.framework == "creativev6" or Config.framework == "network" or Config.framework == "extended" then
        return vRP.Passport(source)
    end
end

function Permissions(src7, info12) -- OK
    if Config.framework == "vrpex" or Config.framework == "creativev5" then
        return vRP.hasPermission(src7,info12)
    elseif Config.framework == "creativev6" or Config.framework == "extended" then
        return vRP.HasPermission(src7, info12)
    elseif Config.framework == "network" then
        return vRP.HasGroup(src7,info12)
    end
end

function Itemamount(source, item)
    if Config.framework == "vrpex" then
        local player = getPlayer(source)
        return vRP.getInventoryItemAmount(player, item)
    elseif Config.framework == "extended" then
        local player = getPlayer(source)
        return vRP.ItemAmount(player, item)
    elseif Config.framework == "creativev5" then
        local player = getPlayer(source)
        return vRP.itemAmount(player, item)
    elseif Config.framework == "creativev6" then
        local player = getPlayer(source)
        return vRP.ItemAmount(player, item)
    elseif Config.framework == "network" then
        local player = getPlayer(source)
        return vRP.ItemAmount(player, item)
    end
end

function Removeitem(source, item, count)
    if Config.framework == "vrpex" or Config.framework == "creativev5" then
        local player = getPlayer(source)
        return vRP.tryGetInventoryItem(player, item, count)
    elseif Config.framework == "creativev6" then
        local player = getPlayer(source)
        return vRP.TakeItem(player, item, count)
    elseif Config.framework == "network" then
        local player = getPlayer(source)
        return vRP.RemoveItem(player, item, count)
    elseif Config.framework == "extended" then
        local player = getPlayer(source)
        return vRP.TakeItem(player, item, count)
    end
end

function Giveitem(src5, info9, info10)
    if Config.framework == "vrpex" or Config.framework == "creativev5" then
        return vRP.giveInventoryItem(src5, info9, info10)
    elseif Config.framework == "creativev6" or Config.framework == "extended" then
        return vRP.GiveItem(src5, info9, info10)
    elseif Config.framework == "network" then
        return vRP.GenerateItem(src5, info9, info10)
    end
end

function getIdentity(source)
    if Config.framework == "vrpex" then
        return vRP.getUserIdentity(source)
    elseif Config.framework == "creativev5" then
        return vRP.userIdentity(source)
    elseif Config.framework == "creativev6" or Config.framework == "network" or Config.framework == "extended" then
        return vRP.Identity(source)
    end
end

function getMoney(source)
    if Config.framework == "vrpex" then
        local player = getPlayer(source)
        return vRP.getMoney(player)
    elseif Config.framework == "creativev5" then
        local player = getPlayer(source)
        return vRP.getBank(player)
    elseif Config.framework == "creativev6" or Config.framework == "network" or Config.framework == "extended" then
        local player = getPlayer(source)
        return vRP.GetBank(player)
    end
end

function getInventory(source)
    if Config.framework == "vrpex" then
        local player = getPlayer(source)
        return vRP.getInventory(player)
    elseif Config.framework == "creativev5" then
        local player = getPlayer(source)
        return vRP.userInventory(player)
    elseif Config.framework == "creativev6" or Config.framework == "network" or Config.framework == "extended" then
        local player = getPlayer(source)
        return vRP.Inventory(player)
    end
end

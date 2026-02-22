-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- NETEVENT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('startFireworks')
AddEventHandler('startFireworks', function(coords)
    local _source = source
    local closestPlayerIds = vRPC.ClosestPeds(_source, 660.0)

    print("PlayerID Perto: ")
    printTable(closestPlayerIds)

    TriggerClientEvent('startFireworks', _source, coords)

    if closestPlayerIds then
        for _, closestPlayerId in ipairs(closestPlayerIds) do
            local closestPlayerCoords = GetEntityCoords(GetPlayerPed(closestPlayerId))

            local distance = calculateDistance(coords.x, coords.y, coords.z, closestPlayerCoords.x, closestPlayerCoords.y, closestPlayerCoords.z)

            print(distance)
            local volume = math.max(0, 1 - (distance / 660))
            TriggerClientEvent('playFireworksSound', closestPlayerId, coords, volume)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALCULATE DISTANCE
-----------------------------------------------------------------------------------------------------------------------------------------
function calculateDistance(x1, y1, z1, x2, y2, z2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2)
end

function printTable(tbl, indent)
    if not indent then indent = 0 end
    for k, v in pairs(tbl) do
        local formatting = string.rep("  ", indent) .. tostring(k) .. ": "
        if type(v) == "table" then
            print(formatting)
            printTable(v, indent + 1)
        else
            print(formatting .. tostring(v))
        end
    end
end
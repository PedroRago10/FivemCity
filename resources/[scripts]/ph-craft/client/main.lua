local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface("ph-craft",src)
vSERVER = Tunnel.getInterface("ph-craft")

local UIActive = false

Citizen.CreateThread(function()
	while true do
	local msec = 400
		for _,v in pairs(Config.Craft) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.coords.x,v.coords.y,v.coords.z)
			local distance = GetDistanceBetweenCoords(v.coords.x,v.coords.y,cdz,x,y,z,true)
			if distance <= 3 then
				msec = 3
                DrawText3Ds(v.coords.x,v.coords.y,v.coords.z-0, '~r~[E] ~w~PARA ABRIR O ~r~CRAFT')
				if distance <= 2 then
					msec = 3
					if IsControlJustPressed(0,38) then
                        local checkdb = vSERVER.VeryPlayerDB()
                        if vSERVER.acessoperm(_) and checkdb then
                            local xp,time = vSERVER.getxP()
                            openUI(xp,time)
                        end
                    end
                end
            end
        end
        Wait(msec)
    end
end)

function DrawText3Ds(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text))/370
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,80)
end

RegisterNUICallback('Perm', function(data,cb)
    local msec = 400
    for _,v in pairs(Config.Craft) do
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        local bowz,cdz = GetGroundZFor_3dCoord(v.coords.x,v.coords.y,v.coords.z)
        local distance = GetDistanceBetweenCoords(v.coords.x,v.coords.y,cdz,x,y,z,true)
		
        if distance <= 2 then
            msec = 3
            local permissao = vSERVER.Permissao(data.item, _)
            cb(permissao)
        end
    end
end)

function openUI(xp,time)
    SetNuiFocus(true,true)

    SendNUIMessage({
        type = "SET_DATA",
        data = Config.CraftItem,
        categories = Config.Categories,
        xp = xp,
        sunucusaati = time,
        framework = Config.framework
    })
    UIActive = true
    src.getDats()
end

RegisterNUICallback('sendItem', function(data)
    local item = data.weaponName
    local itemtime = tonumber(data.weaponMinute * 60)
    local itemlabel = data.weaponLabel
    local gerekliitem = data.itemName 
    local image = data.imagesbig
    local xp = tonumber(data.xpweapon)
    local qtds = data.qtds

    local item,itemtime,itemlabel,gerekliitem,image,xp = vSERVER.sendItem(gerekliitem, image, itemlabel, itemtime, item, xp, qtds)

    return gerekliitem
end)

RegisterNUICallback('escape', function(data)
    SetNuiFocus(false, false)
    UIActive = false
end)

RegisterNUICallback('claimitem', function(data)
    local item =  data.claimitem
    local itemid = tonumber(data.claimid)
    TriggerServerEvent('ph-craft:addItem',item,itemid)
end)

RegisterNUICallback('nameplayer', function(data,cb)
    nams = vSERVER.getname()
    cb(nams)
end)

RegisterNUICallback('moneyplayer', function(data,cb)
    moneys = vSERVER.getmoney()
    cb(moneys)
end)

RegisterNUICallback('moneyplayer', function(data,cb)
    moneys = vSERVER.getmoney()
    cb(moneys)
end)

RegisterNUICallback('checkitens', function(data,cb)

    for _,v in pairs(data) do

        local check = vSERVER.checkitens(v)
    
        if check == false then
            local temitens = false
            cb(temitens)
        end

        if check == true then
            local temitens = true
            cb(temitens)
        end
    end
end)

RegisterNUICallback('getAwating', function(data,cb)
    src.getDats()
end)    

function src.getDats()
    local data = vSERVER.getData()
    local _, serverTime = vSERVER.getxP()
    
    SendNUIMessage({
        type = "AWAITING_DATA",
        sqldata = data,
        serverTime = serverTime
    })
end

RegisterNetEvent("codem-cyberhud:Notify123")
AddEventHandler("codem-cyberhud:Notify123", function(message, type, time)
    SendNUIMessage({
        type = "send_notification",
        message = message,
        notifytype = type,
        time = time,
    })
end)

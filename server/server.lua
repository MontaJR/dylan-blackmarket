

local QBCore = exports['qb-core']:GetCoreObject()


-- PISTOLITA MK2 EVENTO LADO SERVI  ACABADO
RegisterNetEvent('dylan-nt:comprarPistolaMK2')
AddEventHandler('dylan-nt:comprarPistolaMK2', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Arma1, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

RegisterNetEvent('dylan-nt:noDinero')
AddEventHandler('dylan-nt:noDinero', function ()
    local src = source 
    local xPlayer = QBCore.Functions.GetPlayer(src)
    
    TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
end)


-- Pìstola AP Evento LADO SERVIDOR

RegisterNetEvent('dylan-nt:comprarPistolaAP')
AddEventHandler('dylan-nt:comprarPistolaAP', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Arma2, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-- Pistola .50 Evento LADO SERVER

RegisterNetEvent('dylan-nt:comprarPistola50')
AddEventHandler('dylan-nt:comprarPistola50', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Arma3, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)



-------------------------------------------------------

--------------- SUBFUSILES ---------------------------- ACABADO
---------- Subfusil 1 Evento LADO SERVER -----------------

RegisterNetEvent('dylan-nt:comprarSubFusil1')
AddEventHandler('dylan-nt:comprarSubFusil1', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Subfusil1, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-- Subfusil 2 Evento LADO SERVER --

RegisterNetEvent('dylan-nt:comprarSubFusil2')
AddEventHandler('dylan-nt:comprarSubFusil2', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Subfusil2, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-- Subfusil 3 Evento LADO SERVER --

RegisterNetEvent('dylan-nt:comprarSubFusil3')
AddEventHandler('dylan-nt:comprarSubFusil3', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Subfusil3, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-------------------------------------------------------

--------------- FUSILES ---------------------------- ACABADO
---------- FUSILES 1 Evento LADO SERVER -----------------

RegisterNetEvent('dylan-nt:comprarFusil1')
AddEventHandler('dylan-nt:comprarFusil1', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Fusil1, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-- FUSIL 2 Evento LADO SERVER --

RegisterNetEvent('dylan-nt:comprarFusil2')
AddEventHandler('dylan-nt:comprarFusil2', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Fusil2, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-- FUSIL 3 Evento LADO SERVER --

RegisterNetEvent('dylan-nt:comprarFusil3')
AddEventHandler('dylan-nt:comprarFusil3', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Fusil3, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-------------------------------------------------------









--------------- FRANCOS ----------------------------
---------- FRANCOS 1 Evento LADO SERVER -----------------

RegisterNetEvent('dylan-nt:comprarFranco1')
AddEventHandler('dylan-nt:comprarFranco1', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Franco1, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-- FRANCO 2 Evento LADO SERVER --

RegisterNetEvent('dylan-nt:comprarFranco2')
AddEventHandler('dylan-nt:comprarFranco2', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Franco2, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-- FRANCO 3 Evento LADO SERVER --

RegisterNetEvent('dylan-nt:comprarFranco3')
AddEventHandler('dylan-nt:comprarFranco3', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Franco3, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-------------------------------------------------------









-- cuchillo 1 Evento LADO SERVER --

RegisterNetEvent('dylan-nt:comprarOtros1')
AddEventHandler('dylan-nt:comprarOtros1', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Otros1, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

-------------------------------------------------------

RegisterNetEvent('dylan-nt:comprarHack1')
AddEventHandler('dylan-nt:comprarHack1', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Hack1, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)

RegisterNetEvent('dylan-nt:comprarHack2')
AddEventHandler('dylan-nt:comprarHack2', function(cantidad, totalCosto)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money[Config.TipoDinero] >= totalCosto then
        xPlayer.Functions.RemoveMoney(Config.TipoDinero, totalCosto)
        xPlayer.Functions.AddItem(Config.Hack2, cantidad)
        TriggerClientEvent('QBCore:Notify', src, "Compra realizada con éxito", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "No tienes dinero colega!")
    end
end)



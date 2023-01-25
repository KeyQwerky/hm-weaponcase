local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("pdweaponcase", function(source, item)
    for _, item in pairs(items) do
        QBCore.Functions.GetPlayer(source).Functions.AddItem(item.name, item.amount)
    end
    QBCore.Functions.GetPlayer(source).Functions.RemoveItem("pdweaponcase", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["pdweaponcase"], "remove")
end)

RegisterNetEvent('WeaponCase:server:recieveItem', function(item, itemAmount)
    QBCore.Functions.GetPlayer(source).Functions.AddItem(item, itemAmount)
end)

local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("pdweaponcase", function(source, item)
    local items = {
        {name = "weapon_heavypistol", amount = 1},
        {name = "weapon_stungun", amount = 1},
        {name = "weapon_nightstick", amount = 1},
        {name = "weapon_handcuffs", amount = 1},
        {name = "radio", amount = 1},
        {name = "weapon_flashlight", amount = 1},
        {name = "heavyarmor", amount = 5},
        {name = "pistol_ammo", amount = 5},
        {name = "empty_evidence_bag", amount = 10}, -- copy and paste this line to add in more items.
    }

    for _, item in pairs(items) do
        QBCore.Functions.GetPlayer(source).Functions.AddItem(item.name, item.amount, item.slot)
    end
    QBCore.Functions.GetPlayer(source).Functions.RemoveItem("pdweaponcase",1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["pdweaponcase"], "remove")
end)

RegisterNetEvent('WeaponCase:server:recieveItem', function(item, itemAmount)
    QBCore.Functions.GetPlayer(source).Functions.AddItem(item, itemAmount)
end)

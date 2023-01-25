local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('WeaponCase:Client:UseGiftBox', function(source)
    local src = source
    local ply = QBCore.Functions.GetPlayerData()
    QBCore.Functions.AddItem('weapon_pistol', 1)
    QBCore.Functions.AddItem('pistol_ammo', 10)
    QBCore.Functions.AddItem('weapon_shotgun', 1)
    QBCore.Functions.AddItem('shotgun_ammo', 10)
    QBCore.Functions.RemoveItem("pdweaponcase",1)
end)
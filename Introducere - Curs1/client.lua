--[[
    --------------------------------------------------------------------------------------------
    Natives: https://docs.fivem.net/natives/
 
    Taste FiveM: https://docs.fivem.net/docs/game-references/controls/

    Arme : https://www.se7ensins.com/forums/threads/weapon-and-explosion-hashes-list.1045035/

    Download cod: https://github.com/Switty6/Tutorial-FiveM
    --------------------------------------------------------------------------------------------
]]

RegisterCommand('salut', function()

    TriggerEvent('chat:addMessage',{
        color = {255,0,0},
        multiline = false,
        args = {"[Tutorial]","Salutare si tie!"}
    })

end, false)


Citizen.CreateThread(function()
    local h_key = 74
    local x_key = 73

    while true do
        Citizen.Wait(0)
        if IsControlJustReleased(1,  h_key) then
            giveWeapon("weapon_pistol")
            giveWeapon("weapon_knife")
        end
        if IsControlJustReleased(1,  x_key) then
            giveWeapon("weapon_combatmg")
        end
    end
end)

function giveWeapon(weaponHash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponHash), 999, false, false)
end
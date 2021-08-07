local playerLoaded = false
APPID = nil

Citizen.CreateThread(function()
    Citizen.Wait(100)
    SetDiscordAppId(APPID)

    SetDiscordRichPresenceAsset('logo')
                
    SetDiscordRichPresenceAssetText('Spontane Roleplay')
    local data = exports["callback"]:Trigger("sp-rpc:getData")
    SetRichPresence(string.format("%s - %d/%d",data.name, data.active, data.total))

    SetDiscordRichPresenceAction(0, "Sunucuya Bağlan!", "https://cfx.re/join/r5llvx")
    SetDiscordRichPresenceAction(1, "Discord'a Katıl!", "https://discord.com/invite/vU2r7ymc3p")
end) 

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function()
    playerLoaded = true
end)

Citizen.CreateThread(function()
    Citizen.Wait(100)
    while true do
        if playerLoaded == true then
            SetDiscordAppId(APPID)

            SetDiscordRichPresenceAsset('logo')
                
            SetDiscordRichPresenceAssetText('Spontane Roleplay')
            local data = exports["callback"]:Trigger("sp-rpc:getData")
            SetRichPresence(string.format("%s - %d/%d",data.name, data.active, data.total))

            SetDiscordRichPresenceAction(0, "Sunucuya Bağlan!", "https://cfx.re/join/r5llvx")
            SetDiscordRichPresenceAction(1, "Discord'a Katıl!", "https://discord.com/invite/vU2r7ymc3p")
        end
        Citizen.Wait(5000)
    end
end) 

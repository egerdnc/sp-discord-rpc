ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

exports["callback"]:Register("sp-rpc:getData", function(source)
    local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil then
        return {active = exports["sp-lib"]:getPlayerCount(), total = GetConvar("sv_maxclients", "32"), name=xPlayer.getName()}
    end
end)

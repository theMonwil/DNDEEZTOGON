local e = require(DNDEEZTOGON.path .. "enums")
local game = Game()
local config = Isaac.GetItemConfig()

DNDEEZTOGON:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,
function ()
    local room = game:GetRoom()
    for i = 0, game:GetNumPlayers()-1 do
        local player = Isaac.GetPlayer()
        if player:GetPlayerType() == e.CHARACTERS.RAVA then
            if room:IsClear() then
                player:SetPocketActiveItem(e.ITEMS.INFUSE)
            else
                player:SetPocketActiveItem(e.ITEMS.SUMMON)
            end
        end
    end
end)

DNDEEZTOGON:AddCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD,
function ()
    for i = 0, game:GetNumPlayers()-1 do
        local player = Isaac.GetPlayer()
        if player:GetPlayerType() == e.CHARACTERS.RAVA then
            player:SetPocketActiveItem(e.ITEMS.INFUSE)
        end
    end
end)

DNDEEZTOGON:AddCallback(ModCallbacks.MC_EVALUATE_CACHE,
function (_, player, flags)
    if player:GetPlayerType() ~= e.CHARACTERS.RAVA then
        return end

    if flags == CacheFlag.CACHE_DAMAGE then
        player.Damage = player.Damage * 0.75
    elseif flags == CacheFlag.CACHE_SPEED then
        player.MoveSpeed = player.MoveSpeed + 0.15
    elseif flags == CacheFlag.CACHE_LUCK then
        player.Luck = player.Luck + 2
    end
end)

DNDEEZTOGON:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE,
function (_, player)
    if player.FrameCount ~= 1  then
        return end

    if player:HasCollectible(CollectibleType.COLLECTIBLE_BOX) then
        player:RemoveCollectible(CollectibleType.COLLECTIBLE_BOX)
        for _,trinket in ipairs(Isaac.FindByType(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET)) do
            trinket:Remove()
        end
    end
end, e.CHARACTERS.RAVA)
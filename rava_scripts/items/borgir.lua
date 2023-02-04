local e = require(DNDEEZTOGON.path .. "enums")

DNDEEZTOGON:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE,
function (_, player)
    if not player:HasCollectible(e.ITEMS.BORGIR) then
        return end

    Isaac.Explode(player.Position, player, 999)
    player:GetSprite().Color = Color(0,0,0,0)
    player:Kill()
end)

if EID then
    EID:addCollectible(e.ITEMS.BORGIR, "{{ArrowUp}}{{ArrowUp}}{{ArrowUp}} Kills you instantly")
end
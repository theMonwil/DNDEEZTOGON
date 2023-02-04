local e = require(DNDEEZTOGON.path .. "enums")
local h = require(DNDEEZTOGON.path .. "helpers")
local homunculi = require(DNDEEZTOGON.path .. "familiars.homunculus_types")
local sfx = SFXManager()
local game = Game()

local INFUSE_RADIUS = 80

local function SpawnHomunculus(pickup, player)
    if pickup:ToPickup():IsShopItem() == true then
        return end
    if not homunculi[pickup.Variant] then
        return end

    local stats = 0
    if homunculi[pickup.Variant].DAMAGE then    --Damage field was chosen arbitrarily as a check if table contains final homunulus' stats.
        stats = homunculi[pickup.Variant]
    elseif homunculi[pickup.Variant][pickup.SubType] then
        stats = homunculi[pickup.Variant][pickup.SubType]
    else
        return
    end

    local homunculus = Isaac.Spawn(EntityType.ENTITY_FAMILIAR, e.FAMILIARS.HOMUNCULUS, 0, pickup.Position, Vector.Zero, player):ToFamiliar()
    homunculus.Player = player

    local data = h:EntityData(homunculus)
    data.homunculusStats = {}
    for k,v in pairs(stats) do
        data.homunculusStats[k] = v
    end

    if player:GetPlayerType() == e.CHARACTERS.RAVA and player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
        data.homunculusStats.LIFETIME = data.homunculusStats.LIFETIME*2
    end

    local sprite = homunculus:GetSprite()
    sprite:ReplaceSpritesheet(0, "gfx/familiar/homunculi/" .. data.homunculusStats.SPRITESHEET .. ".png")
    sprite.Color = data.homunculusStats.COLOR
    sprite:LoadGraphics()

    pickup:Remove()
end

DNDEEZTOGON:AddCallback(ModCallbacks.MC_USE_ITEM,
function (_, item, rng, player)
    game:MakeShockwave(player.Position, 0.02, 0.02, 5)
    sfx:Play(SoundEffect.SOUND_DEATH_REVERSE)

    for _,pickup in ipairs(Isaac.FindInRadius(player.Position, INFUSE_RADIUS, EntityPartition.PICKUP)) do
        SpawnHomunculus(pickup, player)
    end

    return false
end, e.ITEMS.INFUSE)
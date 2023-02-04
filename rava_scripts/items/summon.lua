local e = require(DNDEEZTOGON.path .. "enums")
local h = require(DNDEEZTOGON.path .. "helpers")
local homunculi = require(DNDEEZTOGON.path .. "familiars.homunculus_types")
local sfx = SFXManager()

local SUMMON_OFFSET = 20

DNDEEZTOGON:AddCallback(ModCallbacks.MC_USE_ITEM,
function (_, item, rng, player)
    sfx:Play(SoundEffect.SOUND_FLUTE)
    for _,familiar in ipairs(Isaac.FindByType(EntityType.ENTITY_FAMILIAR, e.FAMILIARS.HOMUNCULUS)) do
        familiar = familiar:ToFamiliar()
        if GetPtrHash(player) == GetPtrHash(familiar.Player) then
            familiar.TargetPosition = player.Position + RandomVector()*SUMMON_OFFSET
        end
    end

    local homunculus = Isaac.Spawn(EntityType.ENTITY_FAMILIAR, e.FAMILIARS.HOMUNCULUS, 0, player.Position, Vector.Zero, player):ToFamiliar()
    homunculus.Player = player

    local data = h:EntityData(homunculus)
    data.homunculusStats = {}
    for k,v in pairs(homunculi.DEFAULT) do
        data.homunculusStats[k] = v
    end

    if player:GetPlayerType() == e.CHARACTERS.RAVA and player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
        data.homunculusStats.LIFETIME = data.homunculusStats.LIFETIME*2
    end

    local sprite = homunculus:GetSprite()
    sprite:ReplaceSpritesheet(0, "gfx/familiar/homunculi/" .. data.homunculusStats.SPRITESHEET .. ".png")
    sprite.Color = data.homunculusStats.COLOR
    sprite:LoadGraphics()

    return false
end, e.ITEMS.SUMMON)
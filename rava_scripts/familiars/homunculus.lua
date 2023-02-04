local e = require(DNDEEZTOGON.path .. "enums")
local h = require(DNDEEZTOGON.path .. "helpers")
local homunculi = require(DNDEEZTOGON.path .. "familiars.homunculus_types")

local MIN_RANGE = 300

DNDEEZTOGON:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE,
function (_, familiar)
    local stats = h:EntityData(familiar).homunculusStats
    if not stats then
        stats = homunculi.DEFAULT
        h:EntityData(familiar).homunculusStats = homunculi.DEFAULT
    end

    if familiar.FrameCount == stats.LIFETIME then
        familiar:Kill()
    end

    local difference = Vector.Zero
    familiar:PickEnemyTarget(stats.SEARCH_RANGE)
    if familiar.Target then
        difference = familiar.Target.Position - familiar.Position
    elseif familiar.TargetPosition:LengthSquared() > 0.1 then
        difference = familiar.TargetPosition - familiar.Position
    end

    if difference:LengthSquared() < MIN_RANGE then
        familiar.Velocity = RandomVector()*stats.MOVE_RANDOMNESS_IDLE
        familiar.TargetPosition = Vector.Zero
    else
        familiar.Velocity = difference:Normalized()*stats.VELOCITY+RandomVector()*stats.MOVE_RANDOMNESS_ACTIVE
    end
end, e.FAMILIARS.HOMUNCULUS)

local antiloop = false

DNDEEZTOGON:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG,
function (_, target, damage, flags, source, frames)
    if not(source.Type == EntityType.ENTITY_FAMILIAR and source.Variant == e.FAMILIARS.HOMUNCULUS and antiloop == false) then
        return end

    local target_damage = h:EntityData(source.Entity).homunculusStats.DAMAGE
    antiloop = true
    target:TakeDamage(target_damage, flags, source, frames)
    antiloop = false
    return false
end)


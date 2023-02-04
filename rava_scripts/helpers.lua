local this = {}

---@param entity Entity
---@return table
function this:EntityData(entity)
    local data = entity:GetData()
    if not data.DNDEEZTOGON then
        data.DNDEEZTOGON = {}
    end
    return data.DNDEEZTOGON
end

this.DirectionToVector = {
    [Direction.NO_DIRECTION] = Vector.Zero,
    [Direction.LEFT] = Vector(-1,0),
    [Direction.UP] = Vector(0,-1),
    [Direction.RIGHT] = Vector(1,0),
    [Direction.DOWN] = Vector(0,1),
}
return this
local Entities = { }
Entities.__index = { }

function Entities.new()
    local Entity = { }
    local self = setmetatable(Entity, Entities)

    
end

return Entities

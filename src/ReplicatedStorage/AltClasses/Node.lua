local Nodes = {}
Nodes.__index = { }

local Types = { 
    "Static",
    "RigidBody",
    "ParticleEmitter"
}

function Nodes.new(Type, Name, Parent, Position : Vector2)
    local Node = { }
    local self = setmetatable(Node, Nodes)

    if not table.find(Types, Type) then return error("There is no Type: ", Type) end

    self.Type = Type

    if Type == "RigidBody" then
        local Physiscs = require(game.ReplicatedStorage.Modules.Physics)
    elseif Type == "Static" then
    
    else

    end

    self.Instance = Instance.new("ImageLabel")
    self.Instance.Parent = Parent
    self.Name = Name
    self.Instance.Name = Name
    self.Position = Position
    self.Instance.Position = UDim2.new(
        0, Position.X, 0, Position.Y
    )

    return self
end

return Nodes

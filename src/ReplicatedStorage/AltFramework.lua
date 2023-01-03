local ReplicatedStorage = game:GetService("ReplicatedStorage")

local AltClasses = ReplicatedStorage.AltClasses
local Modules = ReplicatedStorage.Modules
local Events = ReplicatedStorage.Events

local Player = require(AltClasses.Player)
local Entities = require(AltClasses.Entities)
local Node = require(AltClasses.Node)

local Physiscs = require(Modules.Physics)

local AltFramework = { }
AltFramework.__index = { }

-- // Constructors

function AltFramework.new(Settings, MainScene : ScreenGui)
    local Framework =  { }
    local self = setmetatable(Framework, AltFramework)

    if MainScene == nil then return error("'MainScene' is not defined in argument 2!") end
    self.MainScene = MainScene

    self.Settings = Settings or {
        ["MultiplayerSettings"] = {
            MultiplayerEnabled = false
        },
        ["WorldSettings"] = {
            Gravity = workspace.Gravity,
            Dimensions = Vector2.new(720, 548)
        }
    }

    return self
end

function AltFramework.NewNode(Type : string, Name : string, Parent, Position : Vector2) return Node.new(Type, Name, Parent, Position) end
function AltFramework.NewPlayer(Player)
    
end

function AltFramework:Init()
    
end

return AltFramework

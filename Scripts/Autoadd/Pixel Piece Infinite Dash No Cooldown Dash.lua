local client = game:GetService('Players').LocalPlayer
local input_manager = client.PlayerGui.Files.Resources.Geral.InputManager
local main = require(input_manager)
local movements = require(input_manager.Movements)
local test = getupvalue(movements.Dodge, 1)

local input_event = game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers[client.Name].InputEvent

local namecall; namecall = hookmetamethod(game, '__namecall', function(self, ...)
    local method = getnamecallmethod() 
    local args = {...}
    
    if (method == 'FireServer' and self == input_event and args[1]['TypeInput'] == 'Dodge') then
        return
    end
    
    return namecall(self, ...) 
end)

while (task.wait()) do 
    test['CooldownDodge'] = 0
end
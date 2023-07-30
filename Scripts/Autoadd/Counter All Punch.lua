local Enabled = true
local Client = game.Players.LocalPlayer
local States = workspace.States
local Effect = require(game:GetService("ReplicatedStorage").Modules.EffectHelper)
function get(n,s)
   return States[n.Name]:FindFirstChild(s, true).Value
end
function get_root(chr)
   return chr.HumanoidRootPart
end
function attack(char)
   game:GetService("ReplicatedStorage").dataRemoteEvent:FireServer({{"02010000",char},"\20"})
end

shared.BaseEffectFunction = shared.BaseEffectFunction or {}
for i,v in pairs(Effect) do
   shared.BaseEffectFunction[i] = shared.BaseEffectFunction[i] or v
   Effect[i] = function(d,...)
       task.spawn(function()
           if not Enabled then return end
           local Target = get(Client, "LockedOn")
           if type(d) == "table" and d[2] then
               if d[1] == "StartupHighlight" and d[2] ~= Client.Character then
                   if Client:DistanceFromCharacter(get_root(d[2]).Position) < 10 then
                       attack(d[2])
                   end
               end
           end
       end)
       return shared.BaseEffectFunction[i](d,...)
   end
end
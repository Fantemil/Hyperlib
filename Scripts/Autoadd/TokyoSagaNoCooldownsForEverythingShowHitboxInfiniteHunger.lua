game:GetService("Players").LocalPlayer.Stats.Hungry.Value = 9e9

Workspace.DescendantAdded:Connect(function(descendant)
    local name = descendant.Name:lower()
    local Path = descendant:GetFullName()
    if name:find("hitbox") then
        descendant.Transparency = 0.9
    end
end)


old = hookfunction(wait,function(a)
        if a == (game.Players.LocalPlayer.Stats.HitSpeed.Value - 0.1) or a == 1.3 or a == 4 or a == 10 or a == 20 or a == 300 or a == 15 then
            return old(0)
        end
    return old(a)
end)


local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
lplr = game:GetService("Players").LocalPlayer.Character
mt.__namecall = newcclosure(function(o, ...)
 local method = getnamecallmethod()

 if method == "FindFirstChild" then
     packed = {...}
     if packed[1] == "HitStun" or packed[1] == "WhiteImpulsesCD" or packed[1] == "Blocking" or packed[1] == "Running" or packed[1] == "Dodge" or packed[1] == "Hit" or packed[1] == "Skill" or packed[1] == "Dashing" or packed[1] == "HitCoolDown" then
            return false
      end
end
 
  return old(o, ...)
 
end)
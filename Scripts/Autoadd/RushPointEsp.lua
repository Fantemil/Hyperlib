local KiriotESPLIB = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()
KiriotESPLIB.Boxes = true

KiriotESPLIB:AddObjectListener(game:GetService("Workspace").DroppedWeapons, {
 Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild("HitBox")
        return hrp
    end,
 CustomName = function(v)
  return v.Name
 end,
 Color = Color3.fromRGB(5, 132, 252),
 IsEnabled = "DroppedGun"
})

function getLocalPlayerTeam()
   return game:GetService("Workspace").MapFolder.Players[game.Players.LocalPlayer.Name]["Team"].Value
end

KiriotESPLIB:AddObjectListener(game:GetService("Workspace").MapFolder.Players, {
 Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild("HumanoidRootPart")
        return hrp
    end,
 CustomName = function(v)
  return v.Name
 end,
    Validator = function(x)
        if x.Team.Value ~= getLocalPlayerTeam() then
            return true
        end
    end,
 Color = Color3.fromRGB(252, 5, 5),
 IsEnabled = "Playerss"
})

KiriotESPLIB:Toggle(true)
KiriotESPLIB.DroppedGun = true
KiriotESPLIB.Playerss = true
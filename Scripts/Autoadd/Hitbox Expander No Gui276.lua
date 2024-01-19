_G.Size = 20
_G.Fov = 120
_G.Speed = 16 --16 is normal walkspeed--
_G.Transparency = 0.5
_G.CanCollide = false

while wait(0.1) do
    local Players = game:GetService("Players")
    local all = Players:GetPlayers()
    local Lp = Players.LocalPlayer
    
    for _, player in ipairs(all) do
       if Lp ~= player and player.Character then
          local ht  = player.Character:FindFirstChild("HumanoidRootPart")
          if ht then
            local hum = player.Character:FindFirstChild("Humanoid")
            if hum then
            if hum.Health == 0 then
             ht.Size = Vector3.new(0, 0, 0)
            else
                print("Alive")
             hum.WalkSpeed = _G.Speed
             ht.Size = Vector3.new(_G.Size, _G.Size, _G.Size)
             ht.Transparency = _G.Transparency
			 ht.CanCollide = _G.CanCollide
             game.Workspace.Camera.FieldOfView = _G.Fov
          end
         end
       end
    end
    end
    end
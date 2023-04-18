-- Variable

local player = game.Players.LocalPlayer

_G.Enabled = true
local ghostN = "Fairy" -- you can find all name in Workspace.Ghost
local GhostsFolder = game.Workspace.Ghosts
local bLocation


-- function

function teleport(loc) -- Nymphoria on v3rmillion.net
   bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   if game.Players.LocalPlayer.Character.Humanoid.Sit then
       game.Players.LocalPlayer.Character.Humanoid.Sit = false
   end
   wait()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end

--Autofarm
while true do
    if _G.Enabled == true then
            if GhostsFolder[ghostN]:FindFirstChild("HumanoidRootPart") and GhostsFolder[ghostN]:FindFirstChild("EnemyHumanoid") and GhostsFolder[ghostN].Health.Value > 0 and player.Character:FindFirstChild("HumanoidRootPart") then
                repeat
                    if player.Character:FindFirstChild("HumanoidRootPart") and GhostsFolder[ghostN]:FindFirstChild("HumanoidRootPart") then
                        player.Character.HumanoidRootPart.CFrame = GhostsFolder[ghostN].HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                    end
                    wait()
                    
                    local remote = game:GetService("ReplicatedStorage").Network.ToServer.Requests.VacuumEnemy
                    remote:FireServer(GhostsFolder[ghostN])

                until v == nil or v.Parent == nil or not GhostsFolder[ghostN]:FindFirstChild("EnemyHumanoid") or GhostsFolder[ghostN].Health.Value <= 0
            end
    end
    wait()
end
local RS = game:GetService("RunService")
local vu = game:GetService("VirtualUser")
local autofarm
local session = 1

game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

print("[LOGS] Autofarm > Loaded")
autofarm = RS.Stepped:Connect(function()
    
        if game:GetService('ReplicatedStorage').MatchInfo.ExitsOpen.Value == false and game.Workspace:FindFirstChild("CurrentMap") then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-151.31022644043, 195.42036437988, -568.85662841797)
        end

         if game:GetService('ReplicatedStorage').MatchInfo.ExitsOpen.Value == true then
            wait(2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.CurrentMap.ExitDoor.Glow.CFrame
            wait(1)
            game:GetService('ReplicatedStorage').MatchInfo.ExitsOpen.Value = false
            game.Workspace.CurrentMap:Destroy()
            print("[LOGS] Autofarm > Stop | Reset settings")
        end
end)
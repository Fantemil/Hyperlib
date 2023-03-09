_G.AutoRace = false
local lp = game.Players.LocalPlayer

while _G.AutoRace do task.wait()
   if lp and lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
       if lp.PlayerGui["UI_Main"].UI.TopMenu.RaceTimer.TextLabel.Text ~= "" then
           for i,v in pairs(game:GetService("Workspace").Environment:GetChildren()) do
               if v:IsA("Folder") and v:FindFirstChild("Sign") and _G.AutoRace then
                   lp.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("Sign").CFrame
                   task.wait()
               end
           end
       else
           lp.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Lobby.SpawnLocation.SpawnLocation.CFrame
       end
   end
end
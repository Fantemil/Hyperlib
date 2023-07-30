if not game:IsLoaded() then
   repeat
       if not game:IsLoaded() then
           task.wait()
       end
   until game:IsLoaded()
end
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local PLRCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local PLRHumanoidRootPart = PLRCharacter:WaitForChild("HumanoidRootPart")

if game.PlaceId == 13049968097 then
   for _,v in pairs(Workspace:WaitForChild("checkpoints"):GetChildren()) do
       PLRHumanoidRootPart.CFrame = v.CFrame
       wait(.25)
   end
   PLRHumanoidRootPart.CFrame = game:GetService("Workspace").endPart.CFrame
   game:GetService("TeleportService"):Teleport(13049968097, game.Players.LocalPlayer)
else
   game:GetService("TeleportService"):Teleport(13049968097, game.Players.LocalPlayer)
end
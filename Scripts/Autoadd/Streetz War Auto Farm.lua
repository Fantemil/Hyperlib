for index, object in pairs(workspace:GetDescendants()) do
 if object.Name == "kar" and object.Parent:IsA("Folder") then
  object.Parent.Name = "BoxJob"
  object.Parent.Parent.Name = "Jobs"
 end
end

--// Variables
local Path = game:GetService("Workspace").Jobs.BoxJob.BOX1
local ClickDetector = Path.ClickDetector
local Destination = game:GetService("Workspace").Jobs.BoxJob.Job

local Player = game.Players.LocalPlayer
local Character = Player.Character
local HumanoidRootPart = Character.HumanoidRootPart

getrenv().Active = true--// Change this to false if you want it to stop

spawn(function() --// Main script
 while Active and wait() do
  for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v.Name == "BOX" then
    v.Parent = game.Players.LocalPlayer.Character
   end
  end
  HumanoidRootPart.CFrame = Destination.CFrame  
  fireclickdetector(ClickDetector)
 end
end)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("GloVHub", "Sentinel")

local Tab = Window:NewTab("Gloves")

local Section = Tab:NewSection("Auto-Get")

Section:NewButton("MegaRock", "Gets the glove MegaRock", function()
     if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 45 then
  fireclickdetector(game:GetService("Workspace").Lobby.Diamond.ClickDetector)
  wait(0.5)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,999999,0)
  wait(2.5)
  game:GetService("ReplicatedStorage").Rockmode:FireServer()
  wait(36250) -- Added 250 seconds so you don't worry about your 10 hours lost without getting badge for an error
  game:GetService("ReplicatedStorage").DeactivateRockmode:FireServer()
 end
end)

Section:NewButton("Redacted", "Gets the glove Redacted", function()
    if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
     for _,v in pairs(game:GetService("Workspace").PocketDimension.Doors:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
end
end
end
end)
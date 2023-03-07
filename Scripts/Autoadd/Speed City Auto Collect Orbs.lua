local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Trillionaire orbs", "DarkTheme")
local Tab2 = Window:NewTab("Trillionaire City")
local Section2 = Tab2:NewSection("Auto collect the Trillionaire orbs")


Section2:NewToggle("Trillionaire orbs", "Teleports You To The white Orbs", function(state)
 if state then
  getgenv().Farming1 = true
  while Farming1 == true do
   if game:GetService("Workspace").TrillionaireCity.TrillionaireOrbs:FindFirstChild("Trillionaire") then 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").TrillionaireCity.TrillionaireOrbs.Trillionaire.Outside.Position)
   end
   wait()
  end
 else
  getgenv().Farming1 = false
 end
end)
--Auto Open chests of time rewards
loadstring(game:HttpGet("https://raw.githubusercontent.com/FOXTROXHACKS/UsefullScripts/main/Gui-Button-Clicker"))()
local GiftThing = game:GetService("Players").LocalPlayer.PlayerGui.Main.Menus.Gratitude.Container.GiftContainer.Frame

for i, v in pairs(GiftThing:GetDescendants()) do
    if v:IsA("TextButton") then
         FireBtn1(v)
    end
end
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Legends Of Speed Auto Orb", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
 Name = "collect orbs",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Section"
})

Tab:AddButton({
 Name = "start collecting orbs",
 Callback = function()
        getgenv().svan1 = true
local playerHead = game.Players.LocalPlayer.Character.Head

    while wait() do
        if not getgenv().svan1 then break end
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
        end
    end
end
   end    
})

Tab:AddButton({
 Name = "stop collecting orbs",
 Callback = function()
        getgenv().svan1 = false
   end    
})
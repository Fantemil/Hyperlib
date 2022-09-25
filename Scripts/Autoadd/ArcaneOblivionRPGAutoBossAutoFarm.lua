local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})



local Tab = Window:MakeTab({
 Name = "Tab 1",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})


local Section = Tab:AddSection({
 Name = "Section"
})

Tab:AddButton({
 Name = "autofarm boss semi god boss its called.!",
 Callback = function()
        print("button pressed")
     while true do
    wait(1)
    local args = {
     [1] = workspace.Mobs:FindFirstChild("100K Visits Semi-God").Head,
     [2] = workspace.Mobs:FindFirstChild("100K Visits Semi-God").Enemy,
     [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("100K Visits Sword")
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.DamageEvent:FireServer(unpack(args))
    end
   end    
})




Tab:AddButton({
 Name = "autofarm! 100k visits followers go to place to get sword work any sword",
 Callback = function()
        print("button pressed")
     while true do
    wait(0.1)
    local args = {
     [1] = workspace.Mobs:FindFirstChild("100K Visits Follower"):FindFirstChild("Left Arm"),
     [2] = workspace.Mobs:FindFirstChild("100K Visits Follower").Enemy,
     [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Old Broken Bronze Sword")
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.DamageEvent:FireServer(unpack(args))
    end
   end    
})
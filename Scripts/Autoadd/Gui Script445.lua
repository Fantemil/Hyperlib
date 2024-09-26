local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Find the powers | Agreed69", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local power

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Get almost all powers",
    Callback = function()
        local shards = workspace:FindFirstChild("shards")

        if shards then
            for _, shard in pairs(shards:GetChildren()) do
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(shard.CFrame)
                wait(0.5)
                local prompt = shard:FindFirstChildOfClass("ProximityPrompt")
                if prompt then
                    fireproximityprompt(prompt)
                end
                wait(0.3)
            end
        end
    end
})

Tab:AddButton({
    Name = "Equip any Power",
    Callback = function()
        if power then
            game:GetService("ReplicatedStorage").EventEquip:FireServer(power)
        else
            print("No power selected.")
        end
    end
})

Tab:AddTextbox({
    Name = "Textbox",
    Default = "Insert Power Name",
    TextDisappear = true,
    Callback = function(Value)
        power = Value
    end      
})

Tab:AddToggle({
    Name = "Spam found",
    Default = false,
    Callback = function(Value)
        _G.loop = Value
        while _G.loop do
            local shards = workspace:FindFirstChild("shards")
            local cheese = shards:FindFirstChild("Cheese")
            local prompt = cheese:FindFirstChild("ProximityPrompt")
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(cheese.CFrame)
            fireproximityprompt(prompt)
            wait()
        end
    end    
})

OrionLib:Init()
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "Ali's Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddButton({
    Name = "Click Me",
    Callback = function()
        print("Button Clicked!")
    end
})

local NameHiderTab = Window:MakeTab({
    Name = "Name Hider",
    Icon = "rbxassetid://7734058599",
    PremiumOnly = false
})

NameHiderTab:AddParagraph("Note", "This is not FE. When you want to hide your username in your videos but you're tired of editing, use this instead.")

NameHiderTab:AddButton({
    Name = "Hide My Name",
    Callback = function()
        local nametag = workspace.sbsbsbsskao.Head:FindFirstChild("Nametag")
        local textLabel = nametag and nametag:FindFirstChild("TextLabel")
        if textLabel then
            textLabel.Text = "Nuh Uh"
            print("Name tag changed to 'Nuh Uh'")
        else
            warn("TextLabel not found inside Nametag BillboardGui")
        end
    end
})

local TrollTab = Window:MakeTab({
    Name = "Troll",
    Icon = "rbxassetid://7733955740",
    PremiumOnly = false
})

TrollTab:AddParagraph("DO NOT ABUSE", "DO NOT ABUSE THIS U CAN GET BANNED PERMANENTLY")

TrollTab:AddButton({
    Name = "Spam Ability",
    Callback = function()
        while wait(1) do
            local args = {"fullcharged"}
            game:GetService("ReplicatedStorage").slapstick:FireServer(unpack(args))
        end
    end
})

local BadgesTab = Window:MakeTab({
    Name = "Badges",
    Icon = "rbxassetid://7733942651",
    PremiumOnly = false
})

BadgesTab:AddButton({
    Name = "Free Lamp Glove",
    Callback = function()
        local args = {"Freeze"}
        game:GetService("ReplicatedStorage").IceSkate:FireServer(unpack(args))
    end
})

local AlchemistTab = Window:MakeTab({
    Name = "Alchemist",
    Icon = "rbxassetid://7733674079",
    PremiumOnly = false
})

AlchemistTab:AddButton({
    Name = "Add Items",
    Callback = function()
        local items = {"Dire Flower", "Lamp Grass", "Autumn Sprout", "Glowing Mushroom", "Mushroom", "Hazel Lily", "Blood Rose", "Winter Rose", "Dark Root", "Blue Crystal"}
        for _, item in ipairs(items) do
            local args = {"AddItem", item}
            game:GetService("ReplicatedStorage").AlchemistEvent:FireServer(unpack(args))
        end
    end
})

local TitanTab = Window:MakeTab({
    Name = "Titan",
    Icon = "rbxassetid://7734058345",
    PremiumOnly = false
})

TitanTab:AddParagraph("Credits", "Credits to omoscripts. Omoscripts, if you want to remove this out of my hub, just tell me. I have no problem.")

TitanTab:AddButton({
    Name = "Free Titan Glove",
    Callback = function()
        for _, child in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
            if child.Name:find("{") then
                local args = {"Titan"}
                if child:IsA("RemoteEvent") then
                    child:FireServer(unpack(args))
                elseif child:IsA("RemoteFunction") then
                    local result = child:InvokeServer(unpack(args))
                    print("Result from InvokeServer:", result)
                else
                    print("Child is neither a RemoteEvent nor a RemoteFunction.")
                end
            end
        end
    end
})

OrionLib:Init()

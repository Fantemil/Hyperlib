function crash() --gig
    for _, v in pairs({"BodyWidthScale", "BodyTypeScale", "BodyHeightScale", "HeadScale"}) do
        game:GetService("ReplicatedStorage").UpdateAvatar:FireServer("scale", v, 9e25)
    end
end

function antiToolRemove()
    local metatable = getrawmetatable(game);
    local oldmetatable = metatable.__namecall
    setreadonly(metatable, false)
    
    metatable.__namecall = newcclosure(function(remote, ...)
        args = {...}
        method = tostring(getnamecallmethod())
        if method == "FireServer" and tostring(remote) == "ToolEvent" then
            if args[1] == "steppedOff" and args[2] ~= "whitelistArg" then
                return end
            return oldmetatable(remote, unpack(args))
        end
        return oldmetatable(remote, ...)
    end)
    setreadonly(metatable, true)
end

function getAllTools()
    
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71, 20, 349)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame


    for i,v in pairs(game:GetDescendants()) do
        if v:IsA("Tool") then
            game:GetService("ReplicatedStorage").ToolEvent:FireServer("steppedOn", v)
        end
    end
    
    game:GetService("ReplicatedStorage").ToolEvent:FireServer("steppedOff", "whitelistArg")
end

function refreshTools()
    game:GetService("ReplicatedStorage").ToolEvent:FireServer("steppedOff", "whitelistArg")
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Friend Hangout | Hack", "Ocean")
local Tab = Window:NewTab("Main")
local Main = Tab:NewSection("Functions")
local Size = Tab:NewSection("Size Modify")

Main:NewButton("Crash Server", "Try again if it doesn't work.", function()
    crash()
end)
Main:NewButton("Anti-Remove Tools (Required for Get Tools)", "stops an remote event that removes tools", function()
    antiToolRemove()
end)
Main:NewButton("Get All Tools", "uses a remote events to get all tools even other player's tool", function()
    getAllTools()
end)
Main:NewButton("Refresh Tools", "If ur tools suddenly disappeared", function()
    refreshTools()
end)

Size:NewTextBox("Height", "Height of character", function(int)
    game:GetService("ReplicatedStorage").UpdateAvatar:FireServer("scale", "BodyHeightScale", tonumber(int))
end)
Size:NewTextBox("Width", "Width of character", function(int)
    game:GetService("ReplicatedStorage").UpdateAvatar:FireServer("scale", "BodyWidthScale", tonumber(int))
end)
Size:NewTextBox("Head", "Head of character", function(int)
    game:GetService("ReplicatedStorage").UpdateAvatar:FireServer("scale", "HeadScale", tonumber(int))
end)
Size:NewTextBox("Body Type", "Body Type of character", function(int)
    game:GetService("ReplicatedStorage").UpdateAvatar:FireServer("scale", "BodyTypeScale", tonumber(int))
end)
Size:NewTextBox("Proportion", "Proportion of character", function(int)
    game:GetService("ReplicatedStorage").UpdateAvatar:FireServer("scale", "BodyProportionScale", tonumber(int))
end)
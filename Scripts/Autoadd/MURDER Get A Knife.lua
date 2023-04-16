--thaigirl#4631 | 1078202593983082546 | dreidelman on v3rm

--gives you a working knife, even if youre a sheriff or innocent. read instructions in chat once you execute.

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local guiService = game:GetService("GuiService")

game:GetService("StarterGui"):SetCore(
    "ChatMakeSystemMessage",
    {
        Text = "[DREIDELMAN]: Press 'Z' to loot, you need to loot 5 props to murder."
    }
)
game:GetService("StarterGui"):SetCore(
    "ChatMakeSystemMessage",
    {
        Text = "[DREIDELMAN]: If you throw the knife, you lose it for the remainder of the round and cannot get it back."
    }
)

game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "IMPORTANT!",
        Text = "Open chat, so you can see instructions on how to use this.",
        Icon = "rbxassetid://11401835376"
    }
)

mouse.KeyDown:connect(
    function(key)
        if key == "z" then
            for _, prop in ipairs(game.Workspace.Debris.Props:GetDescendants()) do
                if prop.Name == "Green" and prop.Parent.Orientation.Y > -3162 then
                    player.Character.HumanoidRootPart.CFrame = prop.Parent.CFrame + Vector3.new(0, 3, 0)
                    wait(0.5)
                    game.ReplicatedStorage.Events.Loot:FireServer(prop.Parent)
                end
            end
        end
    end
)

local statusFolder = player:FindFirstChild("Status")

if statusFolder then
    local roleString = statusFolder:FindFirstChild("Role")
    if roleString then
        roleString.Value = "Murderer"
    else
        print("Role not found")
    end
else
    print("Status not found")
end
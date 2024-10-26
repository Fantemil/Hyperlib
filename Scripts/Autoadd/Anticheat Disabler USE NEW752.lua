local player = game.Players.LocalPlayer

local function tool(parent)
    for _, item in pairs(parent:GetChildren()) do
        if item:IsA("Tool") then
            return item
        end
    end
    return nil
end

local sword = tool(workspace:FindFirstChild(player.Name))
local backpacksword = tool(player.Backpack)
local feed = player.PlayerGui:FindFirstChild("Kill Feed")

if sword and sword:FindFirstChild("Anti-reach") then
    sword["Anti-reach"]:Destroy()
    print("Removed anti-reach")
end

if backpacksword and backpacksword:FindFirstChild("Anti-reach") then
    backpacksword["Anti-reach"]:Destroy()
    print("Removed anti-reach")
end

if feed and feed:FindFirstChild("Frame") and feed.Frame:FindFirstChild("LocalScript") then
    feed.Frame.LocalScript:Destroy()
    print("Removed reach kick")
end

print("Finished anticheat disabler!")
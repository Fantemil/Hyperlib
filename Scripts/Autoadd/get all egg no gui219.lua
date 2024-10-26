-- Grab the player
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Snag all the eggs in the Workspace
local eggs = Workspace.Eggs:GetChildren()

-- Function to teleport the character to an egg
local function teleportToEgg(egg)
    if humanoidRootPart and egg then
        humanoidRootPart.CFrame = egg.CFrame
    end
end

-- Teleport the character to each egg one by one
for i, egg in ipairs(eggs) do
    teleportToEgg(egg)
    wait(1) -- Chill for a second before teleporting to the next egg
end -- you can edit delay number

-- Show Roblox notification for joining the Discord server
game.StarterGui:SetCore("SendNotification", {
    Title = "Join My Discord! Plss";
    Text = "https://discord.gg/KPyfBnXM";
    Duration = 10; 
})
wait(2)
game.StarterGui:SetCore("SendNotification", {
    Title = "Thankss for use my Sc";
    Text = "Join https://discord.gg/KPyfBnXM For Supoort";
    Duration = 10; 
})
print("https://discord.gg/KPyfBnXM")

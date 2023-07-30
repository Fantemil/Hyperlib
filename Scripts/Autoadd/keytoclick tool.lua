getgenv().keytoclick = "Q"

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = keytoclick
local function respawnTool()
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    local existingTool = backpack:FindFirstChild(keytoclick)
    if not existingTool then
        tool.Parent = backpack
    end
end

tool.Activated:connect(function()
    local vim = game:GetService("VirtualInputManager")
    vim:SendKeyEvent(true, keytoclick, false, game)
end)

local character = game.Players.LocalPlayer.Character
character:WaitForChild("Humanoid").Died:Connect(respawnTool)
game.Players.LocalPlayer.CharacterAdded:Connect(respawnTool)

respawnTool()
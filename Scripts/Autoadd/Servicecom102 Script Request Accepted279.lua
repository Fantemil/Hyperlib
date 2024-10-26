local workspace = game.Workspace

local function teleportToHandle(tool)
    local handle = tool:WaitForChild("Handle")
    if handle then
        local basePart = tool:FindFirstChildOfClass("BasePart")
        if basePart then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = basePart.CFrame + Vector3.new(0, basePart.Size.Y / 2, 0)
        end
    end
end

workspace.Tools:GetChildren():forEach(teleportToHandle)

workspace.Tools.ChildAdded:Connect(teleportToHandle)
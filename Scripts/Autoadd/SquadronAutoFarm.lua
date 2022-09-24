local map = 1 --maps 1-3 supported as of now(i dont have placeids)
local difficulty = 1 --make sure you have proper levels

spawn(function()
    wait(30)
    game:GetService("TeleportService"):Teleport(3436903748, game.Players.LocalPlayer)
end)
if not game:IsLoaded() then game.Loaded:Wait() end
local mode
if game.PlaceId == 3436903748 then
    mode = "lobby"
elseif game.PlaceId == 3501276267 or 3501280158 or 3477768254 then
    mode = "game"
end
if mode == "lobby" then
    task.wait(3)
    for i, v in pairs(game:GetService("Players").LocalPlayer.Data:GetDescendants()) do
        if v:FindFirstChild("Skin") then
            local args = {
                [1] = "Sell",
                [2] = v
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
        end
    end
    while true do
        local args = {
            [1] = "Create",
            [2] = map,
            [3] = difficulty,
            [4] = true,
            [5] = 1
        }
        game:GetService("ReplicatedStorage").RF2:InvokeServer(unpack(args))
        task.wait(1)
        local args = {
            [1] = "Start"
        }
        game:GetService("ReplicatedStorage").RF2:InvokeServer(unpack(args))
        task.wait(8)
    end
end
if mode == "game" then
    task.wait(10) --fine tune
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool"))
    local connection = game:GetService("RunService").RenderStepped:Connect(function()
        if game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool"))
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies.Boss.HumanoidRootPart.CFrame - Vector3.new(0,10,0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
    end)
    if (not _G.NS) then _G.NS = { } end --ALL CREDITS TO https://v3rmillion.net/member.php?action=profile&uid=691548
    _G.NS.SilentAim_Enabled = true
    _G.NS.SilentAim_DebugMode = false
    spawn(function() loadstring(game:HttpGet("https://pastebin.com/raw/87xPH8vz", true))() end) --idk if this infinite yields but i dont want to have to find out
    game:GetService("RunService").RenderStepped:Connect(function() game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate() end)
    repeat task.wait() until game:GetService("Workspace").Enemies.Boss.NPC.Health <= 0
    connection:Disconnect()
    task.wait(0.5)
    for i, v in pairs(workspace.Reward.Reward:GetChildren()) do
        game:GetService("ReplicatedStorage").RE2:FireServer(v)
    end
    task.wait(0.5)
    game:GetService("TeleportService"):Teleport(3436903748, game.Players.LocalPlayer)
end
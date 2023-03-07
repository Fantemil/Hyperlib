--[[
   ______      ________ _____  _    _           ____________    _____  ______ ____  ____  ______ _    _  _____  _____       _______ ____  _____  
  / __ \ \    / /  ____|  __ \| |  | |   /\    |___  /  ____|  |  __ \|  ____/ __ \|  _ \|  ____| |  | |/ ____|/ ____|   /\|__   __/ __ \|  __ \ 
 | |  | \ \  / /| |__  | |__) | |__| |  /  \      / /| |__     | |  | | |__ | |  | | |_) | |__  | |  | | (___ | |       /  \  | | | |  | | |__) |
 | |  | |\ \/ / |  __| |  _  /|  __  | / /\ \    / / |  __|    | |  | |  __|| |  | |  _ <|  __| | |  | |\___ \| |      / /\ \ | | | |  | |  _  / 
 | |__| | \  /  | |____| | \ \| |  | |/ ____ \  / /__| |____   | |__| | |___| |__| | |_) | |    | |__| |____) | |____ / ____ \| | | |__| | | \ \ 
  \____/   \/   |______|_|  \_\_|  |_/_/    \_\/_____|______|  |_____/|______\____/|____/|_|     \____/|_____/ \_____/_/    \_\_|  \____/|_|  \_\
]]

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local window = ui:Window("steal roblox games")
window:Toggle("Auto Create Game", "Auto Create Game", false, function(x)
    _G.AutoFarm = x
    while _G.AutoFarm do
        wait()
        pcall(function()
            game:GetService("ReplicatedStorage").Events.VideoRecorded:FireServer()
        end)
    end
end)
window:Toggle("Auto Upgrades", "Auto Upgrades", false, function(x)
    _G.up = x
    while _G.up do
        wait()
        pcall(function()
            local Values = {
                "BetterEditing",
                "UploadSpeed",
                "CameraStorage"
            }
            for i,v in next, Values do
                local Value = game.Players.LocalPlayer.Data[v.."Level"].Value
                game.ReplicatedStorage.Events.UpgradeItem:FireServer(v, Value)
            end
        end)
    end
end)

window:Toggle("Auto Build", "Auto Build", false, function(x)
    _G.build = x
    while _G.build do
        wait()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
                if v.Name == "TycoonOwner" then
                    if v.Value == tostring(game.Players.LocalPlayer) then
                        for i2,v2 in next, v.Parent:GetDescendants() do
                            if v2:IsA("TouchTransmitter") then
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v2.Parent, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v2.Parent, 1)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
window:Toggle("Auto Smack (Aura)", "Auto Smack (Aura)", false, function(x)
    _G.smack = x
    while _G.smack do
        wait()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
                if v.Name == "TycoonOwner" then
                    if v.Value == tostring(game.Players.LocalPlayer) then
                        for i2,v2 in next, v.Parent:GetDescendants() do
                            if v2.Parent.Name == "Torso" and v2.Name == "ProximityPrompt" then
                                fireproximityprompt(v2)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
window:Button("Anti AFK", function()
    local vu = game:GetService("VirtualUser")
    game.Players.LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(workspace.CurrentCamera.CFrame))
        wait(1)
        vu:Button2Up(Vector2.new(workspace.CurrentCamera.CFrame))
    end)
end)
window:Label("YT: Tora IsMe")
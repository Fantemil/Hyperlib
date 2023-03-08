--[[
   ______      ________ _____  _    _           ____________    _____  ______ ____  ____  ______ _    _  _____  _____       _______ ____  _____  
  / __ \ \    / /  ____|  __ \| |  | |   /\    |___  /  ____|  |  __ \|  ____/ __ \|  _ \|  ____| |  | |/ ____|/ ____|   /\|__   __/ __ \|  __ \ 
 | |  | \ \  / /| |__  | |__) | |__| |  /  \      / /| |__     | |  | | |__ | |  | | |_) | |__  | |  | | (___ | |       /  \  | | | |  | | |__) |
 | |  | |\ \/ / |  __| |  _  /|  __  | / /\ \    / / |  __|    | |  | |  __|| |  | |  _ <|  __| | |  | |\___ \| |      / /\ \ | | | |  | |  _  / 
 | |__| | \  /  | |____| | \ \| |  | |/ ____ \  / /__| |____   | |__| | |___| |__| | |_) | |    | |__| |____) | |____ / ____ \| | | |__| | | \ \ 
  \____/   \/   |______|_|  \_\_|  |_/_/    \_\/_____|______|  |_____/|______\____/|____/|_|     \____/|_____/ \_____/_/    \_\_|  \____/|_|  \_\
]]

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local window = ui:Window("ProTube Race Clicker")

window:Label("Subs Farm")

window:Toggle("Zone 1", "Zone 1", false, function(x)
    _G.Auto1 = x
    while _G.Auto1 do
        wait()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-141.37, 4.36, 295252.56)
            wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-137, 4.32, 8)
        end)
    end
end)

window:Toggle("Zone 2", "Zone 2", false, function(x)
    _G.Auto2 = x
    while _G.Auto2 do
        wait()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.011, 4.569, 295250.75)
            wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-137, 4.32, 8)
        end)
    end
end)

window:Toggle("Zone 3", "Zone 3", false, function(x)
    _G.Auto3 = x
    while _G.Auto3 do
        wait()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.15, 4.40, 295250.34)
            wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-137, 4.32, 8)
        end)
    end
end)

window:Toggle("Zone 4", "Zone 4", false, function(x)
    _G.Auto4 = x
    while _G.Auto4 do
        wait()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(164.48, 4.87, 295250.34)
            wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-137, 4.32, 8)
        end)
    end
end)

window:Toggle("Zone 5", "Zone 5", false, function(x)
    _G.Auto5 = x
    while _G.Auto5 do
        wait()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(264.56, 4.82, 295250.43)
            wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-137, 4.32, 8)    
        end)
    end
end)

window:Label("Speed Farm")

window:Toggle("Auto Click", "Auto Click", false, function(x)
    _G.click = x
    while _G.click do
        wait()
        pcall(function()
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.PlayerClick:InvokeServer()
        end)
    end
end)

window:Label("YT: Tora IsMe")
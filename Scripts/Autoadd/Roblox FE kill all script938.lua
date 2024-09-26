local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Kill all crminal vs Swat Script GUI v1", "Default")
local tab = DrRayLibrary.newTab("Script", "ImageIdHere")
tab.newButton("swat kill all", "equip swat sniper to work", function()
    while true do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

for i, v in ipairs(game.Players:GetPlayers()) do
    if v.Name ~= player.Name then
        local VH = v.Character and v.Character:FindFirstChildOfClass("Humanoid")
        local VN = v.Character and v.Character:FindFirstChild("UpperTorso")
        
        if VH and VN then
            local args = {
                [1] = VH,
                [2] = VN,
                [3] = 105,
                [4] = Vector3.new(-0.9173938632011414, -0.031094204634428024, 0.39676421880722046),
                [5] = 0,
                [6] = false,
                [7] = false
            }

            game:GetService("Players").LocalPlayer.Character.Sniperswat.GunScript_Server.InflictTarget:FireServer(unpack(args))
        end
    end
end
wait(1)
    end
end)
tab.newButton("kill all criminal sniper", "equip sniper criminal to work", function()
    while true do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

for i, v in ipairs(game.Players:GetPlayers()) do
    if v.Name ~= player.Name then
        local VH = v.Character and v.Character:FindFirstChildOfClass("Humanoid")
        local VN = v.Character and v.Character:FindFirstChild("UpperTorso")
        
        if VH and VN then
            local args = {
                [1] = VH,
                [2] = VN,
                [3] = 105,
                [4] = Vector3.new(-0.9173938632011414, -0.031094204634428024, 0.39676421880722046),
                [5] = 0,
                [6] = false,
                [7] = false
            }

            game:GetService("Players").LocalPlayer.Character.Snipercrim.GunScript_Server.InflictTarget:FireServer(unpack(args))
        end
    end
end
wait(1)
    end
end)
local hook; hook = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
   
    if self.Name == "CallFunction" and method == "InvokeServer" then
        return
    end
   
    return hook(self, ...)
end)

local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/VaultGitos/AbyssHub/main/uwuware.lua"))()
local Window = UILibrary:CreateWindow("Tower Of Misery")
local Main = Window:AddFolder('Main')
Main:AddToggle({text = "God Mode", flag = "god_mode"})
Main:AddToggle({text = "Lazer Collision", flag = "lazer_collision"})
Main:AddToggle({text = "Auto Win", flag = "auto_win"})
local Settings = UILibrary:CreateWindow("Settings")
Settings:AddBind({text = "GUI Toggle", key = Enum.KeyCode.RightShift, callback = function()
    UILibrary:Close()
end})
UILibrary:Init()

while task.wait() do
    pcall(function()
        if UILibrary.flags.auto_win then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.TopSection.Hallway.RewardDoor.CFrame * CFrame.new(-20, 0, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, workspace.TopSection.Hallway.RewardDoor, 0)
            wait()
            firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, workspace.TopSection.Hallway.RewardDoor, 1)
        end
        if UILibrary.flags.god_mode then
            for i, v in pairs(workspace:GetDescendants()) do
                if v.Name == "KillPart" then
                    v.Name = "DisabledKillPart"
                end
            end
        else
            for i, v in pairs(workspace:GetDescendants()) do
                if v.Name == "DisabledKillPart" then
                    v.Name = "KillPart"
                end
            end
        end
       
        if UILibrary.flags.lazer_collision then
            for i, v in pairs(workspace:GetDescendants()) do
                if v.Name == "Kill Part" then
                    v.CanCollide = true
                end
            end
        else
            for i, v in pairs(workspace:GetDescendants()) do
                if v.Name == "Kill Part" then
                    v.CanCollide = false
                end
            end
        end
    end)
end
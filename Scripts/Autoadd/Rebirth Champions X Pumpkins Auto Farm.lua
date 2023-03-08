-- Pumpkins Autofarms For The 'Rebirth Champions X Halloween Event'

_G.Script_Enabled = false -- Here you can enable / disable the script by writing 'True / False'

local config = {
    autofarms = {
        TeleportMethod = {
            Tp = false, -- Enable / Disable the Teleport Auto Farm [True/False]
            TpDelay = 5, -- Here you can Edit the Speed of the Teleport Farm
        },
        FireTouchMethod = {
            FiretouchInterest = false, -- Enable / Disable the FireTouchInterest Auto Farm [True/False]
            FireTouchDelay = 5, -- Here you can Edit the Speed of the FireTouchInterest Farm
        },
    },
}

local remote = game:GetService("ReplicatedStorage").Events
local path = game:GetService("Workspace").Scripts.PumpkinsCollect.Storage
local lplr = game.Players.LocalPlayer
local body = lplr.Character.HumanoidRootPart

warn("Developed by Trix#2794")

remote.WorldBoost:FireServer("Halloween")

while config.autofarms.TeleportMethod.Tp do
        for i, v in pairs(path:GetDescendants()) do
            if v.Name == "main" and v:IsA("MeshPart") then
                if _G.Script_Enabled ~= true then break end
                    body.CFrame = v.CFrame
                task.wait(config.autofarms.TeleportMethod.TpDelay)
            end
        end
    wait()
end
while config.autofarms.FireTouchMethod.FiretouchInterest do
        for i, v in pairs(path:GetDescendants()) do
            if v:IsA("TouchTransmitter") then
                if _G.Script_Enabled ~= true then break end
                    firetouchinterest(v.Parent,body,1)
                    firetouchinterest(v.Parent,body,0)
                task.wait(config.autofarms.FireTouchMethod.FireTouchDelay)
            end
        end
    wait()
end
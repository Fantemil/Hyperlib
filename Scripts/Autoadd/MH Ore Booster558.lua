loadstring(game:HttpGet("https://raw.githubusercontent.com/Adidsus/roblox/main/mhFindTyc.lua?token=GHSAT0AAAAAACQ347D3AUVCPCYUKBDFIKDCZR6H3DA"))()-- auto find base

local workspace = game:GetService("Workspace")
local DroppedParts = workspace.DroppedParts.Factory1 -- change Factory1 to your factory
local tycoons = workspace.Tycoons.Factory1
local CellName = "Anguished Guardian of the Gate" -- change to your cell name


local function beamsize()
    for _, tycoon in ipairs(tycoons:GetChildren()) do
        if tycoon:IsA("Model") then
            local model = tycoon.Model
            local upgradePart = model:FindFirstChild("Upgrade")
            
            if upgradePart then
                upgradePart.Size = upgradePart.Size + Vector3.new(100, 100, 100)
                upgradePart.Transparency = 1
            end
        end
    end
end
beamsize()
local function teleport()
    local cell = tycoons:FindFirstChild(CellName)
    if cell then
        local Model = cell:FindFirstChild("Model")
        if Model then
            local lavaModel = Model:FindFirstChild("Lava")
            if lavaModel then
                beamsize()
                task.wait(2)
                
                local lavaModelCFrame = lavaModel.CFrame
                
                for _, droppedPart in ipairs(DroppedParts:GetChildren()) do
                    droppedPart.CFrame = lavaModelCFrame * CFrame.new(0, 10, 0)
                end
            end
        end
    end
end
while true do
    teleport()
    task.wait(5)
end

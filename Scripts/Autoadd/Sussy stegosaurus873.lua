local hatName = "CuteStegosaurus" -- Ur hat name

local plr = game.Players.LocalPlayer
local chr = plr.Character

local Tool = Instance.new("Tool")
Tool.Name = hatName .. " Item"
Tool.RequiresHandle = false
Tool.Parent = plr.Backpack

local FakeHandle = Instance.new("Part")
FakeHandle.Transparency = 1
FakeHandle.Name = "Handle"
FakeHandle.Parent = Tool

chr:FindFirstChild(hatName).Handle:FindFirstChildOfClass("Weld"):Destroy()

local keep = Instance.new("BodyPosition")
keep.P = 30000
keep.D = 50
keep.Parent = chr:FindFirstChild(hatName).Handle

local ori = Instance.new("BodyGyro")
ori.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
ori.D = 250
ori.P = 6000
ori.Parent = chr:FindFirstChild(hatName).Handle

local SusYum = false

Tool.Activated:Connect(function()
    SusYum = not SusYum
end)

while wait(0) do
    if game.Players.LocalPlayer.Character:FindFirstChild(hatName .. " Item") then
        if SusYum then
            keep.Position = chr.LowerTorso.Position + (chr.LowerTorso.CFrame.LookVector * 0.9)
            wait(0.5)
            keep.Position = chr.LowerTorso.Position + (chr.LowerTorso.CFrame.LookVector * 0.5)
            wait(0.5)
        else
            keep.Position = chr.RightHand.Position
        end
    else 
        keep.Position = chr.Head.Position
    end
    if SusYum then
        ori.CFrame = chr.RightHand.CFrame * CFrame.Angles(math.rad(-90), 0, 0)
    else
        ori.CFrame = chr.RightHand.CFrame * CFrame.Angles(math.rad(-90), math.rad(180), 0)
    end
end
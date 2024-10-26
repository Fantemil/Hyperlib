-- Radio Fling for LGBTQ+ Hangoutð by @UN83991956
-- it migh not be effective but i tried :3
local radio = workspace.Radio.R6.ServerStorage.Radio:FindFirstChild("RadioMesh")
local inf = math.huge
if radio then
    game.Players.LocalPlayer.SimulationRadius = 10000
    local radioAtt = Instance.new("Attachment", radio)
    radio.CanCollide = false
    radio.LocalTransparencyModifier = .5
    local AP = Instance.new("AlignPosition", radio)
    AP.MaxAxesForce = Vector3.new(inf,inf,inf)
    AP.MaxForce = inf
    AP.Responsiveness = 200
    AP.ApplyAtCenterOfMass = true
    AP.Attachment0 = radioAtt
    AP.Attachment1 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.RootAttachment
    local oldPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = radio.CFrame
    task.wait(1)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
    while task.wait(.5) do
        radio.AssemblyAngularVelocity = Vector3.new(99999, 99999, 99999)
    end
else
    warn("RadioMesh not found! Might be a retard threw it to void.")
    game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
end
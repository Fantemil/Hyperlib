_G.Stop = false  --stop the script
local function FOV()
    if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner") then 
        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner"):Destroy()
    end
    local part = Instance.new("Part")
    part.Name = "CameraPositioner"
    part.Anchored = true 
    part.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    part.CanCollide = false
    game:GetService("RunService").RenderStepped:Connect(function()
        part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,-100000000,-100)
    end)
    local camera = workspace.CurrentCamera
    camera.CameraSubject = part
    for _,v in pairs(workspace:GetDescendants()) do 
    if v:IsA("ParticleEmitter") then 
        v:Destroy()
    end 
    if v:IsA("Decal") then v:Destroy() end 
    if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end  
    end 
    if _G.Stop then 
        camera.CameraSubject=game.Players.LocalPlayer.Character.Humanoid
    end 
end 

FOV() 

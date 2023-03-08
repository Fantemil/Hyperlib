game:GetService("ReplicatedStorage").Viewmodels["v_CT Knife"]:Destroy()
game:GetService("ReplicatedStorage").Viewmodels["v_T Knife"]:Destroy()
wait()
local Clone1 = game:GetService("ReplicatedStorage").Viewmodels["v_RedReaver"]:Clone()
Clone1.Parent = game:GetService("ReplicatedStorage").Viewmodels
wait()
game:GetService("ReplicatedStorage").Viewmodels["v_RedReaver"].Name = "v_CT Knife"
game:GetService("ReplicatedStorage").Viewmodels["v_RedReaver"].Name = "v_T Knife"
game:GetService("ReplicatedStorage").Viewmodels["v_CT Knife"].Handle2.Color = Color3.fromRGB(255,255,255)
game:GetService("ReplicatedStorage").Viewmodels["v_CT Knife"].Handle1.Color = Color3.fromRGB(255,255,255)

-- cbre has protection against stuff like game.Workspace, it doesn't exist, so i made a simple function to bypass this horrific check.
function get_protected_service(n)
    return game:GetService(n)    
end

while task.wait() do
    if get_protected_service("Workspace").CurrentCamera:FindFirstChild("Arms") and get_protected_service("Workspace").CurrentCamera.Arms:FindFirstChild("Handle1") and get_protected_service("Workspace").CurrentCamera.Arms:FindFirstChild("Handle2") then
     get_protected_service("Workspace").CurrentCamera.Arms.Handle2.Color = Color3.fromHSV(tick()%5/5,1,1)
        get_protected_service("Workspace").CurrentCamera.Arms.Handle1.Color = Color3.fromHSV(tick()%5/5,1,1)
        
    end

end
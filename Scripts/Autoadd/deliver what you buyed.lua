local Client = game:GetService("Players").LocalPlayer
local GetPlot = function() return getrenv()._G.Plot end
local GetLoadingDock = function() 
    local Plot = tostring(GetPlot())
    local DockNum = string.gsub(Plot, "Plot_", "")
    return game:GetService("Workspace").Map.Landmarks["Loading Dock"]["LoadingDock_" .. DockNum].LoadingSpot
end

local GetVehicle; GetVehicle = function()
    for _, v in next, workspace.PlayerVehicles:GetChildren() do
        if v.Name:match(Client.Name) then
            return v 
        end
    end
    game:GetService("ReplicatedStorage").Remotes.SpawnVehicle:InvokeServer(1, Client.Character.HumanoidRootPart.CFrame * CFrame.new(10, 5, 0))
    task.wait()
    return GetVehicle()
end

local LoadCar = function()
    local Vehicle = GetVehicle()
    Vehicle:SetPrimaryPartCFrame(GetLoadingDock().CFrame)
    Client.Character:SetPrimaryPartCFrame(Vehicle.PrimaryPart.CFrame * CFrame.new(5, 0, 0))
    task.wait(.5)
    game:GetService("ReplicatedStorage").Remotes.LoadVehicle:InvokeServer()
end

local UnloadCar = function()
    for i, v in next, GetPlot():GetDescendants() do
        if v.Name:lower():match("door") then 
            if v:FindFirstChild("Handle") and v:FindFirstChild("Base") then
                local Vehicle = GetVehicle()
                Vehicle:SetPrimaryPartCFrame(CFrame.new(v.Base.Position + Vector3.new(10, 6, 10)))
                Client.Character:SetPrimaryPartCFrame(Vehicle.PrimaryPart.CFrame * CFrame.new(5, 0, 0))
                task.wait(.5)
                game:GetService("ReplicatedStorage").Remotes.UnloadVehicle:InvokeServer()
            end
        end
    end
end

local GetBoughtStuff = function()
    LoadCar()
    task.wait()
    UnloadCar()
end

GetBoughtStuff()
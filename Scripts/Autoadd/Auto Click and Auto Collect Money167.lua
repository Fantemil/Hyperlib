ANTIAFK = game.Players.LocalPlayer.Idled:connect(function()
					 game:FindService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					 task.wait(1)
					 game:FindService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					 end)			 
Players = game:GetService("Players")                 
local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		Players.LocalPlayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
    -- ^^^ Anti afk stuff
local lol
for i,v in pairs(workspace.Tycoons.Tycoons:GetDescendants()) do 
    if v.Name == "Owner" and v.Value == game:GetService("Players").LocalPlayer then
        for i,v in pairs(v.Parent:GetDescendants()) do
            if v:IsA("ClickDetector") and v.Parent.Name == "Clicker" then
                lol = v
            end
        end
    end
end
local tp
for i,v in pairs(workspace.Tycoons.Tycoons:GetDescendants()) do 
    if v.Name == "Owner" and v.Value == game:GetService("Players").LocalPlayer then
        for i,v in pairs(v.Parent:GetDescendants()) do
            if v.Name == "Giver" then
                tp = v
            end
        end
    end
end
if getgenv().lol2 then
    getgenv().lol2 = false
    return
else
    getgenv().lol2 = true
end
getgenv().lol2 = true
task.spawn(function()
    while true do wait()
        if not getgenv().lol2 then
            break
        end
        fireclickdetector(lol)
    end
end)
task.spawn(function()
    while true do wait(15)
        if not getgenv().lol2 then
            break
        end
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = tp.CFrame + Vector3.new(0,5,0)
    end
end)
task.spawn(function()
    while true do wait(15)
        if not getgenv().lol2 then
            break
        end
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = tp.CFrame + Vector3.new(0,5,0)
    end
end)


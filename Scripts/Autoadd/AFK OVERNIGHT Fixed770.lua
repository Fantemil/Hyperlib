

local m = "YourMainAccountName"
local a = "Youraltname"

repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer

wait(5)

coroutine.wrap(function()
pcall(function()
    local function noclip()
	for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") and v.CanCollide == true then
			v.CanCollide = false
		end
	end
end
noclipE = game:GetService("RunService").Stepped:Connect(noclip)

if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        antifall.Velocity = Vector3.new(0,0,0)
       
	end
	end)
	end)()
	
coroutine.wrap(function()
	while task.wait(1) do pcall(function()
		if not game.Players.LocalPlayer.Backpack:FindFirstChild("Default") then
			firetouchinterest(game:GetService("Workspace").Lobby.Teleport2, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
			wait(0.01)
			firetouchinterest(game:GetService("Workspace").Lobby.Teleport2, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
		end
		end)
	end
end)()
 coroutine.wrap(function()
	if not game.Workspace:FindFirstChild("wtfman") then
		local yea = Instance.new("Part", game.Workspace)
		yea.Name = "wtfman"
		yea.CFrame = CFrame.new(500,0,1780)
		yea.Anchored = true
		yea.Size = Vector3.new(5,5,5)
	end
 end)()
coroutine.wrap(function()

game:GetService("RunService").Heartbeat:Connect(function()
if game.Players.LocalPlayer.Name == a then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.wtfman.CFrame
end

if game.Players.LocalPlayer.Name == m then

	
	
    for i,v in next, game.Players:GetPlayers() do
        if v.Name == a then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,-12,0)
            local args = {
                [1] = v.Character:FindFirstChild("Right Arm")
            }
            
            game:GetService("ReplicatedStorage").b:FireServer(unpack(args))

        end
    end
end
end)
end)()
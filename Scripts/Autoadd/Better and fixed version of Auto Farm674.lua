-- Get the LocalPlayer
local player = game.Players.LocalPlayer

-- Function to find the floor
local function findFloor()
    -- Create a ray from the player's position downwards
    local ray = Ray.new(player.Character.HumanoidRootPart.Position, Vector3.new(0, -1, 0) * 100)
    
    -- Cast the ray and get the hit result
    local hitPart, _ = workspace:FindPartOnRay(ray, player.Character, false, true)
    
    -- Check if a part was hit and return its name
    if hitPart then
        return hitPart
    end
    
    return nil
end
local hiii
-- Print the floor part continuously
local floorPartName = findFloor()
if floorPartName then
    hiii = floorPartName.Parent.Parent
else
    print("No floor detected.")
end
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
    -- idk why u want to auto farm even tho there is auto play lol maybe js for anti afk?
getgenv().whaterv = not whaterv -- just execute to toggle
spawn(function()
    while wait() do
        if not getgenv().whaterv then break end
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hiii.AutoCollect.CFrame -- collect yarn pos
        wait(500) -- long wait time bc why do fast when collecting yarn
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hiii.UpgradePads.Deposit.Button.CFrame + Vector3.new(0,5,0) -- deposit yarn pos
        wait(2)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hiii.UpgradePads.ClaimUGC.Button.CFrame + Vector3.new(0,5,0) -- claim ugc pos
        wait(4)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hiii.UpgradePads.DepositUpgrade1.Button.CFrame + Vector3.new(0,5,0) -- +1 per sec pos
        wait(25)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hiii.UpgradePads.BuyDropper.Button.CFrame + Vector3.new(0,5,0) -- Buy kitten pos
        wait(14)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hiii.UpgradePads.Merge.Button.CFrame + Vector3.new(0,5,0) -- merge pos
        wait(12)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36, 65, 2656) + Vector3.new(0,5,0) -- finished obby pos
		wait(4)
        end
	end)
-- Literally auto farms everything i think

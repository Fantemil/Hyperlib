-- Ranxware | FE Invisibility Module | Version: Beta V1 --

local InvisibilitySettings = {
	TransparentClone = true, -- Makes the clone's body transparent
	QuickMode = true, -- Forces module to be quicker
	ChatNotifier = true, -- Makes notifications in chat (new chat version only)
	Fly = false, -- Makes you fly when invisible
	FlySpeed = 50, -- Optimizes fly speed
	NoClip = false, -- Makes you noclip when invisible
}


--[ PLEASE DO NOT TOUCH ANYTHING BELOW IF YOU DON'T KNOW WHAT YOU'RE DOING!! ]--

local noclipCon = nil
local flyCon = nil

if game.TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
	InvisibilitySettings.ChatNotifier = false
end


local lplr = game.Players.LocalPlayer
local char = lplr.Character
char.Archivable = true

print("Starting cloning module...")
if InvisibilitySettings.ChatNotifier then
	game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Starting cloning phase...")
end

workspace.CurrentCamera.CameraSubject = nil
local oldChar = char or lplr.Character
local oldCFrame = char:GetPivot()

task.wait(InvisibilitySettings.QuickMode and .1 or 1.5)

-- old char protection --
oldChar:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(1e5,1e6,1e5)

task.wait(.1)

oldChar:FindFirstChild("HumanoidRootPart").Anchored = true

task.wait(.5)

local clone = char:Clone()
clone.Parent = workspace
lplr.Character = clone
workspace.CurrentCamera.CameraSubject = clone:FindFirstChildOfClass("Humanoid")
clone:FindFirstChild("HumanoidRootPart").CFrame = oldCFrame
clone:FindFirstChild("HumanoidRootPart").Anchored = false

task.wait()

if InvisibilitySettings.TransparentClone then
	for _,i in next,clone:GetDescendants() do
		if i:IsA("BasePart") and i.Name ~= "HumanoidRootPart" then
			i.Transparency = 0.5
		end
	end
end

if clone:FindFirstChild("Animate") then
	clone.Animate.Disabled = true
	task.wait()
	clone.Animate.Disabled = false
end

if InvisibilitySettings.Fly then
	if InvisibilitySettings.ChatNotifier then
		game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Stored fly is enabled!")
		game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Use Space and LeftCtrl to go up and down...")
	end
	local vel = Instance.new("BodyVelocity",clone:FindFirstChild("HumanoidRootPart"))
	vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	flyCon = game:GetService("RunService").RenderStepped:Connect(function()
		vel.Velocity =  clone:FindFirstChild("Humanoid").MoveDirection * InvisibilitySettings.FlySpeed
		if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
			vel.Velocity = Vector3.new(vel.Velocity.X,-InvisibilitySettings.FlySpeed,vel.Velocity.Z)
		elseif game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
			vel.Velocity = Vector3.new(vel.Velocity.X,InvisibilitySettings.FlySpeed,vel.Velocity.Z)
		end
	end)
end

if InvisibilitySettings.NoClip then
	if InvisibilitySettings.ChatNotifier then
		game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Stored noclip is enabled!")
	end
	noclipCon = game:GetService("RunService").Stepped:Connect(function()
		for _, child in next,clone:GetDescendants() do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end)
end

clone:FindFirstChildOfClass("Humanoid").DisplayName = clone.Name.." [INVISIBLE]"

print("Cloning module success!")
if InvisibilitySettings.ChatNotifier then
	game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | You are now invisible!")
	game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Reset to return normal")
end

task.wait()

local function revert()
	task.wait()
	if InvisibilitySettings.ChatNotifier then
		game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Reverting to normal character...")
	end
	local clonePos = clone:GetPivot()
	task.wait(InvisibilitySettings.QuickMode and .2 or .5)
	if flyCon then
		flyCon:Disconnect()
	end
	if noclipCon then
		noclipCon:Disconnect()
	end
	task.wait(.1)
	clone:Destroy()
	workspace.CurrentCamera.CameraSubject = oldChar:FindFirstChildOfClass("Humanoid")
	task.wait()
	oldChar:FindFirstChild("HumanoidRootPart").Anchored = false
	lplr.Character = oldChar
	lplr.Character:PivotTo(clonePos)
	task.wait(1)
	return
end

char = clone
char:FindFirstChildOfClass("Humanoid").Died:Connect(function()
	revert()
end)


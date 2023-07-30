--[[
Made by rouxhaver

Required Hats:
https://www.roblox.com/catalog/2956239660/Belle-Of-Belfast-Long-Red-Hair
https://www.roblox.com/catalog/301818806/Serenas-Hair
https://www.roblox.com/catalog/62724852/Chestnut-Bun
https://www.roblox.com/catalog/617605556/Medieval-Hood-of-Mystery

because of recent news the paid version of this script will be delayed
]]
lp = game:GetService("Players").LocalPlayer
char = lp.Character

lp.Character = nil
lp.Character = char

wait(game:GetService("Players").RespawnTime+.3)

char.Humanoid.Health = 0

local camera = workspace.CurrentCamera
local UserInputService = game:GetService("UserInputService")

local Center = Instance.new("Part",workspace)
Center.Anchored = true
Center.Transparency = 1

current_position = game:GetService("Players").LocalPlayer.Character:WaitForChild("Head").Position

camera.CameraSubject = Center

speed = 0

coroutine.wrap(function()
	while wait() do
		if UserInputService:IsKeyDown(Enum.KeyCode.D) then
			current_position += camera.CFrame.RightVector * speed
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.A) then
			current_position += camera.CFrame.RightVector * -speed
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.W) then
			current_position += camera.CFrame.LookVector * speed
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.S) then
			current_position += camera.CFrame.LookVector * -speed
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.E) then
			current_position += camera.CFrame.UpVector * speed
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.Q) then
			current_position += camera.CFrame.UpVector * -speed
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then do
				speed = 1.5
			end else
			speed = 0.75
		end
		Center.Position = current_position
	end
end)()

bob_offset = 0
bob_change = 0.02

wing_angle = 0
wa_change = 3

body = Instance.new("Part",workspace)
body.Size = Vector3.new(1,1,1)
body.Anchored = true
body.Transparency = 1

head = Instance.new("Part",workspace)
head.Size = Vector3.new(1,1,1)
head.Anchored = true
head.Transparency = 1

lwing = Instance.new("Part",workspace)
lwing.Size = Vector3.new(1,1,1)
lwing.PivotOffset = CFrame.new(2,0,0)
lwing.Anchored = true
lwing.Transparency = 1

rwing = Instance.new("Part",workspace)
rwing.Size = Vector3.new(1,1,1)
rwing.PivotOffset = CFrame.new(-2,0,0)
rwing.Anchored = true
rwing.Transparency = 1

coroutine.wrap(function()
	while task.wait() do
		if bob_offset > 0 then
			bob_change = -bob_change
		end
		if bob_offset < -1.5 then
			bob_change = -bob_change
		end
		bob_offset += bob_change

		if wing_angle > 24 then
			wa_change = -wa_change
		end
		if wing_angle < -24 then
			wa_change = -wa_change
		end
		wing_angle += wa_change

		body.CFrame = (Center.CFrame + Vector3.new(0,bob_offset,0)) * camera.CFrame.Rotation
		head.CFrame = body.CFrame + body.CFrame.LookVector
		lwing:PivotTo(body.CFrame * CFrame.Angles(0,0,math.rad(wing_angle)))
		rwing:PivotTo(body.CFrame * CFrame.Angles(0,0,math.rad(-wing_angle)))
	end
end)()

function Move(part, cframe)
	part.Velocity = Vector3.new(0,30,0)
	local tween = game:GetService("TweenService"):Create(part, TweenInfo.new(0), {CFrame = cframe})
	tween:Play()
end

vbody = char["Kate Hair"].Handle
vhead = char["MediHood"].Handle
vlwing = char["LongRedHair"].Handle
vrwing = char["LongHairBeanie"].Handle

while task.wait() do
	Move(vbody, body.CFrame)
	Move(vhead, head.CFrame)
	Move(vrwing, (rwing.CFrame- rwing.CFrame.RightVector * .3) * CFrame.Angles(math.rad(90),0,math.rad(90)))
	Move(vlwing, (lwing.CFrame - lwing.CFrame.RightVector * -.3) * CFrame.Angles(math.rad(-90),0,math.rad(-90)))
end
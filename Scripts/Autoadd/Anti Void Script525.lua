local fpsdiv = 5 -- kinda like an fps cap but setting this higher may result in you falling in the void
local destroyheight = workspace.FallenPartsDestroyHeight
workspace.FallenPartsDestroyHeight = -50000
local dhoffset = 5
local dhto = 25 
local sentnotif = false 
local destroyheightnew = destroyheight + dhoffset
local localplr = game.Players.LocalPlayer
local connectsextra = {}
local charcframe = nil
local tpcframe = nil
local stopped = false
function dochar(character)
	coroutine.wrap(function()
		repeat task.wait() print("waiting for humanoid") until character:FindFirstChildWhichIsA("Humanoid")
		local hum = character:FindFirstChildWhichIsA("Humanoid")
		local state = hum:GetState()
		table.insert(connectsextra,hum.StateChanged:Connect(function(old,new)
			state = new
		end))
		local oldstate = nil
		while hum ~= nil and hum.Parent ~= nil and not stopped do
			task.wait()
			if state ~= oldstate and (state ~= Enum.HumanoidStateType.Jumping and state ~= Enum.HumanoidStateType.Freefall) or (state == Enum.HumanoidStateType.Running or state == Enum.HumanoidStateType.Landed) then
				tpcframe = charcframe
			end
			oldstate = state
		end
	end)()
end
local character = game.Players.LocalPlayer.Character
if getgenv().deletescript123456lol69 ~= nil then
	getgenv().deletescript123456lol69()
end
local characteradded = localplr.CharacterAdded:Connect(function(character2)
	character = character2
	dochar(character2)
end)
dochar(character)
local startergui = game:GetService("StarterGui")
function prompt(message,yesorno,yesfunc)
	pcall(function()
		if yesorno ~= nil and yesfunc ~= nil then
			local bindfunc = Instance.new("BindableFunction")
			bindfunc.OnInvoke = function(buttonname)
				if buttonname == "Yes" then
					yesfunc()
					sentnotif = false
				end
			end
			startergui:SetCore("SendNotification",{
				Title = "Notification",
				Text = message,
				Duration = 5,
				Callback = bindfunc,
				Button1 = "Yes",
				Button2 = "No"
			})
			wait(5)
			sentnotif = false
		else
			startergui:SetCore("SendNotification",{
				Title = "Notification",
				Text = message,
				Duration = 5
			})
		end
	end)
end
function fixchar(part)
	if character then
		local piv = character:GetPivot()
		character:PivotTo(CFrame.new(piv.Position.X,destroyheight+dhto+character:GetExtentsSize().Y,piv.Position.Z))
	end
	if part then
		part.Velocity = Vector3.new(0,0,0)
		if character then
			for i,v in pairs(character:GetChildren()) do
				if v:IsA("BasePart") then
					v.Velocity = Vector3.new(0,0,0)
				end
			end
		end
	end
	if tpcframe ~= nil and sentnotif == false then
		sentnotif = true
		prompt("Teleport back to last touched (buggy)",true,function()
			if character then
				character:PivotTo(tpcframe)
			end
			if part then
				part.Velocity = Vector3.new(0,0,0)
			end
		end)
	end
end
local stepped = game:GetService("RunService").Stepped:Connect(function()
	if character ~= nil and character:FindFirstChildWhichIsA("BasePart") then
		local part = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChildWhichIsA("BasePart")
		local cfr = (character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart.CFrame) or character:GetPivot()
		charcframe = cfr
		if cfr.Position.Y < destroyheightnew then
			fixchar(part)
		end
		local partvel = part.Velocity
		if (partvel.Y/fpsdiv) + part.Position.Y < destroyheightnew then
			fixchar(part)
		end
	end
end)
prompt("Anti-Void Loaded!")
getgenv().deletescript123456lol69 = function()
	workspace.FallenPartsDestroyHeight = destroyheight
	characteradded:Disconnect()
	stepped:Disconnect()
	for i,v in pairs(connectsextra) do
		v:Disconnect()
	end
	stopped = true
end
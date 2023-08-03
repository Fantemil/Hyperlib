--[[
CREDITS:
UI Library: Inori & wally
Script: goosebetter
]]

repeat
	task.wait()
until game:IsLoaded()

local start = tick()
local client = game:GetService('Players').LocalPlayer;
local executor = identifyexecutor and identifyexecutor() or 'Unknown'

local UI = loadstring(game:HttpGet('https://raw.githubusercontent.com/bardium/LinoriaLib/main/Library.lua'))()
local themeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/bardium/LinoriaLib/main/addons/ThemeManager.lua'))()

local metadata = loadstring(game:HttpGet('https://raw.githubusercontent.com/bardium/gods-will/main/metadata.lua'))()
local httpService = game:GetService('HttpService')

local runService = game:GetService('RunService')
local repStorage = game:GetService('ReplicatedStorage')
local virtualInputManager = game:GetService("VirtualInputManager")
local tpService = game:GetService('TeleportService')

do
	if shared._unload then
		pcall(shared._unload)
	end

	function shared._unload()
		if shared._id then
			pcall(runService.UnbindFromRenderStep, runService, shared._id)
		end

		UI:Unload()

		for i = 1, #shared.threads do
			coroutine.close(shared.threads[i])
		end

		for i = 1, #shared.callbacks do
			task.spawn(shared.callbacks[i])
		end
	end

	shared.threads = {}
	shared.callbacks = {}

	shared._id = httpService:GenerateGUID(false)
end

local function getGlobalWalkSpeed()
	local allWalkSpeeds = {}

	for _, v in ipairs(game.Players:GetPlayers()) do
		if v ~= client and v.Character and v.Character:FindFirstChildOfClass('Humanoid') then
			local humanoid = v.Character:FindFirstChildOfClass('Humanoid')
			if tonumber(humanoid.WalkSpeed) > 0 then
				table.insert(allWalkSpeeds, tonumber(humanoid.WalkSpeed))
			end
		end
	end

	local walkSpeedCounts = {}
	for _, walkSpeed in ipairs(allWalkSpeeds) do
		if walkSpeedCounts[walkSpeed] then
			walkSpeedCounts[walkSpeed] = walkSpeedCounts[walkSpeed] + 1
		else
			walkSpeedCounts[walkSpeed] = 1
		end
	end

	local mostCommonWalkSpeed = 4
	local highestCount = 0
	for walkSpeed, count in pairs(walkSpeedCounts) do
		if count > highestCount then
			mostCommonWalkSpeed = walkSpeed
			highestCount = count
		end
	end
	return tonumber(mostCommonWalkSpeed)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if ((Toggles.DarumaGameFreeze) and (Toggles.DarumaGameFreeze.Value)) then
				if workspace:FindFirstChild('DarumaGameStart') then
					if (((not Toggles.CheckIfInGame) or (not Toggles.CheckIfInGame.Value))) or workspace.DarumaGameCutsceneStop1.Value == true then
						if workspace:FindFirstChild('NotLooking') and client.Character and client.Character:FindFirstChildOfClass('Humanoid') then
							local humanoid = client.Character:FindFirstChildOfClass('Humanoid')
							if workspace.NotLooking.Value == false then
								task.wait(Options.FreezeDelay.Value)
								humanoid.WalkSpeed = 0
								UI:Notify('Stop moving or you will die. Do not hold any keys.', 3)
								repeat task.wait() until workspace.NotLooking.Value == true or ((not Toggles.DarumaGameFreeze) or (not Toggles.DarumaGameFreeze.Value)) or workspace.DarumaGameStart.Value == false
							else
								if client.Character and client.Character:FindFirstChildOfClass('Humanoid') then
									if workspace.DarumaGameStart.Value == true then
										UI:Notify('You can move again.', 3)
										client.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getGlobalWalkSpeed()
										repeat task.wait() until workspace.NotLooking.Value == false or ((not Toggles.DarumaGameFreeze) or (not Toggles.DarumaGameFreeze.Value)) or workspace.DarumaGameStart.Value == false
										if client.Character and client.Character:FindFirstChildOfClass('Humanoid') then
											client.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getGlobalWalkSpeed()
										end
									else
										UI:Notify("Daruma game is over hasn't started.", 3)
										Toggles.DarumaGameFreeze:SetValue(false)
										if client.Character and client.Character:FindFirstChildOfClass('Humanoid') then
											client.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getGlobalWalkSpeed()
										end
									end
								end
							end
						end
					else
						UI:Notify("Daruma game hasn't started", 3)
						Toggles.DarumaGameFreeze:SetValue(false)
						if client.Character and client.Character:FindFirstChildOfClass('Humanoid') then
							client.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getGlobalWalkSpeed()
						end
					end
				end
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if ((Toggles.HighlightCorrectDoors) and (Toggles.HighlightCorrectDoors.Value)) then
				if workspace:FindFirstChild('CorrectDoor') and workspace:FindFirstChild('MainRooms') and workspace.MainRooms:FindFirstChild('DiamondPlateRooms', true) then
					local diamondPlateRooms = workspace.MainRooms:FindFirstChild('DiamondPlateRooms', true)
					for _, v in ipairs(diamondPlateRooms:GetChildren()) do
						if v:FindFirstChild('ActualDoor') and v.ActualDoor:FindFirstChild('Door') and v.ActualDoor.Door:FindFirstChildOfClass('Decal') then
							if v.ActualDoor.Door:FindFirstChildOfClass('Decal').Texture == workspace.CorrectDoor.Value then
								if not v.ActualDoor:FindFirstChild('correctDoorHighlight') then
									local correctDoorHighlight = Instance.new('BoxHandleAdornment', v.ActualDoor)
									correctDoorHighlight.Name = 'correctDoorHighlight'
									correctDoorHighlight.Adornee = v.ActualDoor
									correctDoorHighlight.AlwaysOnTop = true
									correctDoorHighlight.ZIndex = 0
									correctDoorHighlight.Size = v.ActualDoor:GetExtentsSize()
									correctDoorHighlight.Transparency = 0.5
									correctDoorHighlight.Color = BrickColor.new('Lime green')
								end
							else
								if v.ActualDoor:FindFirstChild('correctDoorHighlight') then
									v.ActualDoor.correctDoorHighlight:Destroy()
								end
							end
						end
					end
				end
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if ((Toggles.TPToCorrectDoor) and (Toggles.TPToCorrectDoor.Value)) then
				if workspace:FindFirstChild('CorrectDoor') and workspace:FindFirstChild('MainRooms') and workspace.MainRooms:FindFirstChild('DiamondPlateRooms', true) then
					if (((not Toggles.CheckIfInGame) or (not Toggles.CheckIfInGame.Value))) or workspace.DoorsGameOn.Value == true then
						local diamondPlateRooms = workspace.MainRooms:FindFirstChild('DiamondPlateRooms', true)

						for _, v in ipairs(diamondPlateRooms:GetChildren()) do
							if v:FindFirstChild('ActualDoor') and v:FindFirstChild('Slider') and v.ActualDoor:FindFirstChild('Door') and v.ActualDoor.Door:FindFirstChildOfClass('Decal') then
								if v.ActualDoor.Door:FindFirstChildOfClass('Decal').Texture == workspace.CorrectDoor.Value then
									client.Character:PivotTo(v.Slider:GetPivot() * CFrame.new(0, 5, 0))
								end
							end
						end
					else
						UI:Notify("Doors game is over or hasn't started.", 3)
						Toggles.TPToCorrectDoor:SetValue(false)
					end
				end
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if ((Toggles.HighlightCorrectChairs) and (Toggles.HighlightCorrectChairs.Value)) then
				if workspace:FindFirstChild('MusicalChairsMap') and workspace.MusicalChairsMap:FindFirstChild('Chairs') then
					for _, v in ipairs(workspace.MusicalChairsMap.Chairs:GetChildren()) do
						if v:FindFirstChild('school-room-chair') and v:FindFirstChild('school-room-chair'):FindFirstChild('Meshes/Grime desk_Chair wood.001') then
							local mainPart = v:FindFirstChild('school-room-chair'):FindFirstChild('Meshes/Grime desk_Chair wood.001')
							mainPart.BrickColor = BrickColor.new('Lime green')
							mainPart.Material = Enum.Material.Neon
							mainPart.Transparency = 0
							mainPart.TextureID = ''
							mainPart.Size = Vector3.new(3, 3, 3)
						end
					end
				end
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if ((Toggles.VoteMostPopular) and (Toggles.VoteMostPopular.Value)) then
				if (((not Toggles.CheckIfInGame) or (not Toggles.CheckIfInGame.Value))) or workspace:FindFirstChild('VOTINGON') and workspace.VOTINGON.Value == true then
					local highestVotes = 0
					local mostPopular = nil
					for _, v in ipairs(game.Players:GetPlayers()) do
						if v ~= client then
							if mostPopular == nil then
								mostPopular = v
							end
							if tonumber(v:GetAttribute('Votes')) and tonumber(v:GetAttribute('Votes')) > highestVotes then
								mostPopular = v
								highestVotes = tonumber(v:GetAttribute('Votes'))
							end
						end
					end
					if mostPopular ~= nil then
						repStorage.Remotes.VotePersonOut:FireServer(mostPopular.Name)
					end
				else

				end
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if ((Toggles.DeleteChairAura) and (Toggles.DeleteChairAura.Value)) then
				local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
				if sethidden then
					if workspace:FindFirstChild('MusicalChairsMap') and workspace.MusicalChairsMap:FindFirstChild('Chairs') and workspace.MusicalChairsMap:FindFirstChild('FakeChairs') then
						for _, chair in pairs(workspace.MusicalChairsMap.Chairs:GetDescendants()) do
							if chair:FindFirstChild('Seat') and chair.Seat.Anchored == false and not chair.Seat:FindFirstChild('BodyPosition') then
								local ForceInstance = Instance.new('BodyPosition')
								ForceInstance.Parent = chair.Seat
								ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								ForceInstance.Position = Vector3.new(1500, 0, 1500)
							end
						end
						for _, chair in pairs(workspace.MusicalChairsMap.FakeChairs:GetDescendants()) do
							if chair:FindFirstChild('Seat') and chair.Seat.Anchored == false and not chair.Seat:FindFirstChild('BodyPosition') then
								local ForceInstance = Instance.new('BodyPosition')
								ForceInstance.Parent = chair.Seat
								ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								ForceInstance.Position = Vector3.new(1500, 0, 1500)
							end
						end
						task.wait()
					end
				else
					UI:Notify('Incompatible Exploit: Your exploit does not support this command (missing sethiddenproperty)', 5)
					Toggles.DeleteChairAura:SetValue(false)
				end
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if ((Toggles.RequestChairAura) and (Toggles.RequestChairAura.Value)) then
				repStorage.RequestChair:FireServer()
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if ((Toggles.AntiPotato) and (Toggles.AntiPotato.Value)) then
				if workspace:FindFirstChild('Effects') and workspace.Effects:FindFirstChild('PotatoBomb') then
					if workspace.Effects.PotatoBomb:FindFirstChild('PotatoWeld') and workspace.Effects.PotatoBomb.PotatoWeld.Part0 ~= nil and workspace.Effects.PotatoBomb.PotatoWeld.Part0:IsDescendantOf(client.Character) then
						for _, v in ipairs(game.Players:GetPlayers()) do
							if v ~= client and v.Character ~= nil and v.Character:FindFirstChild('Humanoid') and not v.Character:FindFirstChild('Immune') and not v.Character:FindFirstChild('Ragdoll') then
								local currentPivot = client.Character:GetPivot()
								repeat
									client.Character:PivotTo(v.Character:GetPivot())
									task.wait()
								until (not workspace.Effects:FindFirstChild('PotatoBomb')) or (not workspace.Effects.PotatoBomb:FindFirstChild('PotatoWeld')) or (workspace.Effects.PotatoBomb.PotatoWeld.Part0 == nil) or (not workspace.Effects.PotatoBomb.PotatoWeld.Part0:IsDescendantOf(client.Character)) or ((not Toggles.AntiPotato) or (not Toggles.AntiPotato.Value))
								client.Character:PivotTo(currentPivot)
							end
						end
					end
				end
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

do
	local thread = task.spawn(function()
		while true do
			task.wait()
			if client.Character ~= nil then
				
			end
		end
	end)
	table.insert(shared.callbacks, function()
		pcall(task.cancel, thread)
	end)
end

local function addRichText(label)
	label.TextLabel.RichText = true
end

local Window = UI:CreateWindow({
	Title = string.format('gods will - version %s | updated: %s', metadata.version, metadata.updated),
	AutoShow = true,

	Center = true,
	Size = UDim2.fromOffset(550, 567),
})

local Tabs = {}
local Groups = {}

Tabs.Main = Window:AddTab('Main')
Tabs.UISettings = Window:AddTab('UI Settings')

Groups.Legit = Tabs.Main:AddLeftGroupbox('Legit')
Groups.Legit:AddToggle('DarumaGameFreeze', { Text = 'Freeze During Daruma Game' })
Groups.Legit:AddSlider('FreezeDelay',   { Text = 'Freeze Delay', Min = 0, Max = 0.65, Default = 0.25, Suffix = 's', Rounding = 3, Compact = true })

local DependencySlider = Groups.Legit:AddDependencyBox();
addRichText(DependencySlider:AddLabel('<font color="#ff430a">Freeze Delay greater than 0.45s can get you killed.</font>', true))

DependencySlider:SetupDependencies({
	{ Options.FreezeDelay, 0.45 }
});

Groups.Legit:AddToggle('HighlightCorrectDoors', { Text = 'Highlight Correct Doors' })
Groups.Legit:AddToggle('HighlightCorrectChairs', { Text = 'Highlight Correct Chairs' })
Groups.Legit:AddToggle('VoteMostPopular', { Text = 'Vote Most Popular' })
Groups.Legit:AddButton('Finish Sled Game', function()
	pcall(function()
		if workspace:FindFirstChild('FinishLine') and workspace:FindFirstChild('SledGameInstructionsStop') and ((((not Toggles.CheckIfInGame) or (not Toggles.CheckIfInGame.Value))) or workspace.SledGameInstructionsStop.Value == true) then
			for _, v in ipairs(client.Character.PrimaryPart:GetChildren()) do
				if v:IsA('BodyVelocity') or v:IsA('BodyGyro') then
					v:Destroy()
				end
			end
			task.wait(.1)
			for _, v in ipairs(workspace:GetChildren()) do
				if v.Name == 'FinishLine' and v:IsA('BasePart') then
					client.Character:PivotTo(v:GetPivot() * CFrame.new(math.random(-40, 40), 8, math.random(50, 100)))
				end
			end
			task.wait(.1)
			client:PivotTo(CFrame.new(client:GetPivot(), Vector3.new(client:GetPivot().X, client:GetPivot().Y, 251)))
		else
			UI:Notify("Sled game is over or hasn't started.", 3)
		end
	end)
end)

Groups.Misc = Tabs.Main:AddRightGroupbox('Misc')
Groups.Misc:AddToggle('CheckIfInGame', { Text = 'Check if in game', Default = true })
local collectingCoins = false
Groups.Misc:AddButton('Collect All Coins', function()
	if not collectingCoins then
		collectingCoins = true
		pcall(function()
			local oldPivot = client.Character:GetPivot()
			local coins = workspace:FindFirstChild('Coins')

			if coins then
				for _, v in ipairs(coins:GetChildren()) do
					if v:IsA('BasePart') then
						client.Character:PivotTo(v:GetPivot())
						task.wait()
					end
				end
			end
			client.Character:PivotTo(oldPivot)
		end)
		collectingCoins = false
	else
		UI:Notify('Collecting coins, please wait.', 1)
	end
end)
Groups.Misc:AddButton('Fix Speed', function()
	pcall(function()
		client.Character.Humanoid.WalkSpeed = tonumber(getGlobalWalkSpeed())
	end)
end)

Groups.Blatant = Tabs.Main:AddRightGroupbox('Blatant')
Groups.Blatant:AddButton('Finish Daruma Game', function()
	pcall(function()
		local button = workspace.DarumaGameMap.GameFunctions.DarumaDoll.ActualThing.Button
		if button:FindFirstChildOfClass('ProximityPrompt') then
			local prompt = button:FindFirstChildOfClass('ProximityPrompt')
			local currentPivot = client.Character:GetPivot()
			client.Character:PivotTo(currentPivot * CFrame.new(0, -100, 0))
			task.wait(.5)
			local parts = {}
			for _, v in ipairs(client.Character:GetDescendants()) do
				if v:IsA('BasePart') then
					table.insert(parts, v)
					v.CanCollide = false
				end
			end
			client.Character:PivotTo(workspace.DarumaGameMap.GameFunctions.DarumaDoll:GetPivot() * CFrame.new(0, -3, 2))
			UI:Notify('Make sure your character is facing the daruma doll button', 3)
			repeat
				prompt.Enabled = true
				prompt.RequiresLineOfSight = false
				task.wait()
				client.Character:PivotTo(workspace.DarumaGameMap.GameFunctions.DarumaDoll:GetPivot() * CFrame.new(0, -3, 2), button.Position)
				virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, nil)
				virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, nil)
				task.wait()
			until workspace.DarumaGameStart.Value == false or not button:FindFirstChildOfClass('ProximityPrompt')
			for _, v in ipairs(parts) do
				if v:IsA('BasePart') and v:IsDescendantOf(client.Character) then
					v.CanCollide = true
				end
			end
			task.wait()
			client.Character:PivotTo(currentPivot)
		end
	end)
end)
Groups.Blatant:AddToggle('TPToCorrectDoor', { Text = 'TP Correct Door Room' })
Groups.Blatant:AddButton('Disappear From Monkey Boss Fight', function()
	pcall(function()
		if (((not Toggles.CheckIfInGame) or (not Toggles.CheckIfInGame.Value))) or workspace.SpawnInMonkey.Value == true then
			client.Character:PivotTo(CFrame.new(client.Character:GetPivot().Position.X, 10, client.Character:GetPivot().Position.Z))
		else
			UI:Notify("Monkey boss fight game is over or hasn't started.", 3)
		end
	end)
end)
Groups.Blatant:AddButton('TP To Rocket', function()
	pcall(function()
		if (((not Toggles.CheckIfInGame) or (not Toggles.CheckIfInGame.Value))) or workspace.SpawnInMonkey.Value == true then
			if workspace.Effects:FindFirstChild('Rocket') then
				client.Character:PivotTo(workspace.Effects.Rocket:GetPivot())
			else
				UI:Notify('Rocket not found.', 3)
			end
		else
			UI:Notify("Monkey boss fight game is over or hasn't started.", 3)
		end
	end)
end)
Groups.Blatant:AddButton('Disappear From Hide and Seek', function()
	pcall(function()
		if (((not Toggles.CheckIfInGame) or (not Toggles.CheckIfInGame.Value))) or workspace.SPAWNINSKETCHGAME.Value == true then
			client.Character:PivotTo(CFrame.new(-1600, 40, -2800))
		else
			UI:Notify("Hide and seek game is over or hasn't started.", 3)
		end
	end)
end)
Groups.Blatant:AddButton('TP To Opposite Team Dodgeball', function()
	pcall(function()
		local oppositeTeam = 1
		for _, v in ipairs(game.Players:GetPlayers()) do
			if v.Character ~= nil and type(v.Character:GetAttribute('teamdodgeball')) == 'number' and type(client.Character:GetAttribute('teamdodgeball')) == 'number' and v.Character:GetAttribute('teamdodgeball') ~= client.Character:GetAttribute('teamdodgeball') then
				oppositeTeam = tostring(v.Character:GetAttribute('teamdodgeball'))
			end
		end
		local desiredPivot = client.Character:GetPivot()
		local lowestNumber = 999
		if workspace.dodgeballmap.spawns:FindFirstChild(tostring('team') .. oppositeTeam) then
			for _, v in ipairs(workspace.dodgeballmap.spawns:FindFirstChild(tostring('team') .. oppositeTeam):GetChildren()) do
				if v:IsA('BasePart') and not v:GetAttribute('spawned') and tonumber(v.Name) < lowestNumber then
					lowestNumber = tonumber(v.Name)
					desiredPivot = v:GetPivot()
				end
			end
		end
		client.Character:PivotTo(desiredPivot)
	end)
end)
Groups.Blatant:AddButton('Disappear From Hot Potato Zone', function()
	pcall(function()
		if (((not Toggles.CheckIfInGame) or (not Toggles.CheckIfInGame.Value))) or (workspace.Effects:FindFirstChild('PotatoBomb') or workspace.FINALERevivesDisable.Value == true) then
			client.Character:PivotTo(CFrame.new(client.Character:GetPivot().Position.X, 65, client.Character:GetPivot().Position.Z))
		else
			UI:Notify("Hot Potato hasn't started.", 3)
		end
	end)
end)
Groups.Blatant:AddToggle('AntiPotato', { Text = 'Anti Hot Potato' })
Groups.Blatant:AddButton('Final Round Fight No Fall', function()
	pcall(function()
		if workspace:FindFirstChild('ArenaPart4') then
			workspace.ArenaPart4.Transparency = 0.5
			workspace.ArenaPart4.BrickColor = BrickColor.new('Lime green')
			workspace.ArenaPart4.Size = Vector3.new(3, 2000, 2000)
		end
	end)
end)
Groups.Troll = Tabs.Main:AddRightGroupbox('Troll')
Groups.Troll:AddToggle('RequestChairAura', { Text = 'Throw Chair Aura' })
Groups.Troll:AddToggle('DeleteChairAura', { Text = 'Delete Chair Aura' })

Groups.Credits = Tabs.UISettings:AddRightGroupbox('Credits')

addRichText(Groups.Credits:AddLabel('<font color="#0bff7e">Goose Better</font> - script'))
addRichText(Groups.Credits:AddLabel('<font color="#3da5ff">wally & Inori</font> - ui library'))

Groups.UISettings = Tabs.UISettings:AddRightGroupbox('UI Settings')
Groups.UISettings:AddLabel('Changelogs:\n' .. metadata.message or 'no message found!', true)
Groups.UISettings:AddDivider()
Groups.UISettings:AddButton('Unload Script', function() pcall(shared._unload) end)
Groups.UISettings:AddButton('Copy Discord', function()
	if pcall(setclipboard, "https://discord.gg/hSm6DyF6X7") then
		UI:Notify('Successfully copied discord link to your clipboard!', 5)
	end
end)
if game.PlaceId ~= 14136710162 and game.PlaceId ~= 12826178482 then
	Groups.UISettings:AddButton('Return To Lobby', function()
		tpService:Teleport(12826178482, client)
	end)
end

Groups.UISettings:AddLabel('Menu toggle'):AddKeyPicker('MenuToggle', { Default = 'Delete', NoUI = true })

UI.ToggleKeybind = Options.MenuToggle

themeManager:SetLibrary(UI)
themeManager:ApplyToGroupbox(Tabs.UISettings:AddLeftGroupbox('Themes'))

UI:Notify(string.format('Loaded script in %.4f second(s)!', tick() - start), 3)
if executor ~= 'Electron' and executor ~= 'Valyse' then
	UI:Notify(string.format('You may experience problems with the script/UI because you are using %s', executor), 30)
	task.wait()
	UI:Notify(string.format('Exploits this script works well with: Electron and Valyse'), 30)
end
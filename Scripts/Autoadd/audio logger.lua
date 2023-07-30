aa = game:GetObjects("rbxassetid://01997056190")[1]
aa.Parent = game.CoreGui
wait(0.2)
GUI = aa.PopupFrame.PopupFrame
pos = 0

ignore = {
	"rbxasset://sounds/action_get_up.mp3",
	"rbxasset://sounds/uuhhh.mp3",
	"rbxasset://sounds/action_falling.mp3",
	"rbxasset://sounds/action_jump.mp3",
	"rbxasset://sounds/action_jump_land.mp3",
	"rbxasset://sounds/impact_water.mp3",
	"rbxasset://sounds/action_swim.mp3",
	"rbxasset://sounds/action_footsteps_plastic.mp3"
}

GUI.Close.MouseButton1Click:connect(function()
	GUI:TweenSize(UDim2.new(0, 360, 0, 0),"Out","Quad",0.5,true) wait(0.6)
	GUI.Parent:TweenSize(UDim2.new(0, 0, 0, 20),"Out","Quad",0.5,true) wait(0.6)
	aa:Destroy()
end)

local min = false
GUI.Minimize.MouseButton1Click:connect(function()
	if min == false then
		GUI:TweenSize(UDim2.new(0, 360, 0, 20),"Out","Quad",0.5,true) min = true
	else
		GUI:TweenSize(UDim2.new(0, 360, 0, 260),"Out","Quad",0.5,true) min = false
	end
end)

function printTable(tbl)
	if type(tbl) ~= 'table' then return nil end
	local depthCount = -15

	local function run(val, inPrefix)
		depthCount = depthCount + 15
		-- if inPrefix then print(string.rep(' ', depthCount) .. '{') end
		for i,v in pairs(val) do
			if type(v) == 'table' then
				-- print(string.rep(' ', depthCount) .. ' [' .. tostring(i) .. '] = {')
				GUI.Store.Text = GUI.Store.Text..'\n'..string.rep(' ', depthCount) .. ' [' .. tostring(i) .. '] = {'
				run(v, false)
				wait()
			else
				-- print(string.rep(' ', depthCount) .. ' [' .. tostring(i) .. '] = ' .. tostring(v))
				GUI.Store.Text = GUI.Store.Text..'\n'..string.rep(' ', depthCount) .. ' [' .. tostring(i) .. '] = ' .. tostring(v)
				wait()
			end
		end
		-- print(string.rep(' ', depthCount) .. '}')
		depthCount = depthCount - 15
	end
	run(tbl, true)
end

function refreshlist()
	pos = 0
	GUI.Logs.CanvasSize = UDim2.new(0,0,0,0)
	for i,v in pairs(GUI.Logs:GetChildren()) do
		v.Position = UDim2.new(0,0,0, pos)
		GUI.Logs.CanvasSize = UDim2.new(0,0,0, pos+20)
		pos = pos+20
	end
end

function FindTable(Table, Name)
	for i,v in pairs(Table) do
		if v == Name then
			return true
		end end
	return false
end

function writefileExploit()
	if writefile then
		return true
	end
end

writeaudio = {}
running = false
GUI.SS.MouseButton1Click:connect(function()
	if writefileExploit() then
		if running == false then
			GUI.Load.Visible = true running = true
			GUI.Load:TweenSize(UDim2.new(0, 360, 0, 20),"Out","Quad",0.5,true) wait(0.3)
			for _, child in pairs(GUI.Logs:GetChildren()) do
				if child:FindFirstChild('ImageButton') then local bttn = child:FindFirstChild('ImageButton')
					if bttn.BackgroundTransparency == 0 then
						writeaudio[#writeaudio + 1] = {NAME = child.NAME.Value, ID = child.ID.Value}
					end
				end
			end
			GUI.Store.Visible = true
			printTable(writeaudio)
			wait(0.2)
			local filename = 0
			local function write()
				local file
				pcall(function() file = readfile("Audios"..filename..".txt") end)
				if file then
					filename = filename+1
					write()
				else
					local text = tostring(GUI.Store.Text)
					text = text:gsub('\n', '\r\n')
					writefile("Audios"..filename..".txt", text)
				end
			end
			write()
			for rep = 1,10 do
			GUI.Load.BackgroundTransparency = GUI.Load.BackgroundTransparency + 0.1
			wait(0.05)
			end
			GUI.Load.Visible = false
			GUI.Load.BackgroundTransparency = 0
			GUI.Load.Size = UDim2.new(0, 0, 0, 20)
			running = false
			GUI.Store.Visible = false
			GUI.Store.Text = ''
			writeaudio = {}
			game:FindService('StarterGui'):SetCore('SendNotification', {
				Title = 'Audio Logger',
				Text = 'Saved audios\n(Audios'..filename..'.txt)',
				Icon = 'http://www.roblox.com/asset/?id=176572847',
				Duration = 5,
			})
		end
	else
		game:FindService('StarterGui'):SetCore('SendNotification', {
			Title = 'Audio Logger',
			Text = 'Exploit cannot writefile :(',
			Icon = 'http://www.roblox.com/asset/?id=176572847',
			Duration = 5,
		})
	end
end)

GUI.SA.MouseButton1Click:connect(function()
	if writefileExploit() then
		if running == false then
			GUI.Load.Visible = true running = true
			GUI.Load:TweenSize(UDim2.new(0, 360, 0, 20),"Out","Quad",0.5,true) wait(0.3)
			for _, child in pairs(GUI.Logs:GetChildren()) do
				writeaudio[#writeaudio + 1] = {NAME = child.NAME.Value, ID = child.ID.Value}
			end
			GUI.Store.Visible = true
			printTable(writeaudio)
			wait(0.2)
			local filename = 0
			local function write()
				local file
				pcall(function() file = readfile("Audios"..filename..".txt") end)
				if file then
					filename = filename+1
					write()
				else
					local text = tostring(GUI.Store.Text)
					text = text:gsub('\n', '\r\n')
					writefile("Audios"..filename..".txt", text)
				end
			end
			write()
			for rep = 1,10 do
				GUI.Load.BackgroundTransparency = GUI.Load.BackgroundTransparency + 0.1
				wait(0.05)
			end
			GUI.Load.Visible = false
			GUI.Load.BackgroundTransparency = 0
			GUI.Load.Size = UDim2.new(0, 0, 0, 20)
			running = false
			GUI.Store.Visible = false
			GUI.Store.Text = ''
			writeaudio = {}
			game:FindService('StarterGui'):SetCore('SendNotification', {
				Title = 'Audio Logger',
				Text = 'Saved audios\n(Audios'..filename..'.txt)',
				Icon = 'http://www.roblox.com/asset/?id=176572847',
				Duration = 5,
			})
		end
	else
		game:FindService('StarterGui'):SetCore('SendNotification', {
			Title = 'Audio Logger',
			Text = 'Exploit cannot writefile :(',
			Icon = 'http://www.roblox.com/asset/?id=176572847',
			Duration = 5,
		})
	end
end)

selectedaudio = nil
function getaudio(place)
	if running == false then
		GUI.Load.Visible = true running = true
		GUI.Load:TweenSize(UDim2.new(0, 360, 0, 20),"Out","Quad",0.5,true) wait(0.3)
		for _, child in pairs(place:GetDescendants()) do
			spawn(function()
				if child:IsA("Sound") and not GUI.Logs:FindFirstChild(child.SoundId) and not FindTable(ignore,child.SoundId) then
					local id = string.match(child.SoundId, "rbxasset://sounds.+") or string.match(child.SoundId, "&hash=.+") or string.match(child.SoundId, "%d+")
					if id ~= nil then		
						local newsound = GUI.Audio:Clone()
						if string.sub(id, 1, 6) == "&hash=" or string.sub(id, 1, 7) == "&0hash=" then
							id = string.sub(id, (string.sub(id, 1, 6) == "&hash=" and 7) or (string.sub(id, 1, 7) == "&0hash=" and 8), string.len(id))
							newsound.ImageButton.Image = 'rbxassetid://1453863294'
						end
						newsound.Parent = GUI.Logs
						newsound.Name = child.SoundId
						newsound.Visible = true
						newsound.Position = UDim2.new(0,0,0, pos)
						GUI.Logs.CanvasSize = UDim2.new(0,0,0, pos+20)
						pos = pos+20
						local function findname()
							Asset = game:GetService("MarketplaceService"):GetProductInfo(id)
						end
						local audioname = 'error'
						local success, message = pcall(findname)
						if success then
    						newsound.TextLabel.Text = Asset.Name
							audioname = Asset.Name
						else
							newsound.TextLabel.Text = child.Name
							audioname = child.Name
						end
						local data = Instance.new('StringValue') data.Parent = newsound data.Value = child.SoundId data.Name = 'ID'
						local data2 = Instance.new('StringValue') data2.Parent = newsound data2.Value = audioname data2.Name = 'NAME'
						local soundselected = false
						newsound.ImageButton.MouseButton1Click:Connect(function()
							if GUI.Info.Visible ~= true then
								if soundselected == false then soundselected = true
									newsound.ImageButton.BackgroundTransparency = 0
								else soundselected = false
									newsound.ImageButton.BackgroundTransparency = 1
								end
							end
						end)
						newsound.Click.MouseButton1Click:Connect(function()
							if GUI.Info.Visible ~= true then
								GUI.Info.TextLabel.Text = "Name: " ..audioname.. "\n\nID: " .. child.SoundId .. "\n\nWorkspace Name: " .. child.Name
								selectedaudio = child.SoundId
								GUI.Info.Visible = true
							end
						end)
					end
				end
			end)
		end
	end
	for rep = 1,10 do
		GUI.Load.BackgroundTransparency = GUI.Load.BackgroundTransparency + 0.1
		wait(0.05)
	end
	GUI.Load.Visible = false
	GUI.Load.BackgroundTransparency = 0
	GUI.Load.Size = UDim2.new(0, 0, 0, 20)
	running = false
end

GUI.All.MouseButton1Click:connect(function() getaudio(game)end)
GUI.Workspace.MouseButton1Click:connect(function() getaudio(workspace)end)
GUI.Lighting.MouseButton1Click:connect(function() getaudio(game:GetService('Lighting'))end)
GUI.SoundS.MouseButton1Click:connect(function() getaudio(game:GetService('SoundService'))end)
GUI.Clr.MouseButton1Click:connect(function()
	for _, child in pairs(GUI.Logs:GetChildren()) do
		if child:FindFirstChild('ImageButton') then local bttn = child:FindFirstChild('ImageButton')
			if bttn.BackgroundTransparency == 1 then
				bttn.Parent:Destroy()
				refreshlist()
			end
		end
	end
end)
GUI.ClrS.MouseButton1Click:connect(function()
	for _, child in pairs(GUI.Logs:GetChildren()) do
		if child:FindFirstChild('ImageButton') then local bttn = child:FindFirstChild('ImageButton')
			if bttn.BackgroundTransparency == 0 then
				bttn.Parent:Destroy()
				refreshlist()
			end
		end
	end
end)
autoscan = false
GUI.AutoScan.MouseButton1Click:connect(function()
	if autoscan == false then autoscan = true
		GUI.AutoScan.BackgroundTransparency = 0.5
		game:FindService('StarterGui'):SetCore('SendNotification', {
			Title = 'Audio Logger',
			Text = 'Auto Scan ENABLED',
			Icon = 'http://www.roblox.com/asset/?id=176572847',
			Duration = 5,
		})
	else autoscan = false
		GUI.AutoScan.BackgroundTransparency = 0
		game:FindService('StarterGui'):SetCore('SendNotification', {
			Title = 'Audio Logger',
			Text = 'Auto Scan DISABLED',
			Icon = 'http://www.roblox.com/asset/?id=176572847',
			Duration = 5,
		})
	end
end)

game.DescendantAdded:connect(function(added)
	wait()
	if autoscan == true and added:IsA('Sound') and not GUI.Logs:FindFirstChild(added.SoundId) and not FindTable(ignore,added.SoundId) then
		local id = string.match(added.SoundId, "rbxasset://sounds.+") or string.match(added.SoundId, "&hash=.+") or string.match(added.SoundId, "%d+")
		if id ~= nil then		
			local newsound = GUI.Audio:Clone()
				if string.sub(id, 1, 6) == "&hash=" or string.sub(id, 1, 7) == "&0hash=" then
					id = string.sub(id, (string.sub(id, 1, 6) == "&hash=" and 7) or (string.sub(id, 1, 7) == "&0hash=" and 8), string.len(id))
					newsound.ImageButton.Image = 'rbxassetid://1453863294'
				end
				local scrolldown = false
				newsound.Parent = GUI.Logs
				newsound.Name = added.SoundId
				newsound.Visible = true
				newsound.Position = UDim2.new(0,0,0, pos)
				if GUI.Logs.CanvasPosition.Y == GUI.Logs.CanvasSize.Y.Offset - 230 then
					scrolldown = true
				end
				GUI.Logs.CanvasSize = UDim2.new(0,0,0, pos+20)
				pos = pos+20
				local function findname()
					Asset = game:GetService("MarketplaceService"):GetProductInfo(id)
				end
				local audioname = 'error'
				local success, message = pcall(findname)
				if success then
    				newsound.TextLabel.Text = Asset.Name
					audioname = Asset.Name
				else 
					newsound.TextLabel.Text = added.Name
					audioname = added.Name
				end
				local data = Instance.new('StringValue') data.Parent = newsound data.Value = added.SoundId data.Name = 'ID'
				local data2 = Instance.new('StringValue') data2.Parent = newsound data2.Value = audioname data2.Name = 'NAME'
				local soundselected = false
				newsound.ImageButton.MouseButton1Click:Connect(function()
					if GUI.Info.Visible ~= true then
						if soundselected == false then soundselected = true
							newsound.ImageButton.BackgroundTransparency = 0
						else soundselected = false
							newsound.ImageButton.BackgroundTransparency = 1
						end
					end
				end)
				newsound.Click.MouseButton1Click:Connect(function()
					if GUI.Info.Visible ~= true then
						GUI.Info.TextLabel.Text = "Name: " ..audioname.. "\n\nID: " .. added.SoundId .. "\n\nWorkspace Name: " .. added.Name
						selectedaudio = added.SoundId
						GUI.Info.Visible = true
					end
				end)
				--230'
			if scrolldown == true then
				GUI.Logs.CanvasPosition = Vector2.new(0, 9999999999999999999999999999999999999999999, 0, 0)
			end
		end
	end
end)

GUI.Info.Copy.MouseButton1Click:Connect(function()
	if pcall(function() Synapse:Copy(selectedaudio) end) then	
	else
		local clip = setclipboard or Clipboard.set
		clip(selectedaudio)
	end
	game:FindService('StarterGui'):SetCore('SendNotification', {
		Title = 'Audio Logger',
		Text = 'Copied to clipboard',
		Icon = 'http://www.roblox.com/asset/?id=176572847',
		Duration = 5,
	})
end)

GUI.Info.Close.MouseButton1Click:Connect(function()
	GUI.Info.Visible = false
	for _, sound in pairs(game:GetService('Players').LocalPlayer.PlayerGui:GetChildren()) do
		if sound.Name == 'SampleSound' then
			sound:Destroy()
		end
	end
	GUI.Info.Listen.Text = 'Listen'
end)

GUI.Info.Listen.MouseButton1Click:Connect(function()
	if GUI.Info.Listen.Text == 'Listen' then
		local samplesound = Instance.new('Sound') samplesound.Parent = game:GetService('Players').LocalPlayer.PlayerGui
		samplesound.Looped = true samplesound.SoundId = selectedaudio samplesound:Play() samplesound.Name = 'SampleSound'
		samplesound.Volume = 5
		GUI.Info.Listen.Text = 'Stop'
	else
		for _, sound in pairs(game:GetService('Players').LocalPlayer.PlayerGui:GetChildren()) do
			if sound.Name == 'SampleSound' then
				sound:Destroy()
			end
		end
		GUI.Info.Listen.Text = 'Listen'
	end
end)

function drag(gui)
	spawn(function()
		local UserInputService = game:GetService("UserInputService")
		local dragging
		local dragInput
		local dragStart
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), "InOut", "Quart", 0.04, true, nil) 
		end
		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
		input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
end)
end
drag(aa.PopupFrame)
local rs = game:GetService('ReplicatedStorage')
if rs:FindFirstChild('GameRemotes') then
	local HttpService = game:GetService("HttpService")
	Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VeztWare/KavoUi/main/KavoUi.lua"))()
	local Window = Library.CreateLib("Craft blox gui", "Midnight")
	local Players = game.Players
	local lp = Players.LocalPlayer
	local blocks = workspace.Blocks
	local inventory, plr, tempplr
	local data = {}
	local plrs = {}
	local blockPosX = 0
	local blockPosY = 0
	local blockPosZ = 0

	local Tab = Window:NewTab("Main")
	local Tab2 = Window:NewTab("Xray/ESP")
	
	local Section = Tab:NewSection("Blocks")
	local Section2 = Tab:NewSection("Chests")
	local Section3 = Tab:NewSection("Players")
	local Section4 = Tab2:NewSection("Main")
	
	local KillAuraDis = 18
	local BBAdis = 21
	local IBM = false
	local NeededIBM = false
	local BBA = false
	local KillAura = false
	local CoalESP = false
	local SteelESP = false
	local GoldESP = false
	local DiamondESP = false
	local RubyESP = false
	local SapphireESP = false
	local SproutedWheatESP = false
	local CustomESP = false
	local CustomName = ''
	local gr = rs.GameRemotes

	local abb = gr.AcceptBreakBlock
	local bb = gr.BreakBlock
	local atck = gr.Attack
	local mi = gr.MoveItem
	local si = gr.SortItem
	local ub = gr.UseBlock
	local pb = gr.PlaceBlock

	gr.Demo:Destroy()
	
	function ftp(str)
		local pt = nil
		if str ~= 'me' and str ~= 'random' then
			for i, v in pairs(Players:GetPlayers()) do
				if v.Name:lower():find(str:lower()) or v.DisplayName:lower():find(str:lower()) then
					pt = v
					break
				end
			end
		elseif str == 'me' then
			pt = lp
		elseif str == 'random' then
			pt = Players:GetPlayers()[math.random(1, #Players:GetPlayers())]
		end
		return pt;
	end

	Section:NewToggle("Instant mining", "Works only on some blocks", function(state)
		IBM = state
	end)

	Section:NewSlider("Break block aura distance", "Sets maximum break block aura distance", 21, 1, function(s)
		BBAdis = s
	end)

	Section:NewToggle("Break block aura", "Works only on some blocks", function(state)
		NeededIBM = state
		BBA = state
	end)

	local label = Section:NewLabel("Your wroten cords:")

	Section:NewButton("Set your game pos", "Sets pos for other functions", function()
		blockPosX, blockPosY, blockPosZ = lp.PlayerGui.HUDGui.DataFrame.Coord.Text:match("(-?%d+),%s*(-?%d+),%s*(-?%d+)")
		label:UpdateLabel("Your wroten cords: "..tostring(blockPosX)..', '..tostring(blockPosY)..', '..tostring(blockPosZ))
	end)

	Section:NewButton("Flood pos", "Set the 1 slot water, 3 more set to 64 blocks", function()
		local pos = 0
		local oldPos = lp.Character.HumanoidRootPart.CFrame
		for j=1,3 do
			for i=0,63 do
				pb:InvokeServer(pos+blockPosX,254-pos,blockPosZ,j)
				pos = pos+1
			end
		end
		workspace.Gravity = 0
		lp.Character.HumanoidRootPart.CFrame = CFrame.new(blockPosX*3, 765, blockPosZ*3)
		wait(0.25)
		ub:InvokeServer(blockPosX,255,blockPosZ,0)
		wait(0.25)
		lp.Character.HumanoidRootPart.CFrame = oldPos
		workspace.Gravity = 96
	end)
	
	Section2:NewButton("Steal chest", "You need to have empty inventory(only that shows with toggle E)", function()
		for i=36,62 do
			mi:InvokeServer(i, -1)
			mi:InvokeServer(-1, i-27, true)
		end
	end)

	Section2:NewButton("Instant chest dupe", "It may seem that the chest is empty, but you need to close it and open it again", function()
		for i=36,62 do
			spawn(function()
				si:InvokeServer(i)
			end)
		end
	end)

	Section3:NewTextBox("Player name(ONLY ONE)", "You can type here part of real/display name, me, and random", function(txt)
		plr = ftp(txt)
	end)	

	Section3:NewButton("Print inventory to console", "Dont forget to fill player name(ONLY ONE)", function()
		inventory = plr.Character.Inventory
		print(plr.Name.."'s inventory: ")
		for _,v in pairs(inventory:GetDescendants()) do
			data = HttpService:JSONDecode(v.Value)
			if data.count > 0 then
				print('Item: '..data.name)
				if data.durability ~= false then
					print('Durability: '..tostring(data.durability))
				end
				print('Count: '..tostring(data.count))
				print('---------------------------')
			end
		end
		print('---------------------------')
	end)

	Section3:NewTextBox("Player name(MANY)", "You can type here part of real/display name, me, and random", function(txt)
		local plr111 = ftp(txt)
		if plr111 ~= nil then
			table.insert(plrs, plr111)
		end
	end)

	Section3:NewButton("Print player list", "Prints players that you added to Player name(MANY)", function()
		for _,plr12 in pairs(plrs) do
			print(plr12.Name)
		end
	end)

	Section3:NewButton("Clear player list", "Clears player list", function()
		plrs = {}
	end)

	Section3:NewSlider("Kill aura distance", "Sets maximum kill aura distance", 18, 1, function(s)
		KillAuraDis = s
	end)

	Section3:NewToggle("Enable/Disable kill aura", "Kills players nearby you, excluding players in the player list", function(state)
		KillAura = state
	end)

	local partName2Color = {
		CoalOre = "Really black",
		SteelOre = "Medium stone grey",
		GoldOre = "Gold",
		DiamondOre = "Cyan",
		RubyOre = "Really red",
		SapphireOre = "Really blue",
		Wheat5 = "Wheat"
	}

	local function createESP(adornee, color)
		local a = Instance.new("BoxHandleAdornment")
		a.Parent = adornee
		a.Adornee = adornee
		a.AlwaysOnTop = true
		a.ZIndex = 0
		a.Size = adornee.Size
		a.Transparency = 0.5
		a.Color = BrickColor.new(color)
	end

	local function init(name, state)
		if state then
			local color = partName2Color[name]
			if color == nil then
				color = 'Institutional white'
			end
			for _,v in pairs(blocks:GetDescendants()) do
				if v.Name == name then
					createESP(v, color)
				end
			end
		else
			for _,v in pairs(blocks:GetDescendants()) do
				if v:IsA('BoxHandleAdornment') and v.Parent.Name == name then
					v:Destroy()
				end
			end
		end
	end

	blocks.DescendantAdded:Connect(function(v)
		if v.Name == 'CoalOre' and CoalESP then
			createESP(v, "Really black")
		elseif v.Name == 'SteelOre' and SteelESP then
			createESP(v, "Medium stone grey")
		elseif v.Name == 'GoldOre' and GoldESP then
			createESP(v, "Gold")
		elseif v.Name == 'DiamondOre' and DiamondESP then
			createESP(v, "Cyan")
		elseif v.Name == 'RubyOre' and RubyESP then
			createESP(v, "Really red")
		elseif v.Name == 'SapphireOre' and SapphireESP then
			createESP(v, "Really blue")
		elseif v.Name == 'Wheat5' and SproutedWheatESP then
			createESP(v, "Wheat")
		elseif v.Name == CustomName and CustomESP then
			createESP(v, "Institutional white")
		end
	end)

	Section4:NewToggle("ESP Coal ore", "Locates it", function(state)
		CoalESP = state
		wait()
		init('CoalOre', state)
	end)
	Section4:NewToggle("ESP Steel ore", "Locates it", function(state)
		SteelESP = state
		wait()
		init('SteelOre', state)
	end)
	Section4:NewToggle("ESP Gold ore", "Locates it", function(state)
		GoldESP = state
		wait()
		init('GoldOre', state)
	end)
	Section4:NewToggle("ESP Diamond ore", "Locates it", function(state)
		DiamondESP = state
		wait()
		init('DiamondOre', state)
	end)
	Section4:NewToggle("ESP Ruby ore", "Locates it", function(state)
		RubyESP = state
		wait()
		init('RubyOre', state)
	end)
	Section4:NewToggle("ESP Sapphire ore", "Locates it", function(state)
		SapphireESP = state
		wait()
		init('SapphireOre', state)
	end)
	Section4:NewToggle("ESP Sprouted wheat", "Locates it", function(state)
		SproutedWheatESP = state
		wait()
		init('Wheat5', state)
	end)
	Section4:NewTextBox("Custom ESP name", "Type here custom block to esp", function(txt)
		CustomName = txt
	end)
	Section4:NewToggle("Custom ESP", "Locates it", function(state)
		CustomESP = state
		wait()
		init(CustomName, state)
	end)
	
	local function isElementInTable(element, table)
		for _, v in pairs(table) do
			if v == element then
				return true
			end
		end
		return false
	end

	local function getClosestPlayer()
		local closestDistance = KillAuraDis
		local closestPlayer = nil
	
		for _, player in pairs(Players:GetPlayers()) do
			if player ~= lp and not isElementInTable(player, plrs) then
				local distance = (lp.Character.PrimaryPart.Position - player.Character.PrimaryPart.Position).Magnitude
				if distance < closestDistance then
					closestDistance = distance
					closestPlayer = player
				end
			end
		end
	
		return closestPlayer
	end

	spawn(function()
		while wait(0.1) do
			if KillAura then
				pcall(function()
					tempplr = getClosestPlayer()
					if tempplr ~= nil then
						if tempplr.Character ~= nil then
							atck:InvokeServer(tempplr.Character)
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		while true do
			if BBA then
				for _, v in pairs(blocks:GetDescendants()) do
					if v:IsA('MeshPart') then
						pos = v.Position
						if (lp.Character.HumanoidRootPart.Position - pos).magnitude < BBAdis then
							bb:FireServer(pos.x/3, pos.y/3, pos.z/3)
							wait()
						end
					end
				end
			end
			wait()
		end
	end)

	while task.wait() do
		if IBM or NeededIBM then
			abb:InvokeServer()
		end
	end
end
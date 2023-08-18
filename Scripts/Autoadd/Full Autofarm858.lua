local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
local Venyx = Library.new("LSRS", 5013109572)

if not Flags then
	getgenv().Flags = {
		Killaura = false,
		Distance = 10,
		AutoRebirth = false,
		AuraTarget = nil,
		AuraPrefix = nil,
		MinimumLevel = 1,
		TargetLevel = false,
        Teleport = false,
        AutoEquip = false,
        AutoUpgrade = {
            
        },
        Popups = false,
	}
end

local ValidMobs = {"Any"} -- I use "Any" as the selection for attacking any mob
local ValidPrefixes = {"Any"}

-- Constants (figuratively; if these change, we're fucked.)

local Mobs = workspace:WaitForChild("Mobs", 3) -- Oooo second argument in WaitForChild, what could it mean??
local Player = game:GetService("Players").LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui", 3)

-- Janky ui shit because this jackass doesn't know what ResetOnSpawn is.

local UI = PlayerGui:WaitForChild("UI", 3)
local CS = UI and UI:WaitForChild("CS", 3)

PlayerGui.ChildAdded:Connect(function(Child)
	if Child.Name == "UI" then
		UI = Child
		CS = Child:WaitForChild("CS", 3)
	end
end)

-- Stats (for rebirth, and level min.)

local Leaderstats = Player:WaitForChild("leaderstats", 3)
local Lvl = Leaderstats and Leaderstats:WaitForChild("Lvl", 3)
local StatPoints = Player:WaitForChild("StatPoints", 3)

for i, v in next, Mobs:GetChildren() do -- The game doesn't store the mobs in a place where we can read it, so we need to wait for the fuckers to spawn before we know they exist.
	local Name, Prefix = v.Name, nil
	
	if Name:find("%[") then -- THANKS REGEX I LOVE USING %
		Prefix = "[" .. Name:split("[")[2] -- Yeah I'm terrible at regex, how can you tell?
	end
	
	if not table.find(ValidMobs, Name) then
		table.insert(ValidMobs, Name)
	end
	
	if Prefix and not table.find(ValidPrefixes, Prefix) then
		table.insert(ValidPrefixes, Prefix)
	end
end

local Platform = Instance.new("Part") -- Fuck you roblox.

Platform.Name = game:GetService("HttpService"):GenerateGUID(false) -- No detecty pwease :pleading:
Platform.Size = Vector3.new(5, 1, 5) -- This platform only exists to prevent dying in the void
Platform.Anchored = true -- We don't want our floor collapsing beneath our feet, do we?
Platform.Transparency = 0.5
Platform.Parent = workspace

-- UI Setup

local Automation = Venyx:addPage("Automation")
local Visuals = Venyx:addPage("Visuals")
local UiMenu = Visuals:addSection("UI")

-- Automation
local AuraSection = Automation:addSection("Killaura")
local TargetSection = Automation:addSection("Targets")
local UpgradeSection = Automation:addSection("Upgrades")

AuraSection:addToggle("Enabled", false, function(Value)
	Flags.Killaura = Value
	
	while game.RunService.Stepped:Wait() and Flags.Killaura do -- Better than putting this loop outside this function mmm yes.
		local Character = Player.Character or Player.CharacterAdded:Wait() -- Better than declaring it as a variable outside of this loop and updating it whenever the player spawns.
		local Tool, Damage = Character:FindFirstChildOfClass("Tool"), Character:WaitForChild("SwordDamage", 3)
		
		if not (Tool and Damage) then -- If you use pcall instead of this, you're schizophrenic.
			continue -- Return breaks the loop because god hates me.
		end
		
		if Flags.Teleport then
			Platform.CFrame = Character:GetPivot() * CFrame.new(0, -2.75, 0) -- Low enough to push us upwards and counter gravity.
			
			for i, v in next, Character:GetChildren() do
				if v:IsA("BasePart") then  -- I love r15 parts being MESHPARTS I love it so much.
					v.CanCollide = false -- Thanks for removing that one humanoid state, roblox.
				end
			end
		else
			Platform.CFrame = CFrame.new() -- Don't want the platform to get in our way uwu
		end
		
		for i, v in next, Mobs:GetChildren() do
			if v:IsA("Model") then
				local Humanoid, Pivot = v:FindFirstChildOfClass("Humanoid"), v:GetPivot() -- PrimaryPart.CFrame sucks, fuck you.
                local Settings = v:FindFirstChild("Settings") -- Lets not use waitforchild in a loop that goes through every mob in the game, alright?
				local Level = Settings and Settings:FindFirstChild("Lvl")

				if not Level or not Humanoid or Humanoid.Health <= 0 then -- Is the mob alive? What's the meaning of life? Is the mob really living if it's locked in place only to attack the player, with no sense of self, and trapped in an endless void of legos? Idk.
					continue
				end
				
				if Flags.AuraPrefix and not v.Name:find(Flags.AuraPrefix) then -- Does the mob have the prefix we're targeting?
					continue
				end
				
				if Flags.AuraTarget and v.Name ~= Flags.AuraTarget then -- Is the mob our target?
					continue
				end

                if Level.Value < Flags.MinimumLevel then -- Is the mob's level higher than our selected minimum?
                    continue
                end

                if Flags.TargetLevel and Level.Value > Lvl.Value then -- Is the mob our level? "Pick on someone your own size"
                    continue
                end

                if Flags.Teleport then
                    Character:PivotTo(Pivot * CFrame.new(0, -5, 5)) -- Mob hitboxes extend behind them for whatever reason, so you need to be underneath them.
                end
				
				if (Pivot.Position - workspace.CurrentCamera.Focus.Position).Magnitude < 10 then -- Owner added a magnitude check to this event, so attacking anything farther than this is completely useless and dangerous.
					Damage:FireServer(Humanoid, Tool, 1, 1) -- I'm not changing these args, that sounds like a great way to get banned for being a retard.
				end
			end
		end
	end
end)

AuraSection:addSlider("Distance", 10, 0, 15, function(Value)
	Flags.Distance = Value
end)

AuraSection:addToggle("Teleport", false, function(Value)
    Flags.Teleport = Value
end)

Automation:addSection("Rebirth"):addToggle("Enabled", false, function(Value)
	Flags.AutoRebirth = Value
end)

Automation:addSection("Auto Equip"):addToggle("Enabled", false, function(Value)
    Flags.AutoEquip = Value

    while task.wait(1) and Flags.AutoEquip do -- I could do a childadded loop, but because the backpack resets when the character spawns, it would be extremely janky.
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Humanoid = Character:WaitForChild("Humanoid", 3)

        local Backpack = Player:WaitForChild("Backpack", 3)
        local BestTool = Character:FindFirstChildOfClass("Tool") or Backpack:FindFirstChildOfClass("Tool")
        local BestDmg = BestTool and BestTool:FindFirstChild("Conf") and BestTool.Conf:FindFirstChild("MaxDmg")

        if not (BestDmg and Humanoid) then -- How don't we have any sword? Idfk, edge-case magic.
            continue
        end

        for i, v in next, Backpack:GetChildren() do
            local Conf = v:FindFirstChild("Conf")
            local MaxDmg = Conf and Conf:FindFirstChild("MaxDmg")

            if MaxDmg then
                if BestDmg.Value < MaxDmg.Value then -- If you've ever used a getclosestplayer function, you know how this works.
                    BestTool = v
                    BestDmg = MaxDmg
                end
            end
        end
        
        Humanoid:UnequipTools() -- You better not equip multiple tools at once.
        Humanoid:EquipTool(BestTool)
    end
end)

local AuraTargets = TargetSection:addDropdown("Mob To Target", ValidMobs, function(Value)
	Flags.AuraTarget = if Value == "Any" then nil else Value -- I promise you this isn't as complicated as it seems. https://stackoverflow.com/a/8957225
end)

local AuraPrefix = TargetSection:addDropdown("Target Prefix", ValidPrefixes, function(Value)
	Flags.AuraPrefix = if Value == "Any" then nil else Value
end)

TargetSection:addTextbox("MinimumLevel", "1", function(Value)
	if tonumber(Value) then -- AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
		Flags.MinimumLevel = tonumber(Value)
	end
end)

TargetSection:addToggle("Only Target Our Level", false, function(Value)
    Flags.TargetLevel = Value
end)

for i, v in next, Player:GetChildren() do -- Automatically makes upgrade toggles for every stat, in case any are added later in development.
    if v.Name:find("UP") then -- Check if it's a valid stat
        Flags.AutoUpgrade[v.Name] = false

        UpgradeSection:addToggle(v.Name, false, function(Value)
            Flags.AutoUpgrade[v.Name] = Value
        end)
    end
end

StatPoints:GetPropertyChangedSignal("Value"):Connect(function()
    local Val = StatPoints.Value
    
    if Val > 0 and CS then
    	for i = 1, Val do -- Server code is extremely slow so this is essentially as fast as a task.wait() otherwise.
	        for i, v in next, Flags.AutoUpgrade do
	            if v == true then
	                CS:FireServer("add", Player:FindFirstChild(i), false)
	            end
	        end
        end
    end
end)

Flags.AuraPrefix = nil -- Venyx hates me, just like god.
Flags.AuraTarget = nil

Mobs.ChildAdded:Connect(function(v) -- Add new mobs to the mob table dynamically wow im so cool.
	local Name, Prefix = v.Name, nil
		
	if Name:find("%[") then
		Prefix = "[" .. Name:split("[")[2]
	end
	
	if not table.find(ValidMobs, Name) then
		table.insert(ValidMobs, Name)
		TargetSection:updateDropdown(AuraTargets, nil, ValidMobs, function(Value) Flags.AuraPrefix = if Value == "Any" then nil else Value end)
	end
	
	if Prefix and not table.find(ValidPrefixes, Prefix) then
		table.insert(ValidPrefixes, Prefix)
		TargetSection:updateDropdown(AuraPrefix, nil, ValidPrefixes, function(Value) Flags.AuraPrefix = if Value == "Any" then nil else Value end)
	end
end)

Lvl:GetPropertyChangedSignal("Value"):Connect(function() -- Loops are lame.
    if Flags.AutoRebirth and Lvl.Value >= 300 and CS then -- Do you need a comment here?
        CS:FireServer("reb", Lvl) -- Why is it this remote?? Amazing server code.
    end
end)

UiMenu:addKeybind("Toggle Keybind", Enum.KeyCode.Delete, function()
	Venyx:toggle()
end)

UiMenu:addToggle("Disable Damage Popups", false, function(Value)
    Flags.Popups = Value
end)

PlayerGui.ChildAdded:Connect(function(Child)
    if Child.Name == "dmg" and Flags.Popups then
        game:GetService("RunService").RenderStepped:Wait()
        Child:Destroy()
    end
end)

Venyx:SelectPage(Venyx.pages[1], true)
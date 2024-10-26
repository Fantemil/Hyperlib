-- MINE SCRIPTS DISCORD HERE: https://discord.gg/2JbAnyBPh5

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "TBOD money farm by JJP (USE ONLY ON PS SERVERS)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Main"
})

Tab:AddButton({
	Name = "Setup (press once)",
	Callback = function()

        local collectorPart = game.Workspace.Plots:GetChildren()[2].Items.Collector.Collector
        collectorPart.Size = Vector3.new(7, 0.5, 7)
        local part = Instance.new("Part")
        local part1 = Instance.new("Part")

local collectorPart = workspace.Plots:GetChildren()[2].Items.Collector.Collector
if collectorPart then
    collectorPart.Position = collectorPart.Position + Vector3.new(20, 0, 0)
else
    print("ÐÐ±ÑÐµÐºÑ Collector Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
end


        part.CFrame = CFrame.new(68.9996414, 14.3336544, 137.247314) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        part.Size = Vector3.new(4, 1.2000000476837158, 2)
        part.Anchored = true
        part1.CFrame = CFrame.new(68.9996414, 14.3336544, 143.247314, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        part1.Size = Vector3.new(4, 2.200000047683716, 4)
        part1.Anchored = true
        part.Parent = workspace
        part1.Parent = workspace

        local function moveAndHideParts(model)
            if model then
                for _, child in pairs(model:GetChildren()) do
                    if child:IsA("Part") then
                        child.Position = child.Position - Vector3.new(0, 20, 0)
                        
                        child.Transparency = 1
                        child.CanCollide = false
                    end
                end
            else
                print("ÐÐ¾Ð´ÐµÐ»Ñ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð°!")
            end
        end

        local plot = game.Workspace.Plots:GetChildren()[2].Items

        moveAndHideParts(plot.Blender)
        moveAndHideParts(plot["Efficient Blenders"])
        moveAndHideParts(plot["Scam The Buyers (Efficient Material Usage)"])

        local targetCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314)
        local targetSize = Vector3.new(6.5, 6.5, 6.5)

        local function moveAndResize(part)
            if part then
                part.CFrame = targetCFrame
                part.Size = targetSize
            else
                print("ÐÐ°ÑÑ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
            end
        end

        local newSize = Vector3.new(4.5, 4.5, 4.5)
        local electric = workspace.Plots:GetChildren()[2].Items.Electrifyer:FindFirstChild("Electric")
        local touchPart1 = workspace.Plots:GetChildren()[2].Items["Metallic Injector"]:FindFirstChild("TouchPart")
        local touchPart2 = workspace.Plots:GetChildren()[2].Items.Polisher:FindFirstChild("TouchPart")
        local Washer = workspace.Plots:GetChildren()[2].Items.Washifyer:FindFirstChild("Washer")
        local Sander = workspace.Plots:GetChildren()[2].Items.Sandifyer:FindFirstChild("Sander")

        if electric then
            electric.CFrame = targetCFrame
            electric.Size = newSize
        end

        if touchPart1 then
            touchPart1.CFrame = targetCFrame
            touchPart1.Size = newSize
        end

        if touchPart2 then
            touchPart2.CFrame = targetCFrame
            touchPart2.Size = newSize
        end

        if Washer then
            Washer.CFrame = targetCFrame
            Washer.Size = newSize
        end

        if Sander then
            Sander.CFrame = targetCFrame
            Sander.Size = newSize
        end

        if collectorPart then
            collectorPart.CFrame = collectorPart.CFrame + Vector3.new(20, 0, 0)
        else
            print("ÐÐ±ÑÐµÐºÑ Collector Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
        end

  	end    
})

Tab:AddButton({
	Name = "Collect blocks(after setup, press this)",
	Callback = function()
        local collectorPart = game.Workspace.Plots:GetChildren()[2].Items.Collector.Collector
        local targetCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314)

        local function moveCollector()
            if collectorPart then
                collectorPart.CFrame = targetCFrame
                wait(3)
                
                if collectorPart then
                    collectorPart.Position = collectorPart.Position + Vector3.new(20, 0, 0)
                else
                    print("ÐÐ±ÑÐµÐºÑ Collector Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
                end
            else
                print("ÐÐ±ÑÐµÐºÑ Collector Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
            end
        end

        moveCollector()
  	end    
})

Tab:AddButton({
	Name = "Delete annoying blender buy button",
	Callback = function()
for _, button in ipairs(workspace.Plots:GetChildren()[2].Buttons:GetChildren()) do
    local billboardGui = button:FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            if textLabel.Text == "Blender" then
                button:Destroy()
                print("Ð£Ð´Ð°Ð»ÐµÐ½Ð° ÐºÐ½Ð¾Ð¿ÐºÐ° Ñ ÑÐµÐºÑÑÐ¾Ð¼ 'Blender'.")
                break
            end
        end
    end
end

  	end    
})

local autoCollectEnabled = false

Tab:AddToggle({
	Name = "Auto collect every 17 sec",
	Default = false,
	Callback = function(Value)
		autoCollectEnabled = Value
		while autoCollectEnabled do
			local collectorPart = game.Workspace.Plots:GetChildren()[2].Items.Collector.Collector
			local targetCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314)

			local function moveCollector()
				if collectorPart then
					collectorPart.CFrame = targetCFrame
					wait(3)
					
					if collectorPart then
						collectorPart.Position = collectorPart.Position + Vector3.new(20, 0, 0)
					else
						print("ÐÐ±ÑÐµÐºÑ Collector Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
					end
				else
					print("ÐÐ±ÑÐµÐºÑ Collector Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
				end
			end

			moveCollector()
			wait(12)
		end
	end    
})

local Tab2 = Window:MakeTab({
	Name = "Boosters",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local isOn = false
local connection

local function updateValues()
	while isOn do
		local player = game.Players.LocalPlayer
		local twoBoostTime = player:WaitForChild("twoBoostTime")
		local threeBoostTime = player:WaitForChild("threeBoostTime")
		twoBoostTime.Value = 555
		threeBoostTime.Value = 555
		wait(0.4)
	end
end

local function updateValues2()
	while isOn do
		local player = game.Players.LocalPlayer
		local twoBoostTime = player:WaitForChild("twoBoostTime")
		local threeBoostTime = player:WaitForChild("threeBoostTime")
		threeBoostTime.Value = 555
		wait(0.4)
	end
end

local function updateValues3()
	while isOn do
		local player = game.Players.LocalPlayer
		local twoBoostTime = player:WaitForChild("twoBoostTime")
		local threeBoostTime = player:WaitForChild("threeBoostTime")
		twoBoostTime.Value = 555
		wait(0.4)
	end
end

Tab:AddToggle({
	Name = "6x money (2x and 3x in one time)",
	Default = false,
	Callback = function(Value)
		isOn = Value
		if isOn then
			connection = spawn(updateValues)
		else
			if connection then
				connection = nil
			end
		end
	end    
})

Tab:AddToggle({
	Name = "2x money",
	Default = false,
	Callback = function(Value)
		isOn = Value
		if isOn then
			connection = spawn(updateValues3)
		else
			if connection then
				connection = nil
			end
		end
	end    
})

Tab:AddToggle({
	Name = "3x money",
	Default = false,
	Callback = function(Value)
		isOn = Value
		if isOn then
			connection = spawn(updateValues2)
		else
			if connection then
				connection = nil
			end
		end
	end    
})

local washerInitialCFrame = CFrame.new(68.9993057, 2.83570862, 56.2518196, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local washerInitialSize = Vector3.new(4, 1.5, 0.5)
local washerActiveCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local washerActiveSize = Vector3.new(5, 5, 5)

Tab2:AddToggle({
	Name = "Washifyer",
	Default = false,
	Callback = function(Value)
		local washer = workspace.Plots:GetChildren()[2].Items.Washifyer:FindFirstChild("Washer")
		if washer then
			if Value then
				washer.CFrame = washerActiveCFrame
				washer.Size = washerActiveSize
			else
				washer.CFrame = washerInitialCFrame
				washer.Size = washerInitialSize
			end
		else
			print("ÐÐ±ÑÐµÐºÑ Washer Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
		end
	end    
})

local sanderInitialCFrame = CFrame.new(68.9949799, 3.0705409, 65.6995544, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local sanderInitialSize = Vector3.new(1.368119478225708, 1.96999990940094, 0.3791351318359375)
local sanderActiveCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local sanderActiveSize = Vector3.new(5, 5, 5)

Tab2:AddToggle({
	Name = "Sandifyer",
	Default = false,
	Callback = function(Value)
		local sander = workspace.Plots:GetChildren()[2].Items.Sandifyer:FindFirstChild("Sander")
		if sander then
			if Value then
				sander.CFrame = sanderActiveCFrame
				sander.Size = sanderActiveSize
				sander.Transparency = 0.7
			else
				sander.CFrame = sanderInitialCFrame
				sander.Size = sanderInitialSize
				sander.Transparency = 1
			end
		else
			print("ÐÐ±ÑÐµÐºÑ Sander Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
		end
	end    
})

local polisherInitialCFrame = CFrame.new(68.9992523, 3.08536553, 70.7509155, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local polisherInitialSize = Vector3.new(2, 2, 0.5)
local polisherActiveCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local polisherActiveSize = Vector3.new(5, 5, 5)

Tab2:AddToggle({
	Name = "Polisher",
	Default = false,
	Callback = function(Value)
		local polisher = workspace.Plots:GetChildren()[2].Items.Polisher:FindFirstChild("TouchPart")
		if polisher then
			if Value then
				polisher.CFrame = polisherActiveCFrame
				polisher.Size = polisherActiveSize
				polisher.Transparency = 0.7
			else
				polisher.CFrame = polisherInitialCFrame
				polisher.Size = polisherInitialSize
				polisher.Transparency = 1
			end
		else
			print("ÐÐ±ÑÐµÐºÑ Polisher Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
		end
	end    
})

local injectorInitialCFrame = CFrame.new(68.9993057, 2.83525085, 75.7507324, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local injectorInitialSize = Vector3.new(3, 1.5, 0.5)
local injectorActiveCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local injectorActiveSize = Vector3.new(5, 5, 5)

Tab2:AddToggle({
	Name = "Metallic Injector",
	Default = false,
	Callback = function(Value)
		local injector = workspace.Plots:GetChildren()[2].Items["Metallic Injector"]:FindFirstChild("TouchPart")
		if injector then
			if Value then
				injector.CFrame = injectorActiveCFrame
				injector.Size = injectorActiveSize
				injector.Transparency = 0.7
			else
				injector.CFrame = injectorInitialCFrame
				injector.Size = injectorInitialSize
				injector.Transparency = 1
			end
		else
			print("ÐÐ±ÑÐµÐºÑ Metallic Injector Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
		end
	end    
})

local ElectrifyerInitialCFrame = CFrame.new(68.9957657, 3.08506823, 83.687149, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local ElectrifyerInitialSize = Vector3.new(3.1776809692382812, 2, 0.0743408203125)
local ElectrifyerActiveCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local ElectrifyerActiveSize = Vector3.new(5, 5, 5)

Tab2:AddToggle({
	Name = "Electrifyer",
	Default = false,
	Callback = function(Value)
		local Electrifyer = workspace.Plots:GetChildren()[2].Items["Electrifyer"]:FindFirstChild("Electric")
		if Electrifyer then
			if Value then
				Electrifyer.CFrame = ElectrifyerActiveCFrame
				Electrifyer.Size = ElectrifyerActiveSize
				Electrifyer.Transparency = 0.7
			else
				Electrifyer.CFrame = ElectrifyerInitialCFrame
				Electrifyer.Size = ElectrifyerInitialSize
				Electrifyer.Transparency = 1
			end
		else
			print("ÐÐ±ÑÐµÐºÑ Electrifyer Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
		end
	end    
})

local particleStabilizerInitialCFrame = CFrame.new(73.2537231, 4.14782953, 104.813583, 0, 0, 1, 0, 1, -0, -1, 0, 0)
local particleStabilizerInitialSize = Vector3.new(0.09678089618682861, 2.124563217163086, 2.490000009536743)
local particleStabilizerActiveCFrame = CFrame.new(68.9996414, 1.33365464, 143.247314, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local particleStabilizerActiveSize = Vector3.new(5, 5, 5)

Tab2:AddToggle({
	Name = "Particle Stabilizer",
	Default = false,
	Callback = function(Value)
		local particleStabilizer = workspace.Plots:GetChildren()[2].Items["Particle Stabilizer"]:FindFirstChild("SprayPart")
		if particleStabilizer then
			if Value then
				particleStabilizer.CFrame = particleStabilizerActiveCFrame
				particleStabilizer.Size = particleStabilizerActiveSize
				particleStabilizer.Transparency = 0.7
			else
				particleStabilizer.CFrame = particleStabilizerInitialCFrame
				particleStabilizer.Size = particleStabilizerInitialSize
				particleStabilizer.Transparency = 1
			end
		else
			print("ÐÐ±ÑÐµÐºÑ Particle Stabilizer Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
		end
	end    
})

local Tab3 = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab3:AddSlider({
	Name = "Player Walkspeed",
	Min = 16,
	Max = 400,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		local player = game.Players.LocalPlayer
		if player and player.Character and player.Character:FindFirstChild("Humanoid") then
			player.Character.Humanoid.WalkSpeed = Value
		else
			print("ÐÐ³ÑÐ¾Ðº Ð¸Ð»Ð¸ Humanoid Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
		end
	end    
})

Tab3:AddSlider({
	Name = "Player Jumppower",
	Min = 8,
	Max = 500,
	Default = 8,
	Color = Color3.fromRGB(255,0,0),
	Increment = 1,
	ValueName = "Jumppower",
	Callback = function(Value)
		local player = game.Players.LocalPlayer
		if player and player.Character and player.Character:FindFirstChild("Humanoid") then
			player.Character.Humanoid.JumpHeight = Value
		else
			print("ÐÐ³ÑÐ¾Ðº Ð¸Ð»Ð¸ Humanoid Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½!")
		end
	end    
})

Tab3:AddSlider({
	Name = "Player Gravity",
	Min = 0,
	Max = 200,
	Default = 196.2,
	Color = Color3.fromRGB(255,0,0),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
		workspace.Gravity = Value
	end    
})


local Tab4 = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab4:AddButton({
	Name = "Infinite Yield Reborn",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/fuckusfm/infiniteyield-reborn/master/source'))()
  	end    
})

OrionLib:Init()
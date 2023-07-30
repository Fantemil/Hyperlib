

if getgenv().loaded then
	error("[N3xHub] This script is already loaded!")
end

getgenv().loaded = true

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local N3xHub = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = N3xHub:CreateWindow({
	Name = "N3xHub | Arm Wrestle Simulator",
	LoadingTitle = "N3xHub",
	LoadingSubtitle = "Arm Wrestle Simulator",
})

-- N3xHub Notification

N3xHub:Notify({
	Title = "N3xhub Notify",
	Content = "Thanks for using our hub.",
	Duration = 10
})

-- Variables

getgenv().Variables1_1 = {
	['AutoBiceps'] = false,
	['AutoBiceps1'] = false,
	['AutoHands'] = false,
	['AutoCardio'] = false,
	['AutoKillNpc'] = false,
}

getgenv().Variables1_2 = {
	['DumBell'] = 1,
	['BarBell'] = 1,
	['Grip'] = 1,
	['SpeedThing'] = 1,
	['NpcFight'] = 1,
}

getgenv().Variables2_1 = {
	['AutoBiceps'] = false,
	['AutoBiceps1'] = false,
	['AutoHands'] = false,
	['AutoCardio'] = false,
	['AutoKillNpc'] = false,
}

getgenv().Variables2_2 = {
	['DumBell'] = 1,
	['BarBell'] = 1,
	['Grip'] = 1,
	['SpeedThing'] = 1,
	['NpcFight'] = 1,
}

getgenv().Variables3 = {
	['AutoClaimGift'] = false,
	['AutoSpinWheel'] = false,
	['AutoRebirth'] = false,
	['AutoEquipBest'] = false,
	['AutoRedeemDaily'] = false,
}

-- Main Tab

local Tab = Window:CreateTab("Main") 
local Section = Tab:CreateSection("Main")

local Label1 = Tab:CreateLabel(game.Players.LocalPlayer.Name .. " / " .. game.Players.LocalPlayer.DisplayName .. " / " .. game:GetService("Players").LocalPlayer.AccountAge)
local Label2 = Tab:CreateLabel(os.date("%I:%M:%S %p") .. " / " .. tostring(math.floor(game:GetService("Stats").PerformanceStats.Ping:GetValue() + 0.5)) .. " ms" .. " / " .. identifyexecutor())
local Label3 = Tab:CreateLabel(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. " / " .. game.PlaceId .. " / " .. game.JobId)

local Toggle = Tab:CreateToggle({
	Name = "Auto Claim Gift",
	CurrentValue = false,
	Flag = "Auto_Claim_Gift",
	Callback = function(Value)
		getgenv().Variables3.AutoClaimGift = Value
		if Value == false then
			warn("[N3xHub]: AutoClaimGift Turned Off!")
		elseif Value == true then
			warn("[N3xHub]: AutoClaimGift Turned On!")
			wait(0.1)
			N3xHub:Notify({
				Title = "N3xhub Notify",
				Content = "AutoClaimGift Turned On!",
				Duration = 10
			})
			wait(0.2)
			while getgenv().Variables3.AutoClaimGift == true do
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("1")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("2")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("3")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("4")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("5")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("6")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("7")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("8")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("9")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("10")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("11")
				task.wait(1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TimedRewardService.RE.onClaim:FireServer("12")
				task.wait(1)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Spin Wheel",
	CurrentValue = false,
	Flag = "Auto_Spin_Wheel",
	Callback = function(Value)
		getgenv().Variables3.AutoSpinWheel = Value
		if Value == false then
			warn("[N3xHub]: AutoSpinWheel Turned Off!")
		elseif Value == true then
			warn("[N3xHub]: AutoSpinWheel Turned On!")
			wait(0.5)
			while getgenv().Variables3.AutoSpinWheel == true do
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.SpinService.RE.onSpinRequest:FireServer()
				task.wait(1)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "Auto_Rebirth",
	Callback = function(Value)
		getgenv().Variables3.AutoRebirth = Value
		if Value == false then
			warn("[N3xHub]: AutoRebirth Turned Off!")
		elseif Value == true then
			warn("[N3xHub]: AutoRebirth Turned On!")
			wait(0.5)
			while getgenv().Variables3.AutoRebirth == true do
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.RebirthService.RE.onRebirthRequest:FireServer()
				task.wait(1)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Equip Best",
	CurrentValue = false,
	Flag = "Auto_Equip_Best",
	Callback = function(Value)
		getgenv().Variables3.AutoEquipBest = Value
		if Value == false then
			warn("[N3xHub]: AutoEquipBest Turned Off!")
		elseif Value == true then
			warn("[N3xHub]: AutoEquipBest Turned On!")
			wait(0.5)
			while getgenv().Variables3.AutoEquipBest == true do
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PetService.RF.equipBest:InvokeServer(game:GetService("Players").LocalPlayer)
				task.wait(1)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Redeem Daily",
	CurrentValue = false,
	Flag = "Auto_Redeem_Daily",
	Callback = function(Value)
		getgenv().Variables3.AutoRedeemDaily = Value
		if Value == false then
			warn("[N3xHub]: AutoRedeemDaily Turned Off!")
		elseif Value == true then
			warn("[N3xHub]: AutoRedeemDaily Turned On!")
			wait(0.5)
			while getgenv().Variables3.AutoRedeemDaily == true do
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.DailyRewardService.RE.onClaimReward:FireServer()
				task.wait(1)
			end
		end
	end,
})

local Button = Tab:CreateButton({
	Name = "Redeem All Codes",
	Callback = function()
		game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.CodeRedemptionService.RE.onRedeem:FireServer("axel")
		wait(0.5)
		game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.CodeRedemptionService.RE.onRedeem:FireServer("knighty")
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Walk Speed",
	Range = {
		0,
		500
	},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "Walk_Speed",
	Callback = function(Value)
		while task.wait() do
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		end
	end,
})

local Tab = Window:CreateTab("World 1") 
local Section = Tab:CreateSection("World 1")

local Button = Tab:CreateButton({
	Name = "TP (WORLD 1)",
	Callback = function()
		game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["1"].Interactables.Teleports.Locations.BackToSchool)
	end,
})

local Input = Tab:CreateInput({
	Name = "DumBell",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables1_2.DumBell = Value
	end,
})

local Input = Tab:CreateInput({
	Name = "BarBell",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables1_2.BarBell = Value
	end,
})

local Input = Tab:CreateInput({
	Name = "Grip",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables1_2.Grip = Value
	end,
})

local Input = Tab:CreateInput({
	Name = "Cardio",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables1_2.SpeedThing = Value
	end,
})

local Input = Tab:CreateInput({
	Name = "Npc",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables1_2.NpcFight = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Biceps (DumBell, BarBell)",
	CurrentValue = false,
	Flag = "Auto_Biceps",
	Callback = function(Value)
		getgenv().Variables1_1.AutoBiceps = Value
		if Value == false then
			warn("[N3xHub]: AutoBiceps Turned Off!")
			wait(0.5)
		elseif Value == true then
			warn("[N3xHub]: AutoBiceps Turned On!")
			wait(0.5)
			game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onUnequipRequest:FireServer()
			while getgenv().Variables1_1.AutoBiceps == true do
				local selectedNpc1 = tonumber(getgenv().Variables1_2.DumBell)
				local selectedNpc2 = tonumber(getgenv().Variables1_2.BarBell)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onEquipRequest:FireServer("1", "Dumbells", selectedNpc1 .. "Kg")
				task.wait(0.2)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer()
				task.wait(0.1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onEquipRequest:FireServer(1, "Barbells", "Tier" .. selectedNpc2)
				task.wait(0.2)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer()
				task.wait(0.1)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Biceps (DumBell)",
	CurrentValue = false,
	Flag = "Auto_Biceps",
	Callback = function(Value)
		getgenv().Variables1_1.AutoBiceps1 = Value
		if Value == false then
			warn("[N3xHub]: AutoBiceps Turned Off!")
			wait(0.5)
		elseif Value == true then
			warn("[N3xHub]: AutoBiceps Turned On!")
			wait(0.5)
			game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onUnequipRequest:FireServer()
			while getgenv().Variables1_1.AutoBiceps1 == true do
				local selectedNpc1 = tonumber(getgenv().Variables1_2.DumBell)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onEquipRequest:FireServer("1", "Dumbells", selectedNpc1 .. "Kg")
				task.wait(0.2)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer()
				task.wait(0.1)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Hands",
	CurrentValue = false,
	Flag = "Auto_Hands",
	Callback = function(Value)
		for i = 1, getgenv().Variables1_2.Grip do
			getgenv().Variables1_1.AutoHands = Value
			if Value == false then
				warn("[N3xHub]: AutoHands Turned Off!")
				wait(0.5)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onUnequipRequest:FireServer()
			elseif Value == true then
				warn("[N3xHub]: AutoHands Turned On!")
				wait(0.5)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onEquipRequest:FireServer("1", "Grips", tostring(i) .. "Kg")
				while getgenv().Variables1_1.AutoHands == true do
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer()
					task.wait(0.5)
				end
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Cardio",
	CurrentValue = false,
	Flag = "Auto_Cardio",
	Callback = function(Value)
		getgenv().Variables1_1.AutoCardio = Value
		if Value == false then
			warn("[N3xHub]: AutoCardio Turned Off!")
			wait(0.5)
			game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onLeaveTreadmill:FireServer()
		elseif Value == true then
			warn("[N3xHub]: AutoCardio Turned On!")
			wait(0.5)
			game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onEnterTreadmill:FireServer()
			while getgenv().Variables1_1.AutoCardio == true do
				local selectedNpc = tonumber(getgenv().Variables1_2.SpeedThing)
				if selectedNpc == 1 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier1")
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(983.2489013671875, 5.235292911529541, 144.0415802001953, - 0.07848814874887466, - 8.513938354326456e-08, - 0.9969150424003601, 3.087329858431076e-08, 1, - 8.783353422359141e-08, 0.9969150424003601, - 3.767194911574734e-08, - 0.07848814874887466)
				elseif selectedNpc == 2 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier1")
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(983.7924194335938, 5.235292911529541, 151.87330627441406, - 0.06995134800672531, - 1.1712038450184536e-08, - 0.9975504279136658, - 1.0068799838336417e-07, 1, - 4.680241971755095e-09, 0.9975504279136658, 1.001139651179983e-07, - 0.06995134800672531)
				elseif selectedNpc == 3 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier1")
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(982.7127685546875, 5.235295295715332, 157.91432189941406, - 0.725629448890686, 5.936584557275637e-08, - 0.6880857348442078, 7.854524852746181e-08, 1, 3.4459430864330898e-09, 0.6880857348442078, - 5.1545384849305265e-08, - 0.725629448890686)
				elseif selectedNpc == 4 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier1")
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(976.1908569335938, 5.235292911529541, 154.02923583984375, - 0.999962568283081, 5.037487582626454e-08, - 0.008650069124996662, 5.058630137000364e-08, 1, - 2.422301292881457e-08, 0.008650069124996662, - 2.4659682296146457e-08, - 0.999962568283081)
				elseif selectedNpc == 5 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier1")
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(966.7262573242188, 5.235292911529541, 154.11154174804688, - 0.999962568283081, 3.69750878803643e-08, - 0.008650069124996662, 3.713019580686705e-08, 1, - 1.7770830140761973e-08, 0.008650069124996662, - 1.8091345310722318e-08, - 0.999962568283081)
				elseif selectedNpc == 6 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier1")
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(958.7947387695312, 5.235292911529541, 154.18052673339844, - 0.999962568283081, - 4.4702719748102027e-08, - 0.008650071918964386, - 4.4890267503205905e-08, 1, 2.1487513990336993e-08, 0.008650071918964386, 2.187501380035428e-08, - 0.999962568283081)
				end
				task.wait(0.5)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Kill Npc",
	CurrentValue = false,
	Flag = "Auto_Kill_Npc",
	Callback = function(Value)
		getgenv().Variables1_1.AutoKillNpc = Value
		if Value == false then
			warn("[N3xHub]: AutoKillNpc Turned Off!")
		elseif Value == true then
			warn("[N3xHub]: AutoKillNpc Turned On!")
			task.wait(0.5)
			while getgenv().Variables1_1.AutoKillNpc == true do
				local selectedNpc = tonumber(getgenv().Variables1_2.NpcFight)
				if selectedNpc == 1 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("Bully", workspace.Zones["1"].Interactables.ArmWrestling.NPC.Bully, "1")
				elseif selectedNpc == 2 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("Teacher", workspace.Zones["1"].Interactables.ArmWrestling.NPC.Teacher, "1")
				elseif selectedNpc == 3 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("GymRat", workspace.Zones["1"].Interactables.ArmWrestling.NPC.GymRat, "1")
				elseif selectedNpc == 4 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("MafiaBoss", workspace.Zones["1"].Interactables.ArmWrestling.NPC.MafiaBoss, "1")
				elseif selectedNpc == 5 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("Champion", workspace.Zones["1"].Interactables.ArmWrestling.NPC.Champion, "1")
				end
				task.wait(0.5)
			end
		end
	end,
})

local Tab = Window:CreateTab("World 2") 
local Section = Tab:CreateSection("World 2")

local Button = Tab:CreateButton({
	Name = "TP (WORLD 2)",
	Callback = function()
		game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["2"].Interactables.Teleports.Locations.Futuristic)
	end,
})


local Input = Tab:CreateInput({
	Name = "DumBell",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables2_2.DumBell = Value
	end,
})

local Input = Tab:CreateInput({
	Name = "BarBell",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables2_2.BarBell = Value
	end,
})

local Input = Tab:CreateInput({
	Name = "Grip",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables2_2.Grip = Value
	end,
})

local Input = Tab:CreateInput({
	Name = "Cardio",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables2_2.SpeedThing = Value
	end,
})

local Input = Tab:CreateInput({
	Name = "Npc",
	PlaceholderText = "Input Here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Value)
		getgenv().Variables2_2.NpcFight = Value
	end,
})


local Toggle = Tab:CreateToggle({
	Name = "Auto Biceps (DumBell, BarBell)",
	CurrentValue = false,
	Flag = "Auto_Biceps",
	Callback = function(Value)
		getgenv().Variables2_1.AutoBiceps = Value
		if Value == false then
			warn("[N3xHub]: AutoBiceps Turned Off!")
			wait(0.5)
		elseif Value == true then
			warn("[N3xHub]: AutoBiceps Turned On!")
			wait(0.5)
			game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onUnequipRequest:FireServer()
			while getgenv().Variables2_1.AutoBiceps == true do
				local selectedNpc1 = tonumber(getgenv().Variables2_2.DumBell)
				local selectedNpc2 = tonumber(getgenv().Variables2_2.BarBell)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onGuiEquipRequest:FireServer("2", "Dumbells", selectedNpc1 .. "Kg")
				task.wait(0.2)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer()
				task.wait(0.1)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onEquipRequest:FireServer(2, "Barbells", "Tier" .. selectedNpc2)
				task.wait(0.2)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer()
				task.wait(0.1)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Biceps (DumBell)",
	CurrentValue = false,
	Flag = "Auto_Biceps",
	Callback = function(Value)
		getgenv().Variables1_1.AutoBiceps1 = Value
		if Value == false then
			warn("[N3xHub]: AutoBiceps Turned Off!")
			wait(0.5)
		elseif Value == true then
			warn("[N3xHub]: AutoBiceps Turned On!")
			wait(0.5)
			game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onUnequipRequest:FireServer()
			while getgenv().Variables2_1.AutoBiceps1 == true do
				local selectedNpc1 = tonumber(getgenv().Variables2_2.DumBell)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onEquipRequest:FireServer("1", "Dumbells", selectedNpc1 .. "Kg")
				task.wait(0.2)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer()
				task.wait(0.1)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Hands",
	CurrentValue = false,
	Flag = "Auto_Hands",
	Callback = function(Value)
		for i = 1, getgenv().Variables2_2.Grip do
			getgenv().Variables2_1.AutoHands = Value
			if Value == false then
				warn("[N3xHub]: AutoHands Turned Off!")
				wait(0.5)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onUnequipRequest:FireServer()
			elseif Value == true then
				warn("[N3xHub]: AutoHands Turned On!")
				wait(0.5)
				game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onEquipRequest:FireServer("2", "Grips", tostring(i) .. "Kg")
				while getgenv().Variables2_1.AutoHands == true do
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer()
					task.wait(0.5)
				end
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Cardio",
	CurrentValue = false,
	Flag = "Auto_Cardio",
	Callback = function(Value)
		getgenv().Variables2_1.AutoCardio = Value
		if Value == false then
			warn("[N3xHub]: AutoCardio Turned Off!")
			wait(0.5)
			game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onLeaveTreadmill:FireServer()
		elseif Value == true then
			warn("[N3xHub]: AutoCardio Turned On!")
			wait(0.5)
			game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onEnterTreadmill:FireServer()
			while getgenv().Variables2_1.AutoCardio == true do
				local selectedNpc = tonumber(getgenv().Variables2_2.SpeedThing)
				if selectedNpc == 1 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier" .. tostring(selectedNpc))
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(886.5661010742188, 5.235291957855225, 395.8545837402344, 0.03427906334400177, - 5.793170387846658e-08, 0.9994122982025146, 9.78364145254318e-09, 1, 5.7630199279401495e-08, - 0.9994122982025146, 7.80238185171811e-09, 0.03427906334400177)
				elseif selectedNpc == 2 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier" .. tostring(selectedNpc))
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(886.876220703125, 5.235291957855225, 386.909912109375, 0.017713584005832672, 1.0459502419735145e-07, 0.9998431205749512, - 1.718025188779393e-08, 1, - 1.0430706254282995e-07, - 0.9998431205749512, - 1.532990445696214e-08, 0.017713584005832672)
				elseif selectedNpc == 3 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier" .. tostring(selectedNpc))
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(887.0362548828125, 5.235291957855225, 377.71209716796875, 0.017713584005832672, 1.016386192986829e-07, 0.9998431205749512, - 1.67135585371625e-08, 1, - 1.013584665088274e-07, - 0.9998431205749512, - 1.491551593346685e-08, 0.017713584005832672)
				elseif selectedNpc == 4 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier" .. tostring(selectedNpc))
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(885.5037841796875, 5.235291957855225, 368.5088806152344, - 0.03455345705151558, 6.816019038069498e-08, 0.9994028806686401, 2.391290720993311e-09, 1, - 6.811823993757571e-08, - 0.9994028806686401, 3.6142144832496115e-11, - 0.03455345705151558)
				elseif selectedNpc == 5 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier" .. tostring(selectedNpc))
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(885.428466796875, 5.235291957855225, 359.84423828125, - 0.00830725859850645, 9.215677465590488e-08, 0.999965488910675, 6.754750092596851e-09, 1, - 9.210383922209076e-08, - 0.999965488910675, 5.9893863202376e-09, - 0.00830725859850645)
				elseif selectedNpc == 6 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.TreadmillService.RE.onGiveStats:FireServer(1, "Tier" .. tostring(selectedNpc))
					task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(885.2859497070312, 5.235291957855225, 351.6462097167969, 0.026704559102654457, 1.0952305018463449e-07, 0.9996433854103088, - 1.2345714672790109e-08, 1, - 1.0923232451887088e-07, - 0.9996433854103088, - 9.4243111092851e-09, 0.026704559102654457)
				end
				task.wait(0.5)
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Kill Npc",
	CurrentValue = false,
	Flag = "Auto_Kill_Npc",
	Callback = function(Value)
		getgenv().Variables2_1.AutoKillNpc = Value
		if Value == false then
			warn("[N3xHub]: AutoKillNpc Turned Off!")
		elseif Value == true then
			warn("[N3xHub]: AutoKillNpc Turned On!")
			task.wait(0.5)
			while getgenv().Variables2_1.AutoKillNpc == true do
				local selectedNpc = tonumber(getgenv().Variables2_2.NpcFight)
				if selectedNpc == 1 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("ScrapTrader", workspace.Zones["2"].Interactables.ArmWrestling.NPC.ScrapTrader, "2")
				elseif selectedNpc == 2 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("CyberCop", workspace.Zones["2"].Interactables.ArmWrestling.NPC.CyberCop, "2")
				elseif selectedNpc == 3 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("CyberAssassin", workspace.Zones["2"].Interactables.ArmWrestling.NPC.CyberAssassin, "2")
				elseif selectedNpc == 4 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("RipperDoc", workspace.Zones["2"].Interactables.ArmWrestling.NPC.RipperDoc, "2")
				elseif selectedNpc == 5 then
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
					task.wait()
					game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("RogueAi", workspace.Zones["2"].Interactables.ArmWrestling.NPC.RogueAi, "2")
				end
				task.wait(0.5)
			end
		end
	end,
})

while task.wait() do
	Label1:Set(game.Players.LocalPlayer.Name .. " / " .. game.Players.LocalPlayer.DisplayName .. " / " .. game:GetService("Players").LocalPlayer.AccountAge)
	Label2:Set(os.date("%I:%M:%S %p") .. " / " .. tostring(math.floor(game:GetService("Stats").PerformanceStats.Ping:GetValue() + 0.5)) .. " ms" .. " / " .. identifyexecutor())
	Label3:Set(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. " / " .. game.PlaceId .. " / " .. game.JobId)
end
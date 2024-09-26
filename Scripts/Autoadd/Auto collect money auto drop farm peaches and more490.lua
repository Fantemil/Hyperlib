local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
	Title = "Sour patch kids game idek",
	SubTitle = "by jaz yk #1 fr",
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 460),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl
})
local Discord = Window:AddTab({
	Title = "Discords",
	Icon = "globe"
})
local Options = Fluent.Options
Discord:AddButton({
	Title = "Discord Invite",
	Description = "Copys Discord invite link",
	Callback = function()
		setclipboard(string)
	end
})
Discord:AddButton({
	Title = "Discord Invite OLD",
	Description = "Copys OLD Discord invite link",
	Callback = function()
		setclipboard(string2)
	end
})
local Main = Window:AddTab({
	Title = "Main",
	Icon = "globe"
})
Main:AddToggle("Farm Crates", {
	Title = "Farm Crates",
	Default = false,
	Callback = function(dsd)
		getgenv().omgjazagainfarmcrates = dsd
		task.spawn(function()
			while true do
				task.wait()
				if not getgenv().omgjazagainfarmcrates then
					break
				end
				local lootCrates = game:GetService("Workspace").LootCrates:GetChildren()
				if #lootCrates ~= 0 then
					for i, v in pairs(lootCrates) do
						for _, part in pairs(v:GetChildren()) do
							if part:IsA("Part") or part:IsA("BasePart") or part:IsA("MeshPart") then
								game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = part.CFrame
							end
						end
					end
				end
			end
		end)
	end
})

Main:AddToggle("Drop farm peaches", {
	Title = "Drop farm peaches",
	Default = false,
	Callback = function(ds)
		getgenv().omgjazfarmpeachdrops = ds
		task.spawn(function()
			while true do
				task.wait()
				if not getgenv().omgjazfarmpeachdrops then
					break
				end
				local drops = game:GetService("Workspace")["Peach Game"].Drops:GetChildren()
				if #drops ~= 0 then
					for i, v in pairs(drops) do
						task.spawn(function()
							for _, part in pairs(v:GetChildren()) do
								if part:IsA("Part") and part.Name == "BoundingBox" and part.Parent:FindFirstChild("Peach_Inner") then
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = part.CFrame
									task.wait()
								end
							end
						end)
					end
				end
			end
		end)
	end
})
Main:AddToggle("Farm Watermelon game", {
	Title = "Farm Watermelon game",
	Default = false,
	Callback = function(a)
		getgenv().omgjazfarmwatermelongame = a
		task.spawn(function()
			while true do
				task.wait()
				if not getgenv().omgjazfarmwatermelongame then
					break
				end
				for i, v in pairs(game:GetService("Workspace")["Watermelon Game"].Melons:GetChildren()) do
					for _, part in v:GetChildren() do
						if part.Name == "BoundingBox" and part:IsA("Part") then
							local checkme = part.Parent
							local tocheck = part.Parent.Parent:FindFirstChild(checkme.Name)
							if tocheck then
								game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = part.CFrame
								task.wait()
								repeat
									task.wait()
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = part.CFrame
									local args = {
										[1] = tocheck
									}
									
									game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.WatermelonGameService.RE.DamageMelon:FireServer(unpack(args))
									tocheck = part.Parent.Parent:FindFirstChild(checkme.Name)
								until tocheck == nil
								task.wait()
							end
						end
					end
				end
			end
		end)
	end
})
Main:AddToggle("Auto Collect money", {
	Title = "Auto Collect money",
	Default = false,
	Callback = function(ad)
		getgenv().omgjazmoney = ad
		task.spawn(function()
			while true do
				task.wait()
				if not getgenv().omgjazmoney then
					break
				end
				game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TycoonService.RE.CollectCash:FireServer()
			end
		end)
	end
})

Window:SelectTab(1)
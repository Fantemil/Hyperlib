getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Cultivation of Realms",
   LoadingTitle = "Crappy cultivation game script",
   LoadingSubtitle = "by bread/glucose",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = CultivationofRealms, 
      FileName = "CultivationofRealmsConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "", 
      RememberJoins = true 
   },
   KeySystem = false, 
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"Hello"} 
   }
})
local Tab = Window:CreateTab("Autofarming Stuff", 4483362458) -- Title, Image
local Section = Tab:CreateSection("AFK Farming stuff")
getgenv().test = true
local Toggle = Tab:CreateToggle({
   Name = "Auto Cultivate",
   CurrentValue = false,
   Flag = "Cult", 
   Callback = function(Value)
getgenv().test = Value
local args = {
    [1] = {
        ["value"] = true,
        ["TrValue"] = true
    }
}
while getgenv().test == true do
wait()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("onREvent"):FireServer(unpack(args))
end
   end,
})
getgenv().autobreak = true
local Toggle = Tab:CreateToggle({
   Name = "Auto Breakthrough",
   CurrentValue = false,
   Flag = "Break", 
   Callback = function(Value)
   getgenv().autobreak = Value
   while getgenv().autobreak == true do
   wait()
   game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Trascendence"):FireServer()
   end
   end,
})
local Paragraph = Tab:CreateParagraph({Title = "Note:", Content = "Autobreak somehow reduced breakthrough requirements simply by breakthroughing so fast that it keeps a certain percentage of QI from a previous rank/realm; tldr; you cultivate like 50x faster than everyone else"})
local Players = game:GetService("Players")

local Tab = Window:CreateTab("Combat Stuff", 4483362458) 
local Section = Tab:CreateSection("Hitbox Stuff")
getgenv().HitboxSize = 15
getgenv().HitboxTransparency = 0.7

getgenv().HitboxStatus = false
getgenv().TeamCheck = false
getgenv().FriendCheck = false

local Toggle = Tab:CreateToggle({
   Name = "Hitbox Extender",
   CurrentValue = false,
   Flag = "HBE1", 
   Callback = function(Value)
   getgenv().HitboxStatus = Value
    game:GetService('RunService').RenderStepped:connect(function()
		if HitboxStatus == true and TeamCheck == false and FriendCheck == false then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
        elseif HitboxStatus == true and TeamCheck == false and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                for i2,v2 in pairs(game:GetService('Players'):GetChildren()) do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name and not v2:IsFriendsWith(game:GetService('Players').LocalPlayer.UserId) then
                        pcall(function()
                            v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
                            v.Character.HumanoidRootPart.Transparency = HitboxTransparency
                            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                            v.Character.HumanoidRootPart.Material = "Neon"
                            v.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
			end
        elseif HitboxStatus == true and TeamCheck == true and FriendCheck == false then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
        elseif HitboxStatus == true and TeamCheck == true and FriendCheck == true then
            for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team and not game:GetService('Players'):IsFriendsWith(UserId) then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		else
		    for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
						v.Character.HumanoidRootPart.Transparency = 1
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
						v.Character.HumanoidRootPart.Material = "Plastic"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Hitbox Size",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Studs",
   CurrentValue = 5,
   Flag = "HBE2", 
   Callback = function(Value)
   getgenv().HitboxSize = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Hitbox Transparency",
   Range = {0, 1},
   Increment = 0.1,
   Suffix = "/1",
   CurrentValue = 0.9,
   Flag = "HBE3", 
   Callback = function(Value)
   getgenv().HitboxTransparency = Value
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Team Check (useless)",
   CurrentValue = false,
   Flag = "Team", 
   Callback = function(Value)
   getgenv().TeamCheck = Value
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Friend Check (useless if you have no friends))",
   CurrentValue = false,
   Flag = "Friend", 
   Callback = function(Value)
   getgenv().FriendCheck = Value
   end,
})
local Section = Tab:CreateSection("ESP Stuff")
local Toggle = Tab:CreateToggle({
   Name = "Highlight ESP",
   CurrentValue = true,
   Flag = "ESP", 
   Callback = function(Value)
getgenv().enabled = Value 
getgenv().filluseteamcolor = true 
getgenv().outlineuseteamcolor = true 
getgenv().fillcolor = Color3.new(0, 0, 0) 
getgenv().outlinecolor = Color3.new(1, 1, 1) 
getgenv().filltrans = 0.9 
getgenv().outlinetrans = 0 

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()

local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p,cr)
	local h = cr:WaitForChild("Humanoid")
	local hrp = cr:WaitForChild("Head")

	local text = Drawing.new("Text")
	text.Visible = false
	text.Center = true
	text.Outline = false 
	text.Font = 3
	text.Size = 16.16
	text.Color = Color3.new(170,170,170)

	local conection
	local conection2
	local conection3

	local function dc()
		text.Visible = false
		text:Remove()
		if conection then
			conection:Disconnect()
			conection = nil 
		end
		if conection2 then
			conection2:Disconnect()
			conection2 = nil 
		end
		if conection3 then
			conection3:Disconnect()
			conection3 = nil 
		end
	end

	conection2 = cr.AncestryChanged:Connect(function(_,parent)
		if not parent then
			dc()
		end
	end)

	conection3 = h.HealthChanged:Connect(function(v)
		if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
			dc()
		end
	end)

	conection = rs.RenderStepped:Connect(function()
		local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
		if hrp_onscreen and ESPName == true then
			text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
			text.Text = p.DisplayName.." (@"..p.Name..")"
			text.Visible = true
		else
			text.Visible = false
		end
	end)
end

local function p_added(p)
	if p.Character then
		esp(p,p.Character)
	end
	p.CharacterAdded:Connect(function(cr)
		esp(p,cr)
	end)
end

for i,p in next, ps:GetPlayers() do 
	if p ~= lp then
		p_added(p)
	end
end

ps.PlayerAdded:Connect(p_added)
end,
})
local Slider = Tab:CreateSlider({
   Name = "Fill Transparency",
   Range = {0, 1},
   Increment = 0.1,
   Suffix = "/1",
   CurrentValue = 1,
   Flag = "Fill", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().filltrans = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Outline Transparency",
   Range = {0, 100},
   Increment = 10,
   Suffix = "/1",
   CurrentValue = 0,
   Flag = "Outline", 
   Callback = function(Value)
   getgenv().outlinetrans = Value
   end,
})
local Paragraph = Tab:CreateParagraph({Title = "How transparency works in ROBLOX", Content = "0 is completely solid, 1 is completely transparent"})
local Section = Tab:CreateSection("Misc")
getgenv().punch = true
local Toggle = Tab:CreateToggle({
   Name = "Auto Punch",
   CurrentValue = false,
   Flag = "Punch", 
   Callback = function(Value)
   while getgenv().punch == true do
   wait()
   game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PunchEvent"):FireServer()
   end
   end,
})
Rayfield:LoadConfiguration()
print("Gui Show Up") 

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Roblox Tower Defense But Bad Script", HidePremium = false, SaveConfig = true, ConfigFolder = "SirenHead Hub"})

OrionLib:MakeNotification({
	Name = "Hey!",
	Content = " Hey Hello this version Hub is 1.4",
	Image = "rbxassetid://4483345998",
	Time = 10
})

local Tab = Window:MakeTab({
	Name = "Free Towers",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Free Units"
})
 
Tab:AddButton({
	Name = "Spawn Rifleman Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Rifleman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Blaster Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Blaster" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
  	end    
}) 

Tab:AddButton({
	Name = "Spawn Cold Gunner Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Cold Gunner" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end  
  	end    
})

Tab:AddButton({
	Name = "Spawn Golden Puncher Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Golden Puncher" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
  	end    
})

Tab:AddButton({
	Name = "Spawn Turret Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Turret" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
  	end    
})

Tab:AddButton({
	Name = "Spawn Engineer Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Engineer" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end  
  	end    
})

Tab:AddButton({
	Name = "Spawn Golden Gunner Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Golden Gunner" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
  	end    
})

Tab:AddButton({
	Name = "Spawn Flamer Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Flamer" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end  
  	end    
})

Tab:AddButton({
	Name = "Spawn Rocketer Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Rocketer" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
  	end    
})

Tab:AddButton({
	Name = "Spawn Trapper Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Trapper" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
  	end    
})

Tab:AddButton({
	Name = "Spawn Golden Flamer Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Golden Flamer" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
  	end    
})

Tab:AddButton({
	Name = "Spawn Golden Minigunner Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Golden Minigunner" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Atomic Bomber Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Atomic Bomber" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Section:AddLabel("Version 1.4") 

local Tab = Window:MakeTab({
	Name = "Special Free Towers",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Free Units"
})

Tab:AddButton({
	Name = "Spawn Water Blaster Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Water Blaster" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})


Tab:AddButton({
	Name = "Spawn Hacker Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Hacker" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Glitch Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Glitch" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})


Tab:AddButton({
	Name = "Spawn Grass Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Grass" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Caker Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Caker" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Void Gunner Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Void Gunner" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Golden Caker Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Golden Caker" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Baller Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Baller" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Void Baller Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Void Baller" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Booster Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Booster" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Astronaut New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Astronaut" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Deadly Dark New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Deadly Dark" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Boss New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Boss" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Fireworker New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Fireworker" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Snowman New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Snowman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
}) 

Tab:AddButton({
	Name = "Spawn Gifter New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Gifter" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Turkey Eater New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Turkey Eater" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})



Tab:AddButton({
	Name = "Spawn Eg Hunter New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Eg Hunter" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Graveyard New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Graveyard" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn John Doe New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "John Doe" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})

Tab:AddButton({
	Name = "Spawn Knight New Units!",
	Callback = function()
      		local function getHeadPosition(SpawnTower) local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end
 
local headPosition = getHeadPosition() if headPosition then local A_1 = "Knight" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end 
 end    
})



local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Made By SirenHead"
}) 

Section:AddLabel("Subscribe!") 
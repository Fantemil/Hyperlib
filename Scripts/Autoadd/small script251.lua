local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

getgenv().freemoney = true
getgenv().autorebirth = true

function freeMoney()
  while getgenv().freemoney == true do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Money"):FireServer("Collect", "100")
task.wait()
  end
end

function autoRebirth()
  while getgenv().autorebirth == true do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):FireServer("Rebirth")
task.wait()
  end
end

local Window = OrionLib:MakeWindow({Name = "Jumping Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionHub"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "Free Money",
	Default = false,
	Callback = function(Value)
		print(Value)
        getgenv().freemoney = Value
        freeMoney()
  end    
})
Tab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		print(Value)
        getgenv().autorebirth = Value
        autoRebirth()
  end    
})
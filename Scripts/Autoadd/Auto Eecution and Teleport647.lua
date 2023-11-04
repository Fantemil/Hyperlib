local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Titanic Simulator X (Script by FinuraBR)", "Ocean")
    
    local Main = Window:NewTab("Auto Execution")
    local MainSection = Main:NewSection("Click")


    MainSection:NewButton("ON", "", function()
        
        _G.farm = true

while wait() do
if _G.farm == true then
	local args = {
  		[1] = "Click"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RE"):WaitForChild("ClickRemote"):FireServer("Click")
   end
end
    end)
    
    MainSection:NewButton("OFF", "", function()
    
_G.farm = false

while wait() do
if _G.farm == true then
	local args = {
  		[1] = "Click"
	}

	game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RE"):WaitForChild("ClickRemote"):FireServer("Click")
   end
end
    end)
    
    local MainSection = Main:NewSection("Rebirth")
    
    MainSection:NewButton("ON", "", function()
    
    _G.farm = true

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RF"):WaitForChild("RequestRebirth"):InvokeServer()
   end
end
	end)

MainSection:NewButton("OFF", "", function()

_G.farm = false

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RF"):WaitForChild("RequestRebirth"):InvokeServer()
   end
end
	end)
	
local MainSection = Main:NewSection("Combine Hats")

MainSection:NewButton("ON", "", function()

_G.farm = true

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("HatService"):WaitForChild("RF"):WaitForChild("CombineAll"):InvokeServer()
   end
end
	end)
	
MainSection:NewButton("OFF", "", function()

_G.farm = false

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("HatService"):WaitForChild("RF"):WaitForChild("CombineAll"):InvokeServer()
   end
end
	end)
	
local MainSection = Main:NewSection("Combine Pets")

MainSection:NewButton("ON", "", function()

_G.farm = true

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PetService"):WaitForChild("RF"):WaitForChild("CombineAll"):InvokeServer()
   end
end
	end)
	
MainSection:NewButton("OFF", "", function()

_G.farm = false

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PetService"):WaitForChild("RF"):WaitForChild("CombineAll"):InvokeServer()
   end
end
	end)
	
local MainSection = Main:NewSection("Wheel Spin")

MainSection:NewButton("ON", "", function()

_G.farm = true

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("WheelService"):WaitForChild("RF"):WaitForChild("GetReward"):InvokeServer()
   end
end
	end)
	
MainSection:NewButton("OFF", "", function()

_G.farm = false

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("WheelService"):WaitForChild("RF"):WaitForChild("GetReward"):InvokeServer()
   end
end
	end)
	
local MainSection = Main:NewSection("Claim Daily Login")

MainSection:NewButton("ON", "", function()

_G.farm = true

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("DailyLoginService"):WaitForChild("RF"):WaitForChild("Claim"):InvokeServer()
   end
end
	end)
	
MainSection:NewButton("OFF", "", function()

_G.farm = false

while wait() do
if _G.farm == true then
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("DailyLoginService"):WaitForChild("RF"):WaitForChild("Claim"):InvokeServer()
   end
end
	end)
	
local MainSection = Main:NewSection("Teleport")

MainSection:NewButton("World 1", "", function()

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-880.701294, 50.2216835, 14.8417015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
	end)
	
MainSection:NewButton("World 2", "", function()

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-865.859985, 439.525848, 2479.22998, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
	end)
	
MainSection:NewButton("World 3", "", function()

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-857.869995, 2190.93091, 7231.8501, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait()
pl.CFrame = location
	end)
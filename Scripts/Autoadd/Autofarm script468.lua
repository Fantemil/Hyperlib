--[[

█ █ ▀▄▀ █▀▀   █▀ █▀▀ █▀█ █ ▀█▀ █▀█ █▀
▀▄▀ █ █ █▄▄   ▄█ █▄▄ █▀▄ █  █  █▀▀ ▄█

]]--

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("💿1% Win Obby - MADE BY VXC SCRIPTS💿", "DarkTheme")

--MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AntiAFK", "nuh uh", function()

local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(300)

end)

MainSection:NewButton("Rejoin", "yes", function()

local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)

end)

MainSection:NewButton("IY", "infinity yeld", function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

end)
--FARM
--FARM
--FARM
local MainSection = Main:NewSection("Farm")

MainSection:NewButton("TpToEnd", "Teleport you to end", function()

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new( -70, 15, -1050)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location

end)

MainSection:NewButton("StairEnd", "Teleport you", function()

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new( -363.666046, 308.482605, 82.5120087, -0.939700961, 0, -0.341998369, 0, 1, 0, 0.341998369, 0, -0.939700961)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location

end)

--this shit gui was made by vxc scripts
MainSection:NewButton("EasyObbyEnd", "Teleport you", function()

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-576.473877, -2.83050466, 28.9773712, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location

end)

MainSection:NewButton("MediumObbyEnd", "Teleport you", function()

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-588.473877, -2.83050466, -28.1476746, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location

end)

MainSection:NewButton("HardObbyEnd", "Teleport you", function()

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-633.473877, -2.78019309, -84.2142487, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location

end)

local MainSection = Main:NewSection("AutoFarm")

local isScriptRunning = false 


local function moveToLocation(x, y, z)
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(x, y, z)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.1)
    pl.CFrame = location
    wait(0)
end


local locations = {
    {-633.473877, -2.78019309, -84.2142487},
    {-588.473877, -2.83050466, -28.1476746},
    {-576.473877, -2.83050466, 28.9773712},
    {-363.666046, 308.482605, 82.5120087},
    {-70, 15, -1050},
}


local function toggleScript(state)
    if state then
        if not isScriptRunning then
            isScriptRunning = true
            while isScriptRunning do
                for i, location in ipairs(locations) do
                    moveToLocation(unpack(location))
                end
            end
        end
    else
        isScriptRunning = false
        warn("Script stopped")
    end
end

MainSection:NewToggle("Farm", "BIG MONEY!!", toggleScript)

local MainSection = Main:NewSection("Info")

MainSection:NewKeybind("HideGui", "I DONT WANNA SEE THIS SHIT", Enum.KeyCode.E, function()
	Library:ToggleUI()
end)
getgenv().acollect = false
getgenv().reward = false
getgenv().value = 0

function acollect()
	while getgenv().acollect == true do
		wait()
		for _, v in pairs(game:GetService("Workspace")["__THINGS"].Orbs:GetChildren()) do
			local name = v.Name
			local args = {[1] = {[1] = {[1] = name}}}
			workspace.__THINGS.__REMOTES:FindFirstChild("claim orbs"):FireServer(unpack(args))
		end
	end
end

function areward()
	while getgenv().reward == true do
		wait()
		VALUE = getgenv().value
		VALUE += 1
		getgenv().value = VALUE
		local value = getgenv().value
		local args = {[1] = {[1] = value}}
		workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(args))
		if getgenv().value == 12 then
			getgenv().value = 0
		end
	end
end


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pet Simulator X", "Ocean")

local Farming = Window:NewTab("Main")
local Credits = Window:NewTab("Credits")
local AutoFarm = Farming:NewSection("Main")
local Credit = Credits:NewSection("Credit:")
local Discord = Credits:NewSection("Discord")

AutoFarm:NewToggle("Auto Collect Orbs", "Auto Collect Orb", function(bool)
    getgenv().acollect = bool
    if bool then
        acollect()
    end
end)

AutoFarm:NewToggle("Auto Reward", "Auto Reward yk?", function(bool)
    getgenv().reward = bool
    if bool then
        areward()
    end
end)

Credit:NewLabel("Made By Bebedi#9960")

Discord:NewButton("Copy Discord Link", "Copy the SRM Discord URL", function()
    setclipboard("https://discord.gg/ArKmNgwXHV")
end)

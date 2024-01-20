--// Message \\--
--[[
    The original script wasnt made by me [doge#7202]
    I just forked the script and added a keybind to change the range.
    The original script creator is epzi
    Make sure to tweak the settings to your likings
    Have a great day!
    [Forked version of script made by doge#7202 on discord]
]]

--// Setting \\--
local range = 15 --The deafult range for the script
local rangeAddkeybind = Enum.KeyCode.E --Change the "E" to the keybind you want to use to add range.
local rangeSubtractkeybind = Enum.KeyCode.Q --Change the "Q" to the keybind you want to use to subtract range.
local TogglePreciseRange = Enum.KeyCode.BackSlash --Change the "BackSlash" to the key you want to toggle precise range
local DoNotDisturb = false --If its on true, the script will notifiy you if your range has been changed. if its false then it doesnt notify.
local PreciseRange = false --Keep this off if you dont want your range value to have numbers that go into the 0.01's.

--// Variable \\--
local player = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")
local CoreGui = game:GetService("StarterGui")

--// Keybind Functions \\--
UIS.InputBegan:connect(function(input)
	if input.KeyCode == rangeSubtractkeybind then
	    if PreciseRange == true then
	        range = range - 0.01
	    else
            range = range - 1
        end
        wait()
        if DoNotDisturb == false then
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "the range was set to"..range})
        end
	end
end)

UIS.InputBegan:connect(function(input)
	if input.KeyCode == rangeAddkeybind then
	    if PreciseRange == true then
	        range = range + 0.01
	    else
            range = range + 1
        end
        wait()
        if DoNotDisturb == false then
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "the range was set to"..range})
        end
	end
end)

UIS.InputBegan:connect(function(input)
	if input.KeyCode == TogglePreciseRange then
        if PreciseRange == false then
            PreciseRange = true
            if DoNotDisturb == false then
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "the Precise range was set to true"})
            end
        else
            PreciseRange = false
            if DoNotDisturb == false then
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "the Precise range was set to false"})
            end
        end
        
	end
end)

--// Script \\--
game:GetService("RunService").RenderStepped:Connect(function()
    local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
            local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
                tool:Activate()
                for i,v in next, v:GetChildren() do
                    if v:IsA("BasePart") then
                        firetouchinterest(tool.Handle,v,0)
                        firetouchinterest(tool.Handle,v,1)
                    end
                end
            end
        end
    end
end)

if DoNotDisturb == false then
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Script Load", Text = "the script loaded successfully!"})
end
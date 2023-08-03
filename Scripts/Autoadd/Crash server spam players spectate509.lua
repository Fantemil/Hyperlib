local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/teppyboy/RbxScripts/master/Misc/UI_Libraries/Zypher/Library.lua"))()

for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "BlastDeezNutsLOL!!!!" then
        v:Destroy()
    end
end

local main = library:CreateMain({
	projName = "BlastDeezNutsLOL!!!!",
	Resizable = true,
	MinSize = UDim2.new(0,400,0,400),
	MaxSize = UDim2.new(0,750,0,500),
})
 
local category = main:CreateCategory("Main")
 
local section = category:CreateSection("Made by Exxen#0001/revertsucks on scriptblox")
local section2 = category:CreateSection("Target Stuff")

local function equiper()
    fireclickdetector(game:GetService("Workspace").Lobby.TntStands.TntStand.TntShowcase.ClickDetector,1)
    
    if game.Players.LocalPlayer.Backpack:FindFirstChild("BasicTnt") then
        game.Players.LocalPlayer.Backpack:FindFirstChild("BasicTnt").Parent = game.Players.LocalPlayer.Character
    end
end

local spamHateful = false
local targetHateful = ""
local spamLoving = false

section2:Create("DropDown","DropDown", function(current)
    targetHateful = current
end,
    {
        options = {},
        search = true,
        playerlist = true
    }
)

section2:Create("Toggle","Spam on Player",function(state)
    spamHateful = state
end,
    {
        default = false,
    }
)

section2:Create("Toggle","Spectate Target",function(state)
    if state == true then
        game.Workspace.CurrentCamera.CameraSubject = game.Players[targetHateful].Character.Humanoid
    else
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid    
    end
end,
    {
        default = false,
    }
)

section:Create("Toggle","Crash/Lag Server",function(state)
    spamLoving = state
end,
    {
        default = false,
    }
)

section:Create("Button","Fix CFrame",function()
    game.Players.LocalPlayer.Character:BreakJoints()
end,
    {
        animated = true,
    }
)

local ohString1 = "BasicTnt"
game:GetService('RunService').Heartbeat:connect(function() 
    if spamHateful == true then
        equiper()
        task.wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-math.random(1,100000),math.random(0,1000000),math.random(50,128485))
        game:GetService("ReplicatedStorage").Events.PlaceTnt:InvokeServer(ohString1, workspace[targetHateful].HumanoidRootPart.CFrame)
    end

    if spamLoving == true then
        equiper()
        task.wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-math.random(1,100000),math.random(0,1000000),math.random(50,128485))
        for i,v in pairs(game.Players:GetPlayers()) do
            if workspace[v.Name] ~= nil and workspace[v.Name].HumanoidRootPart ~= nil and workspace[v.Name].Humanoid.Health ~= 0 and v.Name ~= game.Players.LocalPlayer.Name then
                game:GetService("ReplicatedStorage").Events.PlaceTnt:InvokeServer(ohString1, workspace[v.Name].HumanoidRootPart.CFrame)
            end
        end
    end
end)
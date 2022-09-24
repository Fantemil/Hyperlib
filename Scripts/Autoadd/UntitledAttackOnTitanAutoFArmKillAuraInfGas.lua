--// Variables \\--

local plr = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local noclipE = false
local antifall = nil
local tp_speed = 250
local infinite_gas = false
local infinite_blade_durability = false
local mt = getrawmetatable(game)
local nc = mt.__namecall

--// Functions \\--

local function getTitan()
    local dist, titan = math.huge 
    for i, v in pairs(Workspace:GetChildren()) do
        if v:IsA("Model") and v.Name == "Titan" and v:FindFirstChild("Humanoid").Health > 0 then 
            local mag = (plr.Character.HumanoidRootPart.Position - v:FindFirstChild("Head").Position).magnitude
            if mag < dist then 
                dist = mag 
                titan = v 
            end
        end
    end
    return titan
end

local function noclip()
 for i, v in pairs(plr.Character:GetDescendants()) do
  if v:IsA("BasePart") and v.CanCollide == true then
   v.CanCollide = false
  end
 end
end

local function moveto(obj, speed)
    local info = TweenInfo.new(((plr.Character.HumanoidRootPart.Position - obj.Position).Magnitude)/ speed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(plr.Character.HumanoidRootPart, info, {CFrame = obj})

    if not plr.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", plr.Character.HumanoidRootPart)
        antifall.Velocity = Vector3.new(0,0,0)
        noclipE = game:GetService("RunService").Stepped:Connect(noclip)
        tween:Play()
    end
        
    tween.Completed:Connect(function()
        antifall:Destroy()
        noclipE:Disconnect()
    end)
end

--// UI \\--

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "Untitled Attack On Titan",
     Style = 3,
     SizeX = 300,
     SizeY = 225,
     Theme = "Dark"
})

local Main = UI.New({
    Title = "Main"
})

local Credits = UI.New({
    Title = "Credits"
})

Main.Slider({
    Text = "TP speed",
    Callback = function(speed) tp_speed = speed end,
    Min = 100,
    Max = 500,
    Def = tp_speed
})

Main.Toggle({
    Text = "Autofarm titans",
    Callback = function(state)
        af_enabled = state
        
        while af_enabled do
            pcall(
                function()
                    if plr.Character:FindFirstChild("NameGui") then 
                        plr.Character:FindFirstChild("NameGui"):Destroy()
                    end
                    
                    plr.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                    moveto(getTitan():FindFirstChild("Head").CFrame * CFrame.new(0,0,-5), tp_speed)
                    game:GetService("ReplicatedStorage").DamageEvent:FireServer(nil, getTitan():FindFirstChild("Humanoid"), "&@&*&@&", getTitan())
                end
            )

            task.wait()
        end
    end,
    Enabled = false
})

Main.Toggle({
    Text = "Kill aura",
    Callback = function(state)
        ka_enabled = state

        while ka_enabled do
            pcall(
                function()
                    game:GetService("ReplicatedStorage").DamageEvent:FireServer(nil, getTitan():FindFirstChild("Humanoid"), "&@&*&@&", getTitan())
                end
            )
            task.wait()
        end
    end,
    Enabled = false
})

Main.Toggle({
    Text = "Infinite gas",
    Callback = function(state) infinite_gas = state end,
    Enabled = false
})

Main.Toggle({
    Text = "Infinite blade durability",
    Callback = function(state) infinite_blade_durability = state end,
    Enabled = false
})

Credits.Button({
    Text = "UI library: https://materiallua.gq/",
    Callback = function() setclipboard("https://materiallua.gq/") UI.Banner({Text = "Copied to clipboard"}) end
})

Credits.Button({
    Text = "Inf gas and blade: Alter#6089",
    Callback = function() setclipboard("Alter#6089") UI.Banner({Text = "Copied to clipboard"}) end
})

Credits.Button({
    Text = "Autofarm and kill aura: Leadmarker#1219",
    Callback = function() setclipboard("Leadmarker#1219") UI.Banner({Text = "Copied to clipboard"}) end
})

--// Misc \\--

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    if getnamecallmethod() == "FireServer" then
        if self.Name == "GasDepleteEvent" and infinite_gas then
            return
        end
        
        if self.Name == "BladeDurEvent" and infinite_blade_durability then
            return
        end
    end
    
    return nc(self, ...)
end)

setreadonly(mt, true)
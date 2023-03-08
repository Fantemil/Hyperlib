-- all you gotta do is auto click on the Play button position which you see on the screen when you join

if not game:IsLoaded() then
    repeat task.wait() until game:IsLoaded()
end

print = rconsoleprint

local old; old = hookfunction(print, function(...)
 old(...) old("\n")
end)

print("loaded")

print("doing on teleport")

pcall(function() -- put in auto execute if no synapse or just put it in auto execute because queue on teeleport is buggy and black
 game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport("loadstring(game:HttpGet('https://soggyhubv2.vercel.app/Roblox/OilWarfareBarrel.lua'))()")
    end
end)
end)

print("waiting")

repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.TeamSelectGui.MainMenu.Play ~= nil and game:GetService("Players").LocalPlayer.PlayerGui.TeamSelectGui.MainMenu.Play.Visible == true
print("waiting for you to press play")
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.TeamSelectGui.MainMenu.Visible == false

print("look in")

for useless, garbage in next,getgc() do
    if getfenv(garbage).script == game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper and typeof(garbage) == "function" then
        for number, value in next, getconstants(garbage) do
            if tonumber(value) == 0.25 then
                setconstant(garbage,number,0)
            elseif tonumber(value) == 0 then
                setconstant(garbage,number,0.25)
            end
        end
    end
end

 game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 5

print("looked in")

pcall(function()
    repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.TeamSelectGui.MainMenu.Visible == false
end)

task.wait(2);

print("joining back")

pcall(function() -- Join Base
    for i,v in next, getgc() do
        if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) then
            if getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.BaseSelect then
                local consts = getconstants(v)
                if table.find(consts, "InvokeServer") then
                    v()
                end
            end
        end
    end
end)

print("JoIned")

local vim = game:GetService("VirtualInputManager")

local function hold(keyCode, time)
  vim:SendKeyEvent(true, keyCode, false, game)
  task.wait(time)
  vim:SendKeyEvent(false, keyCode, false, game)
end

local function getNonOwnedBase()
    for i,v in next, game:GetService("Workspace").Tycoon.TycoonsLoaded:GetChildren() do
        if v.Value == false then
            return v.Name
        end
    end
end

local function Claim(base)
    local args = {[1]=base}
    game:GetService("ReplicatedStorage").Remotes.ClaimBase:InvokeServer(unpack(args))
end

if tostring(game.Players.LocalPlayer.Team) == "Loading" then
    print("Joined bease rela")
    Claim(getNonOwnedBase())
end

local Team = game.Players.LocalPlayer.Team
local Tycoon = game:GetService("Workspace").Tycoon.Tycoons[tostring(Team)]
local BarrelDeposit = Tycoon.Essentials["Oil Collector"].BarrelSlot

local function DropOffBarrel()
 print("dropping off abrel")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = BarrelDeposit.CFrame
    task.wait(0.2)
    hold(Enum.KeyCode.E, 3)
    print("dropped of fbarel")
end

local Container = {}

local function getBarrels()
    local tween = game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(.1, Enum.EasingStyle.Quart), {CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, game.Players.LocalPlayer.Character.Head.Position - Vector3.new(0,50,0))})
    tween:Play()
    for i,v in next, game:GetService("Workspace")["Game Systems"].Warehouses:GetDescendants() do
        if v.Name == "FillText" then
            Container[v.Parent.Parent.Parent.Parent.Parent.Parent.Name] = v.Text
            if v.Text == "Ready!" then
                if v.Parent.Parent:IsA("Part") then
                print("going to barreL")
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                    task.wait(.5)
                    if v.Parent.Parent.Parent.PromptPart then
                    print("has prompt")
                        hold(Enum.KeyCode.E, 3)
                        print("grabbing")
                        task.wait(1)
                        DropOffBarrel()
                        break
                    end
                end
            end
        end
    end
end
local count = tick()
game:GetService("Players").LocalPlayer.leaderstats.Cash.Changed:Connect(function()
  print("gotten cash") 
count = tick()
end)
task.spawn(function()
    while task.wait(1) do
        getBarrels()
        print("time without money: " .. math.floor(tick() - count))
        if tick() - count >=30 then
           print("rejoining er")
            loadstring(game:HttpGet("https://soggy-ware.cf/Modules/ServerHop.lua"))().Teleport()
        end
    end
end)
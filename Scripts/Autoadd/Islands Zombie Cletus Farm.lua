--instruction spawn cletus in then execute the script
game.Players.LocalPlayer.Character.LastDamagedTick:Destroy()
wait(0.01)
getgenv().hi = true -- set to false to turn it off
while hi == true and task.wait() do
   
    --variables
local HID = "5899156129"
local HPV = "550"

if tostring(game.PlaceId) == tostring(HID) and tostring(game.PlaceVersion) == HPV then
    print("Safe To Use")
end
if tostring(game.PlaceId) == tostring(HID) and tostring(game.PlaceVersion) ~= HPV then
    game.Players.LocalPlayer:Kick("Game Updated, Dont use!")
end
local remotename = "rtpfduig/rqvbUsTuvIPidigta" --put the remote name here *to get it open remote spy hit a mob and get the name of the remote*
game:GetService("Workspace").spawnPrefabs.WildIslands.hub["Halloween_assets"]:WaitForChild("CletusGrave")
game:GetService("Workspace").WildernessIsland.Entities:WaitForChild("cletusHalloween")
game:GetService("Workspace").spawnPrefabs.WildEventTriggers["cletus_boss_spawn"]:WaitForChild("ProximityPrompt")

local grave = game:GetService("Workspace").spawnPrefabs.WildIslands.hub["Halloween_assets"].CletusGrave.Part.Part.Position
local spawn =  game:GetService("Workspace").spawnPrefabs.WildEventTriggers["cletus_boss_spawn"].ProximityPrompt
local health = game:GetService("Workspace").WildernessIsland.Entities.cletusHalloween.CurrentHealth.Value
local cletus = game:GetService("Workspace").WildernessIsland.Entities.cletusHalloween.HumanoidRootPart.Position
local CFrameEnd = CFrame.new(cletus) + Vector3.new(0,5,0)
local Time = 0
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait()

--kill aura 

task.spawn(function()
local args = {
    [1] = "2FD3AD01-AAB8-450B-AAFE-E78727CE94DB",
    [2] = {
        [1] = {
            ["crit"] = true,
            ["hitUnit"] = workspace.WildernessIsland.Entities.cletusHalloween
        }
    }
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged:FindFirstChild(remotename):FireServer(unpack(args))

-- health check 

if health < 50 then
    wait(7)
    local CFrameEnd = CFrame.new(grave) + Vector3.new(0,7,0)
    local Time = 5
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait() 
fireproximityprompt(spawn,5)
end
end)
end
-- services
local players = game:GetService("Players")
local starterGui = game:GetService("StarterGui")
-- objects
local player = players.LocalPlayer
local character = player.Character
local humanoid = character:FindFirstChildWhichIsA("Humanoid")
local head, torso = character:FindFirstChild("Head"), character:FindFirstChild("UpperTorso")
local resetBindable = Instance.new("BindableEvent")
-- variables
local destroyFunc, resetBindableConnection = character.Destroy, nil
-- main
-- initializes the permadeath
player.Character = nil
player.Character = character
task.wait(players.RespawnTime + .05)

humanoid.BreakJointsOnDeath = false
humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
if humanoid.RigType == Enum.HumanoidRigType.R15 then
   task.defer(destroyFunc, (head.Neck))
end
task.defer(destroyFunc, head) -- and we destroy the head

resetBindableConnection = resetBindable.Event:Connect(function()
   starterGui:SetCore("ResetButtonCallback", true)
   resetBindableConnection:Disconnect()

   if player.Character == character then
       character:Destroy()
       local daModel = Instance.new("Model")
       local _daModelHumanoid = Instance.new("Humanoid")
       _daModelHumanoid.Parent = daModel
       player.Character = daModel

       task.delay(players.RespawnTime, destroyFunc, daModel)
   else
       player.Character:BreakJoints()
   end
end)
starterGui:SetCore("ResetButtonCallback", resetBindable)

--fixed for synapse
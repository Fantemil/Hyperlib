local UIS = game:GetService("UserInputService")
    local player = game.Players.LocalPlayer
local character = player.Character
 local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
local Naruto = Instance.new("Animation")
Naruto.AnimationId = "rbxassetid://13675136513"
local Nar = animator:LoadAnimation(Naruto)
local uis = game:GetService("UserInputService")
 local ta = true
UIS.InputBegan:connect(function(input, gameProcessed)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        if input.KeyCode == Enum.KeyCode.E then
            game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
        elseif input.KeyCode == Enum.KeyCode.R then
            game:GetService("ReplicatedStorage").RetroAbility:FireServer("Rocket Launcher")
        elseif input.KeyCode == Enum.KeyCode.T then
            game:GetService("ReplicatedStorage"):WaitForChild("RetroAbility"):FireServer("Bomb")
             elseif input.KeyCode == Enum.KeyCode.F then
                              game:GetService("ReplicatedStorage").NullAbility:FireServer()
Nar:Play()
Nar:AdjustSpeed(1)
Run()
             elseif input.KeyCode == Enum.KeyCode.Z then       
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
         Nar:Play()
Nar:AdjustSpeed(0.5)
Run() 
        end
    end
end)

 if ta == true then
Nar:Play()
Nar:AdjustSpeed(1)
Run()

 end

deb = false
plr = game.Players.LocalPlayer
if deb == false then
while true do
plr.Character.Torso:WaitForChild("Ragdollballsocket")
plr.Character.Torso.Anchored = true
deb = true
wait(1)
deb = false
plr.Character.Torso.Anchored = false
task.wait()
end
end
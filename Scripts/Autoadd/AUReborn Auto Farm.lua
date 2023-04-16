function b()
while wait(0.1) do
game:GetService("ReplicatedStorage").Remotes.Combat:FireServer()
local args = {[1] = "Reset"}
game:GetService("ReplicatedStorage").Remotes.ComboReset:FireServer(unpack(args))
local args = {[1] = "One",[2] = nil --[[Vector3]]}
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer(unpack(args))
local args = {[1] = "Two",[2] = nil --[[Vector3]]}
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer(unpack(args))
local args = {[1] = "Three",[2] = nil --[[Vector3]]}
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer(unpack(args))
local args = {[1] = "Four",[2] = nil --[[Vector3]]}
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer(unpack(args))
local args = {[1] = "Five",[2] = nil --[[Vector3]]}
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer(unpack(args))
local args = {[1] = "Six",[2] = nil --[[Vector3]]}
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer(unpack(args))
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
wait()
end
end
end
end

local a = nil
a = hookmetamethod(game, "__namecall", function(self, ...)
if getnamecallmethod() == "FireServer" and self.Name == "LowGFXSetting" then
task.spawn(b)
end
return a(self, ...)
end)
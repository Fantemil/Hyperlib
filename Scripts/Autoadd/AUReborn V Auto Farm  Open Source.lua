repeat wait() until game:IsLoaded()
--teleport To Arena
if game.PlaceId == 9845465117 then
   local CoreGui = game:GetService("StarterGui")
   CoreGui:SetCore("SendNotification", {Title = "Teleport"; Text = "Attemping to Teleport"; Duration = 5; Button1 = "Ok"; })
Wait(4)
   game:GetService("TeleportService"):Teleport(10278616640, LocalPlayer)  
end

--Start Que
if game.PlaceId == 10278616640 then
   local CoreGui = game:GetService("StarterGui")
   CoreGui:SetCore("SendNotification", {Title = "MatchMaking"; Text = "Attemping to Find a Match"; Duration = 5; Button1 = "Ok"; })
   wait()
   game:GetService("ReplicatedStorage").Queue1v1s:FireServer()
end
   
if game.PlaceId == 10278774003 then
--Farm
while task.wait() do
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
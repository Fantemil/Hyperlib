-- With TP:

local player = game.Players.LocalPlayer

while wait(0.5) do 
   local lvl = player.Levels.Normal
   local door = workspace.Doors.Normal:FindFirstChild(tonumber(lvl.Value))
   
   if door then
local args = {
    [1] = door.Answers.Answer.Value
}
game:GetService("ReplicatedStorage").Events.SubmitAnswer:FireServer(unpack(args))
       
    end
    
end

--[[ Without TP:
local player = game.Players.LocalPlayer

while wait(0.5) do 
   local lvl = player.Levels.Normal
   local door = workspace.Doors.Normal:FindFirstChild(tonumber(lvl.Value))
   
   if door then
local args = {
    [1] = door.Answers.Answer.Value
}
game:GetService("ReplicatedStorage").Events.SubmitAnswer:FireServer(unpack(args))

player.Character:MoveTo(door.PlayerSpawn.Position)
       
    end
    
end]]--
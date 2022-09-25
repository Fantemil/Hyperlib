 local player = game.Players.LocalPlayer
local char = player.Character
local runtable = nil

local gmt = getrawmetatable(game)
local old = gmt.__newindex

game.ReplicatedStorage.Hotdog_Request:Destroy()
Instance.new("RemoteEvent", game.ReplicatedStorage).Name = "Hotdog_Request" --literally do not need to use getrawmetatable, will be updated in the future if needed howerver

setreadonly(gmt, false)
gmt.__newindex = newcclosure(function(self, index, value)
   if (tostring(self) == "Humanoid" and index == "WalkSpeed" and value == 4) or (tostring(self) == "CanSprint" and index == "Value" and value == false) then
       return
   end
   return old(self, index, value)
end)
setreadonly(gmt, true)

for i,v in pairs(getconnections(char.Helding.Changed)) do
   if getfenv(v.Function).script == char.Client then
       for i,v in pairs(debug.getupvalues(v.Function)) do
           if typeof(v) == "table" and v.Current ~= nil then runtable = v break end
       end
       break
   end
end

if runtable then
   while player.Character == char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 do
       runtable.Current = 190 --nice game fucktard
       char.Client.CanSprint.Value = true
       wait(.2)
   end
end
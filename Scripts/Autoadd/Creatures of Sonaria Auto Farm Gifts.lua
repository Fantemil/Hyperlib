local Client = game.Players.LocalPlayer
local Remote = Client.RemoteEvent
local UIS = game:GetService("UserInputService")

local n; n = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "NextInteger" and getcallingscript().Name == "scramble" then
       return 1
   end
   return n(self, ...)
end)

UIS.InputBegan:connect(function(k, t)
   if k.KeyCode == Enum.KeyCode.Return and not t then
       for _, Present in pairs(workspace.DroppedGifts:GetChildren()) do
           if Present.Name == "Minigame Present" and Present:FindFirstChild("Present2") then
               Remote:FireServer("ChoiceAnswer", true)
               Remote:FireServer("ScramblerAnswer", "Adharcaiin")
           end
       end
   end
end)

while task.wait() do
   if Client.Character then
       for _, Present in pairs(workspace.DroppedGifts:GetChildren()) do
           if Present.Name == "Regular Present" and Present:FindFirstChild("Present1") then
               firetouchinterest(Client.Character.PrimaryPart, Present.Present1, 0)
               firetouchinterest(Client.Character.PrimaryPart, Present.Present1, 1)
           end
       end
   end
end
--BROUGHT TO YOU BY ELITE CORE THANKS FOR USING MY SCRIPT!--


-- Execute after joining 

old = hookmetamethod(game, "__namecall", function(self, ...)
if getnamecallmethod() == "InvokeServer" and self.Name == "UpdateDamageKey" then
   a = {...}
   getgenv().id = a[1]
end
return old(self, ...)
end)




-- After spawning (Press E to kill every zombie)

game:GetService("UserInputService").InputBegan:Connect(function(k,t)
   if not t and k.KeyCode == Enum.KeyCode.E then
       for i,v in pairs(workspace.Baddies:GetChildren()) do
           pcall(function()
               v.Humanoid.Damage:FireServer({["Knifed"] = true, ["BodyPart"] = v.HumanoidRootPart, ["Damage"] = math.huge}, id)
           end)
       end
   end
end)




-- Infinite Money

for i = 1,10000 do
   coroutine.wrap(function()
       workspace.Baddies:GetChildren()[1].Humanoid.Damage:FireServer({["Knifed"] = true, ["BodyPart"] = workspace.Baddies:GetChildren()[1].HumanoidRootPart, ["Damage"] = -150}, id)
   end)()
end
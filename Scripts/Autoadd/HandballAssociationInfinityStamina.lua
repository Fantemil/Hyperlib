local dive, sprint; for i,v in pairs(getreg()) do
   if type(v) == "function" and getinfo(v).source:find("Controls") then
       local cons = getconstants(v)
       
       if table.find(cons, "ChangeState") then
           dive = v
       elseif table.find(cons, "WalkSpeed") then
           sprint = v
       end
   end
end

local newIndex; newIndex = hookmetamethod(game, "__newindex", newcclosure(function(self, idx, value)
   if self.Name == "Frame" and self.Parent.Name == "Frame" then
       if idx == "Size" then
           return newIndex(self, idx, UDim2.new(1, 0, 1, 0))
       elseif idx == "BackgroundColor3" then
           return newIndex(self, idx, Color3.fromRGB(0, 255, 0))
       end
   end
   return newIndex(self, idx, value)
end))

task.spawn(function()
   while task.wait() do
       setupvalue(dive, 1, false)
       setupvalue(sprint, 3, 9e9)
   end
end)
local func

for i,v in pairs(getconnections(game.Players.LocalPlayer:GetMouse().Button1Down)) do
   if getinfo(v.Function).source:find("TapHandling") then
       func = v.Function
   end
end

for i,v in pairs(getupvalues(func)) do
   if type(v) == "function" then
       func = v
   end
end

while task.wait() do
   func()
end
_G.Kill = true -- change to true/false to start/stop the script
while _G.Kill == true do
   for i,v in pairs(game.Workspace.Monsters:GetChildren()) do
   v:Destroy()
   end
   wait()
end
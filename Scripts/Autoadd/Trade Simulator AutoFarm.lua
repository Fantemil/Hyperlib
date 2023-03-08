_G.Condition = true -- true turns it on, false turns it off
while _G.Condition == true do
if workspace["_yes"]:FindFirstChild("100") then
   fireclickdetector(game:GetService("Workspace")["_yes"]["100"].ClickDetector)
   print("click 100")
end
if workspace["_yes"]:FindFirstChild("1000") then
   fireclickdetector(game:GetService("Workspace")["_yes"]["1000"].ClickDetector)
   print("click 1k")
end
wait()
end
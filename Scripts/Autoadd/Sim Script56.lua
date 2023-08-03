-- please just dont ask
local API = loadstring(game:HttpGet('https://pastebin.com/raw/4zJ37q8V', true))()

-- main
_G.Enable = true
while true do
   if _G.Enable then
       game.Players.LocalPlayer:Teleport(workspace.Drops.Zone10['5'].CFrame)
       for i = 1, 4 do
           game.ReplicatedStorage.Communication.RE:FireServer('CarryItem', workspace.Drops.Zone10['5'].ProximityPrompt.ObjectText)
           task.wait(.015)
       end
       task.wait(.1)
       game.Players.LocalPlayer:Teleport(workspace.Drops.Zone10.FINISHLINE.CFrame)
       task.wait(.1)
   end
   task.wait(.1)
end
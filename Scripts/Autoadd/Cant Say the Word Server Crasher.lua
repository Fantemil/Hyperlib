-- dont skid this script pls
getgenv().enabled = false
getgenv().enabled2 = false
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local Stepped = game.RunService.Stepped
bind = "e" -- has to be lowercase
mouse.KeyDown:connect(function(key)
if key == bind then do
player.Character.HumanoidRootPart.Anchored = true -- prevents being flung
   getgenv().enabled = true
Stepped:Connect(function()
while getgenv().enabled
do
for i=0,100,1 do
game:GetService("Players").LocalPlayer.PlayerGui.Main.Frame.Amogus.Amogus.LocalScript.RemoteEvent1:FireServer()
end
getgenv().enabled = false
wait(3)
getgenv().enabled2 = true
for _, v in next, game:GetDescendants() do
   Stepped:Connect(function() if getgenv().enabled2 then do
      if v and v:IsA"Tool" and v.Parent == player.Character then do v.Parent = workspace
          end
          else if v.Parent == player.Backpack then v.Parent = player.Character wait() v.Parent = workspace
          player.Character.RightHand.RightGrip:destroy()
          getgenv().enabled2 = false
          player.Character.HumanoidRootPart.Anchored = false -- allows movment after
        
      end
end
end
end
end)
end
end
end)
end
end
end)


 -- Variables
local Mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

-- Connect
Mouse.Button1Down:Connect(function()
    if  uis:IsKeyDown(Enum.KeyCode.R) then -- hold left click and press r
 for _, b in next, game:GetDescendants() do
       if b and b:IsA"Tool" and b.Name == "Amogus" and b.Parent == workspace then
           b:destroy()
       end
 end
end
end)
_G.espEnabled = true


function addESP(part, text)
gui = Instance.new("BillboardGui", part)
esp = Instance.new("TextLabel", gui)
gui.Name = "Esp"
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0)
gui.MaxDistance = -1

esp.Text = text
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
esp.BorderSizePixel = 4
esp.BorderColor3 = Color3.new(0, 255, 255)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = 8
esp.TextColor3 = Color3.fromRGB(0, 0, 255)
end

   

while _G.espEnabled do
   players = game:GetService("Players"):GetChildren()
   if player ~= game:GetService("Players").LocalPlayer then
       for _,player in pairs(players) do
           if player.Character.Head:FindFirstChild("Esp") == nil then
               addESP(player.Character.Head, player.Name)
           else
               bounty = player.leaderstats.Bounty.Value
               distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
               player.Character.Head.Esp.TextLabel.Text = player.Name .. " (" .. math.floor(distance) .. ")   " .. bounty .. " bounty"
           end
       end
   end
   wait()
end
if _G.espEnabled == false then
   players = game:GetService("Players"):GetChildren()
   
   for _,player in pairs(players) do
       if player.Character.Head:FindFirstChild("Esp") then
           player.Character.Head:FindFirstChild("Esp"):Destroy()
       end
   end
end
   
   
   
   
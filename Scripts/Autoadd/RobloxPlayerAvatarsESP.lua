local lplr = game.Players.LocalPlayer
local cam = workspace.CurrentCamera
local esps = {}

local function img_esp(obj, state)
   local img = Drawing.new('Image')
   local esp_state = state
   
   img.Size = Vector2.new(20,20)
   img.Rounding = 16
   img.Data = game:HttpGet('https://www.roblox.com/headshot-thumbnail/image?userId=' .. tostring(obj.UserId) .. '&width=420&height=420&format=png')
   
   local conn;
   conn = game:GetService('RunService').Stepped:Connect(function()
       if obj and obj.Character and obj.Character:FindFirstChild('HumanoidRootPart') and obj.Character:FindFirstChild('Humanoid') and obj.Character.Humanoid.Health > 0 then
           local pos, onscreen = cam:WorldToViewportPoint(obj.Character.HumanoidRootPart.Position)
           
           img.Position = Vector2.new(pos.x - 7, pos.y - 25)
           
           if onscreen then
               img.Visible = esp_state
           else
               img.Visible = false
           end
       else
           img.Visible = false
       end
   end)
   
   local imglib = {}
   
   function imglib:State(bool)
       esp_state = bool
   end
   
   function imglib:Disable()
       img:Remove()
       if conn then
           conn:Disconnect()
       end
   end
   
   return imglib
end

for i,v in pairs(game.Players:GetPlayers()) do
   if v ~= lplr then
       esps[v.Name] = img_esp(v, true)
   end
end

game.Players.PlayerAdded:Connect(function(v)
   if v ~= lplr then
       esps[v.Name] = img_esp(v, true)
   end
end)

game.Players.PlayerRemoving:Connect(function(v)
   if table.find(esps, v.Name) then
       esps[v.Name]:Disable()
       table.remove(esps, v.Name)
   end
end)
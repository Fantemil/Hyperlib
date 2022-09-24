local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local Window = Flux:Window("the gui", "Press N to open/close", Color3.fromRGB(255, 110, 48), Enum.KeyCode.N)

local Tab1 = Window:Tab("do stuff", "http://www.roblox.com/asset/?id=6023426915")
Tab1:Label("Made by Nexity#3200")

Tab1:Button("try to break all stuff", "break rocks and trees", function()
   for i,v in pairs(game.Workspace.Map.Items:GetDescendants()) do
       if v.Name == "Hitbox" then
           local args = {
               [1] = Vector2.new(v.Position.x / 5, v.Position.z / 5)
           }
           
           game:GetService("ReplicatedStorage").Knit.Services.ItemService.RE.damage_item:FireServer(unpack(args))
       end
   end
end)
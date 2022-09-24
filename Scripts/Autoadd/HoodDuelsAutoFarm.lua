_G.Autofarm = true
local VirtualUser = game:GetService('VirtualUser')

local function SpawnHit()
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") then
           game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Combat"])
   elseif game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
       VirtualUser:ClickButton1(Vector2.new(math.huge,math.huge))
   end;
end;

while _G.Autofarm and wait() do
pcall(function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26.997938156128, 24.999994277954, -16.181009292603)
       SpawnHit()
   end);
end;
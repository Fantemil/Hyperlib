local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Mortem Metallum [Alpha]", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Step 1")
Section:NewButton("Dupe Crossbows", "Execute this while in the select weapon menu", function()
    local plr = game.Players.LocalPlayer
local dupe = {}

for i=1,80 do table.insert(dupe,tonumber(12)) end -- IF YOU WANT MORE THAN 80 AMMO, CHANGE THE (80) TO WHATEVER NUMBER

settings().Network.IncomingReplicationLag = math.huge
wait()
for i,v in pairs(dupe) do
   local h = v
   
   local args = {
       [1] = h,
       [2] = "0:0:0:0"
   }game:GetService("ReplicatedStorage").Item:FireServer(unpack(args))
end
wait(0.5)
settings().Network.IncomingReplicationLag = 0
wait(#dupe/19)
for i,v in pairs(plr.Backpack:GetChildren()) do
   if v.Name == "C4" or v.Name == "Fire bomb" or v.Name == "Grenade" or v.Name == "Bear trap" then
       v:Destroy()
   end
end
end)
local Section = Tab:NewSection("Step 2")
Section:NewButton("Mingun Crossbows", "Execute this ONCE", function()
    local plr = game.Players.LocalPlayer
local us = game:GetService("UserInputService")
local m = plr:GetMouse()

-- T: minigun
-- G: reload all
-- V: shoot all
-- C: shoot 3 at once (insta-kill bodyshot)

local gunning = false
us.InputBegan:Connect(function(key,pro)
   if not pro then
       if key.KeyCode == Enum.KeyCode.T then
           gunning = not gunning
           
           if gunning then
               for i,v in pairs(plr.Backpack:GetChildren()) do
                   if v:FindFirstChild("Reloaded") and v.Reloaded.Value then
                       if not gunning then return end
                       
                       plr.Character.Humanoid:EquipTool(v)
                       mouse1click()
                       wait()
                   end
               end
           end
       elseif key.KeyCode == Enum.KeyCode.G then
           plr.Character.Humanoid:UnequipTools()
           wait()
           for i,v in pairs(plr.Backpack:GetChildren()) do
               if v:FindFirstChild("Reloaded") and v.Reloaded.Value == false then
                   v.Parent = plr.Character
               end
           end
           wait(0.05)
           mouse1click()
       elseif key.KeyCode == Enum.KeyCode.V then
           plr.Character.Humanoid:UnequipTools()
           wait()
           for i,v in pairs(plr.Backpack:GetChildren()) do
               if v:FindFirstChild("Reloaded") and v.Reloaded.Value then
                   v.Parent = plr.Character
               end
           end
           wait(0.05)
           mouse1click()
       elseif key.KeyCode == Enum.KeyCode.C then
           plr.Character.Humanoid:UnequipTools()
           wait(0.05)
           local h = 0
           for i,v in pairs(plr.Backpack:GetChildren()) do
               if v:FindFirstChild("Reloaded") and v.Reloaded.Value then
                   h = h + 1
                   if h > 3 then
                       break
                   else
                       v.Parent = plr.Character
                       mouse1click()
                   end
               end
           end
       end
   end
end)
end)
Section:NewLabel("Key Controls")
Section:NewLabel("T: toggle minigun")
Section:NewLabel("G: reload all crossbows (use if you cant shoot)")
Section:NewLabel("C: shoot 3 at once (insta-kills even when bodyshot)")
Section:NewLabel("V: shoot all at once (loud, reload after)")
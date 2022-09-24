shared.Enable = false
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
Name = "âï¸ Farming",
Icon = "",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "General"
})
Tab:AddToggle({
Name = "Enable",
Default = false,
Callback = function(Value)
if Value then
           shared.Enable = true
       else
           shared.Enable = false
       end
end    
})
function getSkill_remote()
   for i,v in pairs(game:GetService("ReplicatedStorage")["_NETWORK"]:GetChildren()) do
       if i == 69 then
           return v
       end
   end
end
function useSkill(mobPos)
   local info = {
   ["Character"] = game.Players.LocalPlayer.Character,
   ["mouseHit"] = mobPos
   }
   for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameUI.HUD.Skills:GetChildren()) do
       if v:IsA("ImageButton") then
           local remote = getSkill_remote()
           remote:InvokeServer(v.Name,info)  
       end
   end
   return skills
end
function getNPC()
   pcall(function()
       for i,v in pairs(game:GetService("Workspace").Live.NPCs:GetChildren()) do
           if v.HumanoidRootPart.Anchored == false then
               local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
               if mag < 1500 then
                   repeat
                       for _,partSkill in pairs(game:GetService("Workspace").Effects:GetChildren()) do
                           if partSkill:IsA("Model") and string.find(tostring(partSkill.Name),"indicator") then
                               print("Found Indicator", partSkill:GetFullName())
                               local indicatorArea = partSkill
                               local d = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - partSkill:FindFirstChildOfClass("MeshPart").Position).Magnitude
                               if d < 50 then
                                   print("Touching Area")
                                   setclipboard(tostring(partSkill:FindFirstChildOfClass("MeshPart").BrickColor))
                                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,80,200)
                                   task.wait(2)
                               end
                           end
                       end
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
                       game:GetService("Players").LocalPlayer.ClientInputEvents.M1:Fire()
                       useSkill(v.HumanoidRootPart.CFrame)
                       task.wait()
                   until (v.Humanoid.Health <= 0) or (not shared.Enable)
               end
           end
       end
   end)
end
task.spawn(function()
   while true do
       if shared.Enable then
           getNPC()
       end
       task.wait()
   end
end)
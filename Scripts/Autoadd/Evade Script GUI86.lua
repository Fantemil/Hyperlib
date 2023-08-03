--Evade Script Gui Best--
--We will always update this script for you to have a good experience--
--Script Error & Auto Jump Error Please Support me in Youtube or Gmail 🎫--
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Evade Script DevYT", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
-- auto jump works and if u says it doesnt u just dont know how to bhop sorry? also you have to jump first to enable the bhop thing
local Tab = Window:MakeTab({
Name =  "Esp options",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

Tab:AddToggle({
Name = "Esp toggle",
Default = true,
Callback = function(Value)
getgenv().toggleespmpt = Value
end    
})

Tab:AddColorpicker({
Name = "Esp colour",
Default = Color3.fromRGB(255, 255, 255),
Callback = function(Value)
getgenv().mptespcolour = Value
end  
})

Tab:AddSlider({
Name = "Esp max distance",
Min = 1,
Max = 100000,
Default = 100000,
Color = Color3.fromRGB(255,255,255),
Increment = 250,
ValueName = "studs",
Callback = function(Value)
getgenv().mptespdistance = Value
end    
})

Tab:AddSlider({
Name = "Esp thickness",
Min = 1,
Max = 30,
Default = 2,
Color = Color3.fromRGB(255,255,255),
Increment = 1,
ValueName = "thickness",
Callback = function(Value)
getgenv().mptespthickness = Value
end    
})

local Tab1 = Window:MakeTab({
Name =  "Auto jump ",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
getgenv().autojumpmpt = true
function autojump()
   local plr = game:GetService'Players'.LocalPlayer
   repeat wait() until plr.Character ~= nil
plr.Character:WaitForChild'Humanoid'.StateChanged:Connect(function(old,new)
   if new == Enum.HumanoidStateType.Landed and autojumpmpt then
       plr.Character:WaitForChild'Humanoid':ChangeState("Jumping")
   end
end)
end
autojump()
game:GetService'Players'.LocalPlayer.CharacterAdded:Connect(autojump)
Tab1:AddBind({
Name = "Toggle auto jump",
Default = Enum.KeyCode.F,
Hold = false,
Callback = function()
if getgenv().autojumpmpt == true then
   getgenv().autojumpmpt = false
   else
       getgenv().autojumpmpt = true
end
end    
})

local cam = workspace.CurrentCamera
local rs = game:GetService'RunService'

getgenv().toggleespmpt = true
getgenv().Thickmpt = 2
function esp(plr)
   if game:GetService'Players':GetPlayerFromCharacter(plr) == nil then
   local rat = Drawing.new("Line")
   rs.RenderStepped:Connect(function()
       if plr:FindFirstChild'HumanoidRootPart' then
           local vector,screen = cam:WorldToViewportPoint(plr.HumanoidRootPart.Position)
           if screen then
               rat.Visible = toggleespmpt
               rat.Thickness = Thickmpt
               rat.From = Vector2.new(cam.ViewportSize.X / 2,cam.ViewportSize.Y / 1)
               rat.To = Vector2.new(vector.X,vector.Y)
               rat.Color = getgenv().mptespcolour
               rat.Thickness = getgenv().mptespthickness
               else
                   rat.Visible = false
           end
           else
               pcall(function()
               rat.Visible = false
               end)
       end
           if not plr:FindFirstChild'HumanoidRootPart' or not plr:FindFirstChild'HumanoidRootPart':IsDescendantOf(game:GetService'Workspace') then
               pcall(function()
               rat:Remove()
               end)
       end
   end)
end
end
   
   for i,v in pairs(game:GetService'Workspace'.Game.Players:GetChildren()) do
       esp(v)

end
   game:GetService'Workspace'.Game.Players.ChildAdded:Connect(function(plr)
       esp(plr)
   end)
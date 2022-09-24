local Outlines = true
local OutlineColoring = Color3.fromRGB(255, 255, 255)
local OutlineFill = false
local FillOpacity = 1
local FillColoring = Color3.fromRGB(255, 255, 255)

local NameTags = true
local TextFont = Enum.Font.RobotoMono
local NameColor = Color3.fromRGB(255, 255, 255)
local NamePositioning = false

--[[
   By Polarrr#0001 :)
   https://v3rmillion.net/member.php?action=profile&uid=2340618
--]]

--// Don't Touch!
local Folder = Instance.new("Folder", game:GetService("CoreGui"))
Folder.Name = ""

AddOutline = function(Character)
   local Highlight = Instance.new("Highlight", Folder)
   
   Highlight.OutlineColor = OutlineColoring
   Highlight.Adornee = Character
   
   if OutlineFill == true then
       Highlight.FillColor = FillColoring
       Highlight.FillTransparency = FillOpacity
   else
       Highlight.FillTransparency = 1
   end
end

AddNameTag = function(Character)
   local BGui = Instance.new("BillboardGui", Folder)
   local Frame = Instance.new("Frame", BGui)
   local TextLabel = Instance.new("TextLabel", Frame)
   
   BGui.Adornee = Character:WaitForChild("Head")
   BGui.StudsOffset = Vector3.new(0, 3, 0)
   BGui.AlwaysOnTop = true
   
   BGui.Size = UDim2.new(4, 0, 0.5, 0)
   Frame.Size = UDim2.new(1, 0, 1, 0)
   TextLabel.Size = UDim2.new(1, 0, 1, 0)
   
   Frame.BackgroundTransparency = 1
   TextLabel.BackgroundTransparency = 1
   
   TextLabel.Text = Character.Name
   TextLabel.Font = TextFont
   TextLabel.TextColor3 = NameColor
   TextLabel.TextScaled = NamePositioning
end

for i, v in ipairs(game:GetService("Players"):GetPlayers()) do
   if v ~= game:GetService("Players").LocalPlayer then
       v.CharacterAdded:Connect(function(Character)
           if Outlines == true then
               AddOutline(Character)
           end
           if NameTags == true then
               AddNameTag(Character)
           end
       end)
       
       if v.Character then
           if Outlines == true then
               AddOutline(v.Character)
           end
           if NameTags == true then
               AddNameTag(v.Character)
           end
       end
   end
end

game:GetService("Players").PlayerAdded:Connect(function(Player)
   Player.CharacterAdded:Connect(function(Character)
       if Outlines == true then
           AddOutline(Character)
       end
       if NameTags == true then
           AddNameTag(Character)
       end
   end)
end)
while wait() do 
fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt)
local Service = game:GetService("TweenService")
local Info = TweenInfo.new(3)
local Player = game.Players.LocalPlayer.Character.HumanoidRootPart
local Anim = {CFrame = game:GetService("Workspace").Map.Jobs.InAndOut.Takeout.CFrame} 

local Tween = Service:Create(Player,
 Info,
 Anim)
Tween:Play()

end 
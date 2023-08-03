for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA("Seat") then
		print(v.Parent.Name)
       v:Destroy()
	end	
end
for i,v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
	if v:IsA("Part") then
local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local TweenService = game:GetService("TweenService")

local TweenInformation = TweenInfo.new(
3, -- Time
Enum.EasingStyle.Linear, -- EasingStyle
Enum.EasingDirection.Out, -- EasingDirection
0, -- RepeatCount (when less than zero the tween will loop indefinitely)
false, -- Reverses (tween will reverse once reaching it's goal)
0 -- DelayTime
)
 
local Goal = {}
Goal.CFrame = v.CFrame
local Tween = TweenService:Create(HumanoidRootPart, TweenInformation, Goal)

Tween:Play()
Tween.Completed:Wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
fireclickdetector(v.ClickDetector)
fireclickdetector(v.ClickDetector)
fireclickdetector(v.ClickDetector)
fireclickdetector(v.ClickDetector)
wait(1.5)
fireclickdetector(v.ClickDetector)
fireclickdetector(v.ClickDetector)
fireclickdetector(v.ClickDetector)
fireclickdetector(v.ClickDetector)
	end	
end
local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for i,v in pairs(Servers.data) do
  if v.playing ~= v.maxPlayers then
      game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
  end
end
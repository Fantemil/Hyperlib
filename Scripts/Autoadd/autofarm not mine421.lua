
warn("Anti afk running")
game:GetService("Players").LocalPlayer.Idled:connect(function()
warn("Anti afk ran")
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
getfenv().grav = workspace.Gravity
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/ui%20libs2"))()
local example = library:CreateWindow({
  text = "Vehicle Legends"
})
example:AddToggle("Auto Farm", function(state)
    getfenv().autotest = (state and true or false)
    while getfenv().autotest do
    local chr = game.Players.LocalPlayer.Character
local car =game:GetService("Workspace").Vehicles[game.Players.LocalPlayer.Name.."'s Car"]
car.PrimaryPart=car.Weight
dist = (chr.HumanoidRootPart.Position-car.PrimaryPart.CFrame.LookVector*1000).Magnitude
local TweenService = game:GetService("TweenService")
local TweenInfoToUse = TweenInfo.new(dist/400, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, true, 0)

local TweenValue = Instance.new("CFrameValue")
TweenValue.Value = car:GetPrimaryPartCFrame()
    
TweenValue.Changed:Connect(function()
car:SetPrimaryPartCFrame(TweenValue.Value)
end)
local OnTween = TweenService:Create(TweenValue, TweenInfoToUse, {Value=car.PrimaryPart.CFrame+car.PrimaryPart.CFrame.LookVector*1000})
OnTween:Play()
OnTween.Completed:Wait()
end
end)
example:AddToggle("Auto Circuit Race", function(state)
getfenv().test = (state and true or false)
while getfenv().test do
task.wait()
if game:GetService("Players").LocalPlayer.PlayerGui.Races.Timer.Visible == true and game:GetService("Players").LocalPlayer.PlayerGui.Races.Timer.Text == "1" then
task.wait(1)
local checks = #game:GetService("Workspace").RaceProps.Checkpoints:GetChildren()
for a=1,2 do
for i=1,checks do
local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").RaceProps.Checkpoints[tostring(i)].Display.Checkpoint.Position).magnitude
local car =game:GetService("Workspace").Vehicles[game.Players.LocalPlayer.Name.."'s Car"]
local TweenService = game:GetService("TweenService")
local TweenInfoToUse = TweenInfo.new(dist/440, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
local TweenValue = Instance.new("CFrameValue")
TweenValue.Value = car:GetPrimaryPartCFrame()        
TweenValue.Changed:Connect(function()
car:PivotTo(TweenValue.Value)
end)            
local OnTween = TweenService:Create(TweenValue, TweenInfoToUse, {Value=game:GetService("Workspace").RaceProps.Checkpoints[tostring(i)].Display.Checkpoint.CFrame})
OnTween:Play()
OnTween.Completed:Wait()
end
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Races.Timer.Visible == false and not game:GetService("Workspace").RaceProps:FindFirstChild("Checkpoints") and game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-178.26217651367188, 17.12904930114746, -751.5301513671875)) > 15 then
local car =game:GetService("Workspace").Vehicles[game.Players.LocalPlayer.Name.."'s Car"]
car:PivotTo(CFrame.new(-178.26217651367188, 17.12904930114746, -751.5301513671875))
wait(1)
end
end
end)
example:AddToggle("Auto Collect Eggs", function(state)
    getfenv().collectegg = (state and true or false)
while getfenv().collectegg do
task.wait()
for i,v in pairs(workspace.Eggs:GetDescendants()) do
    if v.ClassName == "MeshPart" and string.find(v.Name,"Egg") and v.Transparency ~= 1 and getfenv().collectegg then
        repeat task.wait()
        local chr = game.Players.LocalPlayer.Character
        local car =game:GetService("Workspace").Vehicles[game.Players.LocalPlayer.Name.."'s Car"]
    if chr.Humanoid.SeatPart == nil then
chr.HumanoidRootPart.CFrame = v.CFrame
        elseif chr.Humanoid.SeatPart ~= nil then
            car:PivotTo(v.CFrame)
    end
until v.Transparency == 1 or getfenv().collectegg == false
end
end
end
end)
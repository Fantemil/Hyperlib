local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("e621")
local b = w:CreateFolder("warrior sim")
b:Toggle("Autofarm",function(bool)
   shared.af = bool
end)
b:Toggle("Collect Coins",function(bool)
   shared.cf = bool
end)
b:Toggle("Autofarm Moon",function(bool)
   shared.moon = bool
end)
b:DestroyGui()
while game.RunService.RenderStepped:wait() do
   pcall(function()
       game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
       game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
   end)
   for i=1,#workspace.newMap.Zones:GetChildren() do
       v=workspace.newMap.Zones:GetChildren()[i]
    if v.Zone.Value == game.Players.LocalPlayer.Data.Zone.Value then
    z = v
    end
    if v:FindFirstChild("CoinStorage") then
       coinslave=v.CoinStorage
    end
   end
   if shared.cf then
       pcall(function()--the if thens are getting fucking annoying
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=coinslave:FindFirstChild("Detector",true).CFrame
           firetouchinterest(coinslave:FindFirstChild("Detector",true),game.Players.LocalPlayer.Character.HumanoidRootPart,0)
           firetouchinterest(coinslave:FindFirstChild("Detector",true),game.Players.LocalPlayer.Character.HumanoidRootPart,1)
       end)
   end
   if shared.af then
       pcall(function()
           game:GetService("ReplicatedStorage").RemoteEvents.Client.ChangeZone:FireServer(z.Name)
        for i=1,#z.Enemies:GetChildren() do
           v=z.Enemies:GetChildren()[i]
        if v:FindFirstChild("Head") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
        m = v
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = m.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
        local args = {
        [1] = m.Humanoid,
        [2] = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Model"),
        [3] = m.Head.Position,
        [4] = 5
        }
        game:GetService("ReplicatedStorage").RemoteEvents.Client.SwordAttack:FireServer(unpack(args))
        if isnetworkowner(m.HumanoidRootPart) then
        m.Humanoid.Health = 0
        if not shared.moon then
           game:GetService("ReplicatedStorage").RemoteEvents.Client.touchedDetector:FireServer(0)
        else
           game:GetService("ReplicatedStorage").RemoteEvents.Client.touchedDetector:FireServer(1)
        end
        end
        end
        end
    end)
   end
end
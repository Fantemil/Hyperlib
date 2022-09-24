-- Settings
local Settings = {
   Mobs = {"Chi Expert", "Kick Boxer"}, -- Mob Name(s)
   Key = "O", -- Key To Stop Script
   Transformation = false, -- Auto Transformation
   Speed = 1000 -- Teleportation Speed
}

-- Objects
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local Mouse = LocalPlayer:GetMouse()
Mouse.TargetFilter = LocalPlayer.Character

local Input = ""
local Toggle = false

local Timing = os.clock or tick
local Start = Timing()

-- Functions
local Teleport = function(CFrame)
   local Time = (LocalPlayer.Character.HumanoidRootPart.Position - CFrame.Position).Magnitude / (Settings.Speed * 10)
   if (LocalPlayer.Character.HumanoidRootPart.Position - CFrame.Position).Magnitude < 10 then
       LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
   else
       TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame}):Play()
       wait(Time)
   end
end

local TransformationText = function(Description)
   local Strings = {"%Hold X for ", "%Charge for ", "% seconds then press", "% seconds and then press", "%Press "}
   for _,v in pairs(Strings) do
       Description = string.gsub(Description, v, "")
   end
   local Time, Key = string.sub(Description, 1, 3), string.sub(Description, 5, 5)
   if not tonumber(Time) then Time, Key = 0, string.sub(Description, 1, 1) end
   return tonumber(Time), string.lower(Key)
end

local TransformationInfo = function()
   local Form;
   for _,v in pairs(LocalPlayer.Backpack:GetChildren()) do
       if v.ClassName == "BoolValue" and v:FindFirstChild("Req") and v.Req:FindFirstChild("Zenni") and v.Req:FindFirstChild("Desc") and v.Req.Desc.Value ~= "Transform while at low health and ki" then
           if not Form then Form = v end
           if v.Req.Zenni.Value > Form.Req.Zenni.Value then
               Form = v
           end
       end
   end
   if Form and Form:FindFirstChild("Req") then return TransformationText(Form.Req.Desc.Value) end
end

local WaitForChildWhichIsA = function(Parent, Class)
local Child = Parent:FindFirstChildOfClass(Class)
while not Child or Child.ClassName ~= Class do
Child = Parent.ChildAdded:Wait()
end
return Child
end

local Transformation = function()
   if LocalPlayer.Character.Humanoid.Health <= 1 and Settings.Transformation then
       LocalPlayer.Character:BreakJoints() LocalPlayer.CharacterAdded:Wait() LocalPlayer:WaitForChild("Backpack")
       WaitForChildWhichIsA(LocalPlayer.Backpack, "BoolValue") wait()
       local Time, Key = TransformationInfo()
       if Time then
           if Time == 0 then LocalPlayer.Backpack.ServerTraits.Transform:FireServer(Key) else
           LocalPlayer.Backpack.ServerTraits.Input:FireServer({"x"}, Mouse.Hit)
           wait(Time + 0.05)
           LocalPlayer.Backpack.ServerTraits.Transform:FireServer(Key)
           LocalPlayer.Backpack.ServerTraits.Input:FireServer({"xoff"}, Mouse.Hit) end
       end
   end
end

-- Start
UserInputService.InputBegan:Connect(function(Input)
   if string.lower(Input.KeyCode.Name) == string.lower(Settings.Key) then Toggle = true end
end)

for _,a in pairs(debug.getregistry()) do
   if type(a) == 'function' and getfenv(a).script == LocalPlayer.PlayerGui.LocalScript then
       for b,c in pairs(debug.getconstants(a)) do if b == 153 and c ~= "C1" then
           Input = c
       end end
   end
end

LocalPlayer.Character:BreakJoints()
repeat wait()
   for _,v in pairs(Workspace.Live:GetChildren()) do
       if not Players:GetPlayerFromCharacter(v) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("OriginalName") and table.find(Settings.Mobs, v.OriginalName.Value) then
           repeat wait()
               if v.HumanoidRootPart.CFrame.Y < 1000 then
                   Transformation()
                   Teleport(v.HumanoidRootPart.CFrame + v.HumanoidRootPart.CFrame.LookVector * -4)
                   spawn(function()
                       if Timing() - Start > 0.3 then
                           LocalPlayer.Backpack.ServerTraits.Input:FireServer({Input}, CFrame.new(0,0,0), nil, false)
                           Start = Timing()
                       end
                   end)
                   Camera.CFrame = v.HumanoidRootPart.CFrame
               end
           until v.Humanoid.Health == 0 or Toggle
           if Toggle then return end
           v:Destroy()
       end
   end
until nil
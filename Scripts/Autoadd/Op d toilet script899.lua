function K() spawn(function () while getgenv().K do
	for i, v in pairs(workspace.Toilets:GetChildren()) do if v:FindFirstChild("FlushRE") then local args = {[1] = 1} v.FlushRE:FireServer(unpack(args)) end end wait()
		end
	end)
end
function R1() spawn(function () while getgenv().R1 do local args = {[1] = "ray"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() end end) end
function R2() spawn(function () while getgenv().R2 do local args = {[1] = "ray2"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray2"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray2"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray2"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() end end) end
function R3() spawn(function () while getgenv().R3 do local args = {[1] = "ray3"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray3"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray3"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray3"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() end end) end
function R4() spawn(function () while getgenv().R4 do local args = {[1] = "ray4"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray4"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray4"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray4"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() end end) end
function R5() spawn(function () while getgenv().R5 do local args = {[1] = "ray5"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray5"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray5"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() local args = {[1] = "ray5"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() end end) end
function W() spawn(function () while getgenv().W do local args = {[1] = "wink"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() end end) end
function T() spawn(function () while getgenv().T do local args = {[1] = "tp_"}game:GetService("ReplicatedStorage").Remote.AbilityInit:InvokeServer(unpack(args)) wait() end end) end
function D() spawn(function () while getgenv().D do local args = {[1] = Vector3.new(-396, 247, -168)} game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dual Disinfector").Event:FireServer(unpack(args)) wait() end end) end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Skibi Toilets: Universe")

local b = w:CreateFolder("Main")

b:Toggle("Kill All/Inf. Kills",function(val) getgenv().K = val K() end)

local b = w:CreateFolder("Cameraman Abilities")

b:Toggle("Blue Ray",function(val) getgenv().R1 = val R1() end)
b:Toggle("Red Ray",function(val) getgenv().R2 = val R2() end)
b:Toggle("White Ray",function(val) getgenv().R3 = val R3() end)
b:Toggle("Yellow Ray",function(val) getgenv().R4 = val R4() end)
b:Toggle("Round Ray",function(val) getgenv().R5 = val R5() end)
b:Toggle("Wink",function(val) getgenv().W = val W() end)
b:Toggle("Disinfector",function(val) getgenv().D = val D() end)
b:Toggle("Teleport",function(val) getgenv().T = val T() end)

b:Label("Made by LxghtSvde2",{TextSize = 21; TextColor = Color3.fromRGB(255,255,255); BgColor = Color3.fromRGB(38, 38, 38);})

local w = library:CreateWindow("LocalPlayer")

local b = w:CreateFolder("LP")

b:DestroyGui()


b:Slider("WalkSpeed",{min = 0; max = 10000; precise = false;},function(val) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val end)
b:Slider("JumpPower",{min = 0; max = 10000; precise = false;},function(val) game.Players.LocalPlayer.Character.Humanoid.JumpPower = val end)
b:Slider("HipHeight",{min = 0; max = 10000; precise = false;},function(val) game.Players.LocalPlayer.Character.Humanoid.HipHeight = val end)
b:Slider("Gravity",{min = 0; max = 360; precise = false;},function(val) game.workspace.Gravity = val end)
b:Slider("FOV",{min = 0;max = 120;precise = false;},function(val) game.workspace.CurrentCamera.FieldOfView = val end)

function TPCFrame(Player_CFrame) if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player_CFrame end end
function RTPCFrame(M_CF) if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then M_CF.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end end
function PHP(Player_HP) if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then game.Players.LocalPlayer.Character.Humanoid.Health = Player_HP end end
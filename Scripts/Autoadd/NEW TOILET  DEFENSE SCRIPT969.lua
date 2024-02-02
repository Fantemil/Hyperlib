
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("[NEW!] ❄️TOILET TOWER DEFENSE!❄️ SCRIPT", "DarkTheme")

local Tab = Window:NewTab("HI")

local Section = Tab:NewSection("SIX SCRIPT")

local Tab = Window:NewTab("MAIN")

local Section = Tab:NewSection("ALL UNITS")

Section:NewButton("CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Cameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end

end)

Section:NewButton("SPEAKERMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Speakerman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end

end)

Section:NewButton("CAMERA WOMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Camerawoman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("LARGE CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "LargeCameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("LARGE SPEAKERMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "LargeSpeakerman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TV MAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "TVMan" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("ELF SPEAKERMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "ElfSpeakerman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("ELF TV MAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "ElfTvMan" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("LASER CAMERAMAN CAR", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "LaserCameramanCar" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("LARGE TV MAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "LargeTVMan" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("ENGINEER CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "EngineerCameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("ANGRY CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "AngryCameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TV WOMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "TvWoman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("ATTACK HELI", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "AttackHelicopter" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("NINJA CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "NinjaCameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("NINJA CAMERAMAN GLITCH UPDATE", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "NinjaCameramanUpgraded" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("MECH CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "MechCamera" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("SKIBIDI FRIEND LOL", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "SkibiFriend" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("CAMERA CAR", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "CameraCar1" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TITAN CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "TitanCameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TITAN SPEAKERMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Titan Speakerman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TITAN TV MAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "TitanTvMan" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("UTC DAMAGED", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "UTCDamaged" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("UTS DAMAGED", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "UTSDamaged" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("CINEMAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Cinemaman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("UTS", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "UTS" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("UTC", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "UTC" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("CAMERA SANTA", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "CameraClaus" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("UTCM", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "UpgradedCinemaman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)
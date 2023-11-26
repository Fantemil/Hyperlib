
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("SKIBIDI TOWER DEFENSE SCRIPT", "DarkTheme")

local Tab = Window:NewTab("BY ROBLOXSCRIPTSYT2")

local Section = Tab:NewSection("FOURTH SCRIPT")

local Tab = Window:NewTab("MAIN")

local Section = Tab:NewSection("ALL UNITS")

Section:NewButton("SPEAKERMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Speakerman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end

end)

Section:NewButton("CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Cameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end

end)

Section:NewButton("LARGE CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Large Cameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("LARGE SPEAKERMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Large Speakerman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("DARK SPEAKERMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Dark Speakerman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TV MAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "TV-Man" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("NINJA CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Ninja Cameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TV WOMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "TV-Woman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("SCIENTIST CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Scientist Cameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("LARGE TV MAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Large TV-Man" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TITAN SPEAKERMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Titan Speakerman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TITAN CAMERAMAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Titan Cameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TITAN CLOCK MAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Titan Clockman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TITAN TV MAN", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Titan TV-Man" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("UTC", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Upgraded Titan Cameraman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("TCM", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Titan Cinemaman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)

Section:NewButton("UTCM", "ButtonInfo", function() local function getHeadPosition() local player = game.Players.LocalPlayer local character = player.Character if character then local humanoid = character:FindFirstChild("Humanoid") if humanoid then local head = character:FindFirstChild("Head") if head then return head.Position end end end return nil end

local headPosition = getHeadPosition() if headPosition then local A_1 = "Upgraded Titan Cinemaman" local A_2 = CFrame.new(headPosition) local Event = game:GetService("ReplicatedStorage").Functions.SpawnTower Event:InvokeServer(A_1, A_2) end end)
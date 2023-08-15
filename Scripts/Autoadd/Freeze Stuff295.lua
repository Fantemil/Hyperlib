ocal Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Lonely nuker", "DarkTheme")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Nuking")
local Section2 = Tab:NewSection("Duping")

Section:NewButton("Grenade", "freeze grenade", function()
local grenade = game.Players.LocalPlayer.Backpack:FindFirstChild("Grenade")
grenade.Parent = game.Players.LocalPlayer.Character
 for A = 1, 50 do
    grenade.start:FireServer()
end


wait(3)

for B = 1, 50 do
local args = {
        [1] = game.Players.LocalPlayer.Character.Torso.Position - Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50)),
        [2] = 1686851243.277296,
        [3] = game.Players.LocalPlayer.Character.Head.Position - Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50))
        }

grenade.throw:FireServer(unpack(args))
end
end)

Section:NewButton("Fire bomb", "freeze fire", function()
local grenade = game.Players.LocalPlayer.Backpack:FindFirstChild("Fire bomb")
grenade.Parent = game.Players.LocalPlayer.Character
 for A = 1, 50 do
        grenade.start:FireServer()
end


wait(3)

for B = 1, 50 do
local args = {
        [1] = game.Players.LocalPlayer.Character.Torso.Position - Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50)),
        [2] = 1686851243.277296,
        [3] = game.Players.LocalPlayer.Character.Head.Position - Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50))
        }

grenade.throw:FireServer(unpack(args))
end
end)


Section:NewButton("Water flask", "freeze water", function()
local grenade = game.Players.LocalPlayer.Backpack:FindFirstChild("Water flask")
grenade.Parent = game.Players.LocalPlayer.Character
 for A = 1, 50 do
        grenade.start:FireServer()
end


wait(1)

for B = 1, 50 do
local args = {
        [1] = game.Players.LocalPlayer.Character.Torso.Position - Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50)),
        [2] = 1686851243.277296,
        [3] = game.Players.LocalPlayer.Character.Head.Position - Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50))
        }

grenade.throw:FireServer(unpack(args))
end
end)



Section:NewButton("Poison flask", "freeze poison", function()
local grenade = game.Players.LocalPlayer.Backpack:FindFirstChild("Poison flask")
grenade.Parent = game.Players.LocalPlayer.Character
 for A = 1, 50 do
        grenade.start:FireServer()
end


wait(2)

for B = 1, 50 do
local args = {
        [1] = game.Players.LocalPlayer.Character.Torso.Position - Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50)),
        [2] = 1686851243.277296,
        [3] = game.Players.LocalPlayer.Character.Head.Position - Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50))
        }

grenade.throw:FireServer(unpack(args))
end
end)



Section2:NewButton("Dupe grenade", "dupes", function()
    for i = 1, 100 do
        local args = {
        [1] = 0,
        [2] = "0:0:0:0"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Item"):FireServer(unpack(args))
 end

 wait(6)

 for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "Fists" or v.Name == "C4" or v.Name == "Fire bomb" or v.Name == "Bear trap" or v.Name == "Water flask" or v.Name == "Poison flask" then
        v:Destroy()
        wait(0.00001)
    end
 end
end)


Section2:NewButton("Dupe fire bomb", "dupes", function()
    for i = 1, 100 do
        local args = {
        [1] = 0,
        [2] = "0:0:0:0"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Item"):FireServer(unpack(args))
 end

 wait(6)

 for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "Fists" or v.Name == "C4" or v.Name == "Grenade" or v.Name == "Bear trap" or v.Name == "Water flask" or v.Name == "Poison flask" then
        v:Destroy()
        wait(0.00001)
    end
 end
end)



Section2:NewButton("Dupe Water flask", "dupes", function()
    for i = 1, 100 do
        local args = {
        [1] = 0,
        [2] = "0:0:2:0"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Item"):FireServer(unpack(args))
 end

 wait(6)

 for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "Fists" or v.Name == "C4" or v.Name == "Grenade" or v.Name == "Bear trap" or v.Name == "Fire bomb" or v.Name == "Poison flask" then
        v:Destroy()
        wait(0.00001)
    end
 end
end)



Section2:NewButton("Dupe Poison flask", "dupes", function()
    for i = 1, 100 do
        local args = {
        [1] = 0,
        [2] = "0:0:1:0"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Item"):FireServer(unpack(args))
 end

 wait(6)
 for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "Fists" or v.Name == "C4" or v.Name == "Grenade" or v.Name == "Bear trap" or v.Name == "Water flask" or v.Name == "Fire bomb"  then
        v:Destroy()
        wait(0.00001)
    end
 end
end)
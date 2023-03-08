local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
 SchemeColor = Color3.fromRGB(100, 0, 255),
 Background = Color3.fromRGB(30, 30, 30),
 Header = Color3.fromRGB(30, 30, 30),
 TextColor = Color3.fromRGB(255, 255, 255),
 ElementColor = Color3.fromRGB(75, 75, 75)
}
local win = lib.CreateLib("Breaking in", colors)

local tele = win:NewTab("Teleports")
local player = win:NewTab("Fun")
local items = win:NewTab("Items")
local v = win:NewTab("Vault")

local tp = tele:NewSection("Teleport")
local plr = player:NewSection("Fun")
local item = items:NewSection("Items")
local vault = v:NewSection("Vault")

local UIS = game:GetService'UserInputService'
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()

plr:NewSlider("Speed", "Change your speed.", 100, 20, function(t)
 char.Humanoid.WalkSpeed = t
end)

plr:NewSlider("Jump Power", "Change your Jump Power.", 200, 50, function(t)
 char.Humanoid.JumpPower = t
end)

plr:NewKeybind("Toggle UI", "Toggle UI with this keybind.", Enum.KeyCode.RightShift, function()
 lib:ToggleUI()
end)

plr:NewToggle("Inf Jump", "Infinitely Jump", function(t)
    getgenv().infjump = t
end)

plr:NewButton("IY", "Executes Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

UIS.InputBegan:Connect(function(UserInput,Typed)
 if getgenv().infjump == true and UserInput.KeyCode == Enum.KeyCode.Space then
  char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
 end
end)


tp:NewButton("House", "Teleport inside the House.", function()
    char.HumanoidRootPart.CFrame = CFrame.new(-36, 3, -200)
end)

tp:NewButton("Basement", "Teleport inside the Basement", function()
    char.HumanoidRootPart.CFrame = CFrame.new(71, -15, -163)
end)

tp:NewButton("Attic", "Teleport inside the Attic.", function()
    char.HumanoidRootPart.CFrame = CFrame.new(-16, 35, -220)
end)

tp:NewButton("Store", "Teleport in the Store.", function()
    char.HumanoidRootPart.CFrame = CFrame.new(-422, 3, -121)
end)

tp:NewButton("Lid", "Teleport ontop the Sewer Lid.", function()
    char.HumanoidRootPart.CFrame = CFrame.new(129, 3, -125)
end)

tp:NewButton("Boss Room", "Teleport to the Sewer Boss Room.", function()
    char.HumanoidRootPart.CFrame = CFrame.new(-39, -287, -1480)
end)


item:NewButton("Apple", "Spawn an Apple.", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Apple")
end)

item:NewButton("Cookie", "Spawn a Cookie.", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Cookie")
end)

item:NewButton("Chips", "Spawn some Chips", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Chips")
end)

item:NewButton("Lollipop", "Spawn a Lollipop", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Lollipop")
end)

item:NewButton("Cure", "Spawn the Cure.", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Cure")
end)

item:NewButton("Linked Sword", "Spawn Guest's Sword", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("LinkedSword")
end)

item:NewButton("Teddy Bear", "Spawn Teddy Bloxpin", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("TeddyBloxpin")
end)

item:NewButton("Bat", "Spawn a Bat", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Bat")
end)

item:NewButton("Plank", "Spawn a Plank.", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Plank")
end)

item:NewButton("Bloxy Cola", "Spawn a Bloxy Cola.", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("BloxyCola")
end)

item:NewButton("Pizza", "Spawn a big Pizza!", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Pizza3")
end)

item:NewButton("Bloxy Pack", "Spawn a Pack of Bloxy Cola, Can only be done once.", function()
    game.ReplicatedStorage.RemoteEvents.BloxyPack:FireServer(1)
end)

vault:NewButton("Get Code", "Teleports the Vault Code to you.", function()
    game.workspace.CodeNote.CFrame = char.HumanoidRootPart.CFrame
end)

--made by Ali
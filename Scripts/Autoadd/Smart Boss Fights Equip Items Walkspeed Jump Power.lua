local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
 SchemeColor = Color3.fromRGB(255, 0, 0),
 Background = Color3.fromRGB(30, 30, 30),
 Header = Color3.fromRGB(30, 30, 30),
 TextColor = Color3.fromRGB(255, 255, 255),
 ElementColor = Color3.fromRGB(75, 75, 75)
}
local win = lib.CreateLib("Idiotic Boss Fights", colors)

local player = win:NewTab("Fun")
local items = win:NewTab("Items")
local vote = win:NewTab("Voting")

local voting = vote:NewSection("Change Votes")
local fun = player:NewSection("Fun")
local equip = items:NewSection("Equip")

local UIS = game:GetService'UserInputService'
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()

voting:NewButton("Add Vote Map 1", "Adds a vote to the first map", function()
    game:GetService("ReplicatedStorage").Voting.AddVote:FireServer(1)
end)

voting:NewButton("Add Vote Map 2", "Adds a vote to the second map", function()
    game:GetService("ReplicatedStorage").Voting.AddVote:FireServer(2)
end)

voting:NewButton("Add Vote Map 3", "Adds a vote to the third map", function()
    game:GetService("ReplicatedStorage").Voting.AddVote:FireServer(3)
end)

voting:NewButton("Remove Vote Map 1", "Removes a vote to the first map", function()
    game:GetService("ReplicatedStorage").Voting.RemoveVote:FireServer(1)
end)

voting:NewButton("Remove Vote Map 2", "Removes a vote to the second map", function()
    game:GetService("ReplicatedStorage").Voting.RemoveVote:FireServer(2)
end)

voting:NewButton("Remove Vote Map 2", "Removes a vote to the third map", function()
    game:GetService("ReplicatedStorage").Voting.RemoveVote:FireServer(3)
end)


fun:NewButton("Delete Barriers", "Delete Invisible Walls", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Name == "Barrier" and v.Transparency == 1 then
            v:Destroy()
        end
    end
end)

fun:NewSlider("Speed", "Change your speed.", 100, 20, function(t)
 char.Humanoid.WalkSpeed = t
end)

fun:NewSlider("Jump Power", "Change your Jump Power.", 200, 50, function(t)
 char.Humanoid.JumpPower = t
end)

fun:NewKeybind("Toggle UI", "Toggle UI with this keybind.", Enum.KeyCode.Quote, function()
 lib:ToggleUI()
end)

fun:NewToggle("Inf Jump", "Infinitely Jump", function(t)
    getgenv().infjump = t
end)

fun:NewButton("IY", "Executes Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)



UIS.InputBegan:Connect(function(UserInput,Typed)
 if getgenv().infjump == true and UserInput.KeyCode == Enum.KeyCode.Space then
  char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
 end
end)



equip:NewButton("Epic Katana", "Equips the Epic Katana", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("EpicKatana")
end)

equip:NewButton("Darkheart", "Equips the Darkheart", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("Darkheart")
end)

equip:NewButton("North Pole", "Equips the North Pole", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("NorthPole")
end)

equip:NewButton("Illumina", "Equips the Illumina", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("Illumina")
end)

equip:NewButton("Ghostwalker", "Equips the Ghostwalker", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("Ghostwalker")
end)

equip:NewButton("FireBrand", "Equips the Firebrand", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("Firebrand")
end)

equip:NewButton("Venomshank", "Equips the Venomshank", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("Venomshank")
end)

equip:NewButton("Windforce", "Equips the Windforce", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("Windforce")
end)

equip:NewButton("Ice Dagger", "Equips the Ice Dagger", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("IceDagger")
end)

equip:NewButton("Katana", "Equips the Katana", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("Katana")
end)

equip:NewButton("Crimson Katana", "Equips the Crimson Katana", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("CrimsonKatana")
end)

equip:NewButton("Ocherous Katana", "Equips the Ocherous Katana", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("OcherousKatana")
end)

equip:NewButton("Gold Katana", "Equips the Gold Katana", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("GoldKatana")
end)

equip:NewButton("Jade Katana", "Equips the Jade Katana", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("JadeKatana")
end)

equip:NewButton("Blue Katana", "Equips the Blue Katana", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("BlueKatana")
end)

equip:NewButton("Iris Katana", "Equips the Iris Katana", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("IrisKatana")
end)

equip:NewButton("Cash Stack", "Equips a Cash Stack", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopFrame.Shop.ShopHandler.Equip:FireServer("CashStack")
end)













--origin: breaking in by me
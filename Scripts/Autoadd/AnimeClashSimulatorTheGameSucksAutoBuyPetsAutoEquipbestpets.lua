if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(egg)
        egg.Parent = game.CoreGui
    end
end

for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ScreenGui" and v.ImageButton then v:Destroy()
    end
end
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/edJT9EGX", true))()
local plr = game.Players.LocalPlayer.Character
local Window = Library:CreateWindow"Anime Clash Simulator"
local Misc = Library:CreateWindow"Misc"

Window:AddFolder"Main"

Window:AddButton({text = "Funny place", flag = "button", callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(192, 9542, 759)
end})

Window:AddToggle({text = "This game sucks", flag = "toggle", state = false, callback = function(c)
cd = c
while cd do task.wait()
for i,v in pairs(game:GetService("Workspace").Scriptable.CurrencyRings:GetDescendants()) do
    if v:IsA"TouchTransmitter" then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
end
end})

Window:AddToggle({text = "This game sucks V2", flag = "toggle", state = false, callback = function(d)
de = d
while de do task.wait()
for i,v in pairs(game:GetService("Workspace").Scriptable.CurrencySpawner:GetDescendants()) do
    if v:IsA"TouchTransmitter" then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
end
end})

Window:AddToggle({text = "This game sucks V3", flag = "toggle", state = false, callback = function(e)
ef = e
while ef do task.wait()
for i,v in pairs(game:GetService("Workspace").Scriptable.Pads.Chests:GetDescendants()) do
    if v:IsA"TouchTransmitter" then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
end
end})

local petlist = {
    "Grey - 1K",
    "Blue - 4K",
    "Yellow - 10K",
    "Orange - 17.5K",
    "Burning - 50K",
    "Purple - 180K",
    "Electric - 1.5M"
}

Window:AddList({text = "List", flag = "list", values = petlist, callback = function(p)
getgenv().pet = p
end})

Window:AddToggle({text = "Buy the pets", flag = "toggle", state = false, callback = function(f)
fg = f
while fg do task.wait()
if pet == "Grey - 1K" then
local args = {[1] = "Pets",[2] = "BuyPet",[3] = {["ShopId"] = "Grey Scroll"}}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
elseif pet == "Blue - 4K" then
local args = {[1] = "Pets",[2] = "BuyPet",[3] = {["ShopId"] = "Blue Scroll"}}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
elseif pet == "Yellow - 10K" then
local args = {[1] = "Pets",[2] = "BuyPet",[3] = {["ShopId"] = "Yellow Scroll"}}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
elseif pet == "Orange - 17.5K" then
local args = {[1] = "Pets",[2] = "BuyPet",[3] = {["ShopId"] = "Orange Scroll"}}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
elseif pet == "Burning - 50K" then
local args = {[1] = "Pets",[2] = "BuyPet",[3] = {["ShopId"] = "Burning Scroll"}}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
elseif pet == "Purple - 180K" then
local args = {[1] = "Pets",[2] = "BuyPet",[3] = {["ShopId"] = "Purple Scroll"}}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
elseif pet == "Electric - 1.5M" then
local args = {[1] = "Pets",[2] = "BuyPet",[3] = {["ShopId"] = "Electric Limited Scroll"}}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end
end
end})

Window:AddToggle({text = "Equip Best", flag = "toggle", state = false, callback = function(g)
gh = g
while gh do task.wait()
local args = {[1] = "Pets",[2] = "EquipBest"}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end
end})

















Misc:AddLabel({text = "made by ouw#7809"})

Misc:AddBind({text = "Toggle UI", key = "RightControl", callback = function()
Library:Close()
end})

Library:Init()
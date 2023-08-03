local Library = loadstring(game:HttpGet("https://gist.githubusercontent.com/Bloxss/945a76d5661d26b52c7b3244baee1c98/raw/a8b2c4d24bc5e6c99c3648d769e15a9a4744942f/uwuware", true))()

local Pets = {}
for i, v in pairs(game:GetService("ReplicatedStorage").Database.Assets.Pets:GetChildren()) do
    table.insert(Pets, v.Name)
end

local Items = {}
for i, v in pairs(game:GetService("ReplicatedStorage").Items:GetChildren()) do
    table.insert(Items, v.Name)
end
local Window = Library:CreateWindow("Main")
local Window2 = Library:CreateWindow("Character")

Window2:AddSlider({text = 'Head', min = 0, max = 100, float = 0.1, callback = function(v) game:GetService("ReplicatedStorage").RemoteEvents.UpdateScale:FireServer("HeadScale", v) end})
Window2:AddSlider({text = 'Scale', min = 0, max = 100, float = 0.1, callback = function(v) game:GetService("ReplicatedStorage").RemoteEvents.UpdateScale:FireServer("Scale", v) end})
Window2:AddSlider({text = 'Height', min = 0, max = 100, float = 0.1, callback = function(v) game:GetService("ReplicatedStorage").RemoteEvents.UpdateScale:FireServer("BodyHeightScale", v) end})
Window2:AddSlider({text = 'Dept', min = 0, max = 100, float = 0.1, callback = function(v) game:GetService("ReplicatedStorage").RemoteEvents.UpdateScale:FireServer("BodyDepthScale", v) end})
Window2:AddSlider({text = 'Width', min = 0, max = 100, float = 0.1, callback = function(v) game:GetService("ReplicatedStorage").RemoteEvents.UpdateScale:FireServer("BodyWidthScale", v) end})
Window2:AddSlider({text = 'Type', min = 0, max = 100, float = 0.1, callback = function(v) game:GetService("ReplicatedStorage").RemoteEvents.UpdateScale:FireServer("BodyTypeScale", v) end})


Window:AddBox({text = 'Coin', callback = function(v) Coins1 = v end})
Window:AddList({text = 'Pet', values = Pets, callback = function(v) Pet1 = v end})
Window:AddList({text = 'Item', values = Items, callback = function(v) item1 = v end})
Window:AddButton({text = 'Get Item', callback = function() game:GetService("ReplicatedStorage").GiveItem:FireServer(0, item1) end})
Window:AddButton({text = 'Get Pet', callback = function() game:GetService("ReplicatedStorage").Shared.Inventory.RewardItem:InvokeServer(game:GetService("ReplicatedStorage").Profiles[game.Players.LocalPlayer.Name].Inventory.Items, Pet1, false, 0)end})
Window:AddButton({text = 'Get Coin', callback = function() game:GetService("ReplicatedStorage").GiveCoin:FireServer(Coins1)end})
Library:Init()


local oldtick = tick()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Vertigos Refinery", HidePremium = false, SaveConfig = true, ConfigFolder = "RefineryCaves"})
function GetPlot()
for i,v in pairs(game:GetService("Workspace").Plots:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
return v
end
end
end
function MoveMinedOres(V3x,V3y,V3z)
for i,v in pairs(game:GetService("Workspace").Grabable:GetChildren()) do
if v.Name == "MaterialPart" and v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer and (v.PrimaryPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
v.PrimaryPart.CFrame = CFrame.new(V3x,V3y,V3z)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(v.Part,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(v.Part,{})
task.wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame + Vector3.new(0,5,0)
elseif v.Name == "MaterialPart" and v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer and (v.PrimaryPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 30 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame + Vector3.new(0,5,0)
v.PrimaryPart.CFrame = CFrame.new(V3x,V3y,V3z)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(v.Part,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(v.Part,{})
task.wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame + Vector3.new(0,5,0)
end
end
end
local Tab = Window:MakeTab({
Name = "Main",
})
local Tab3 = Window:MakeTab({
Name = "Teleports",
})
local Tab2 = Window:MakeTab({
Name = "Auto Buy",
})
local Section = Tab:AddSection({
Name = "Teleporting Ores"
})
Tab:AddButton({
Name = "Tp Ores To Plot",
Callback = function()
MoveMinedOres(GetPlot().Base.Position.X,GetPlot().Base.Position.Y + 10,GetPlot().Base.Position.Z)
end
})
Tab:AddButton({
Name = "Tp Ores Into Furnace [NEED CONVEY FUNNEL]",
Callback = function()
MoveMinedOres(GetPlot().Objects["Conveyor Funnel"].PrimaryPart.Position.X,GetPlot().Objects["Conveyor Funnel"].PrimaryPart.Position.Y+3,GetPlot().Objects["Conveyor Funnel"].PrimaryPart.Position.Z)
end
})
Tab:AddButton({
Name = "Bring Ores",
Callback = function()
MoveMinedOres(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 15,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end
})
Tab:AddButton({
Name = "Sell Ores",
Callback = function()
MoveMinedOres(game:GetService("Workspace").Map.Sellary.Counter.Base.CFrame.X,game:GetService("Workspace").Map.Sellary.Counter.Base.CFrame.Y+10,game:GetService("Workspace").Map.Sellary.Counter.Base.CFrame.Z)
game.workspace.Map.Sellary.Keeper.IPart.Interact:FireServer()
end
})
Tab:AddButton({
Name = "Goto Plot",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetPlot().Base.CFrame + Vector3.new(0,10,0)
end
})
local Section = Tab3:AddSection({
Name = "Stores"
})
for i,v in pairs(game:GetService("Workspace").Map.Buildings:GetChildren()) do
if v:FindFirstChild("Exits") then
Tab3:AddButton({
Name = v.Name,
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Exits").Part.CFrame
end
})
elseif v:FindFirstChild("Floor") then
Tab3:AddButton({
Name = v.Name,
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Floor").Part.CFrame + Vector3.new(0,5,0)
end
})
end
end
local Section = Tab2:AddSection({
Name = "Utility Store"
})
Utility = {}
for i,v in pairs(game:GetService("Workspace").Map.Buildings.UCS.Products:GetChildren()) do
if not table.find(Utility, v.Name) then
table.insert(Utility,v.Name)
end
end
Tab2:AddDropdown({
Name = "Buy Item",
Options = Utility,
Callback = function(Value)
local obj = game:GetService("Workspace").Grabable:FindFirstChild(Value)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = obj.PrimaryPart.CFrame
task.wait(.1)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
obj.PrimaryPart.CFrame = game:GetService("Workspace").Map.Buildings.UCS.Registers.Register1.Counter.Counter.CFrame + Vector3.new(0,2,0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Buildings.UCS.Registers.Register1.Counter.Counter.CFrame + Vector3.new(3,2,0)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
task.wait(.3)
workspace.Map.Buildings.UCS.Registers.Register1.Worker.IPart.Interact:FireServer()
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog:FindFirstChild("Yes")
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog.Yes.MouseButton1Click)
obj.PrimaryPart.CFrame = GetPlot().Base.CFrame + Vector3.new(0,10,0)
end
})
local Section = Tab2:AddSection({
Name = "Delearship"
})
Dealer = {}
for i,v in pairs(game:GetService("Workspace").Map.Buildings.Delearship.Products:GetChildren()) do
if not table.find(Dealer, v.Name) then
table.insert(Dealer,v.Name)
end
end
Tab2:AddDropdown({
Name = "Buy Item",
Options = Dealer,
Callback = function(Value)
local obj = game:GetService("Workspace").Grabable:FindFirstChild(Value)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = obj.PrimaryPart.CFrame
task.wait(.1)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
obj.PrimaryPart.CFrame = game:GetService("Workspace").Map.Buildings.Delearship.Registers.Register1.Counter.Counter.CFrame + Vector3.new(0,2,0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Buildings.Delearship.Registers.Register1.Counter.Counter.CFrame + Vector3.new(3,2,0)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
task.wait(.3)
workspace.Map.Buildings.Delearship.Registers.Register1.Worker.IPart.Interact:FireServer()
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog:FindFirstChild("Yes")
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog.Yes.MouseButton1Click)
obj.PrimaryPart.CFrame = GetPlot().Base.CFrame + Vector3.new(0,10,0)
end
})
local Section = Tab2:AddSection({
Name = "Logic Shop"
})
logic = {}
for i,v in pairs(game:GetService("Workspace").Map.Buildings.LogicShop.Products:GetChildren()) do
if not table.find(logic, v.Name) then
table.insert(logic,v.Name)
end
end
Tab2:AddDropdown({
Name = "Buy Item",
Options = logic,
Callback = function(Value)
local obj = game:GetService("Workspace").Grabable:FindFirstChild(Value)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = obj.PrimaryPart.CFrame
task.wait(.1)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
obj.PrimaryPart.CFrame = game:GetService("Workspace").Map.Buildings.LogicShop.Registers.Register1.Counter.Counter.CFrame + Vector3.new(0,2,0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Buildings.LogicShop.Registers.Register1.Counter.Counter.CFrame + Vector3.new(3,2,0)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
task.wait(.3)
workspace.Map.Buildings.LogicShop.Registers.Register1.Worker.IPart.Interact:FireServer()
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog:FindFirstChild("Yes")
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog.Yes.MouseButton1Click)
obj.PrimaryPart.CFrame = GetPlot().Base.CFrame + Vector3.new(0,10,0)
end
})
local Section = Tab2:AddSection({
Name = "Pickaxe Shop"
})
pick = {}
for i,v in pairs(game:GetService("Workspace").Map.Buildings.PickaxeShop.Products:GetChildren()) do
if not table.find(pick, v.Name) then
table.insert(pick,v.Name)
end
end
Tab2:AddDropdown({
Name = "Buy Item",
Options = pick,
Callback = function(Value)
local obj = game:GetService("Workspace").Grabable:FindFirstChild(Value)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = obj.PrimaryPart.CFrame
task.wait(.1)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
obj.PrimaryPart.CFrame = game:GetService("Workspace").Map.Buildings.PickaxeShop.Registers.Register1.Counter.Counter.CFrame + Vector3.new(0,2,0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Buildings.PickaxeShop.Registers.Register1.Counter.Counter.CFrame + Vector3.new(3,2,0)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
task.wait(.3)
workspace.Map.Buildings.PickaxeShop.Registers.Register1.Worker.IPart.Interact:FireServer()
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog:FindFirstChild("Yes")
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog.Yes.MouseButton1Click)
obj.PrimaryPart.CFrame = GetPlot().Base.CFrame + Vector3.new(0,10,0)
end
})
local Section = Tab2:AddSection({
Name = "Furniture Shop"
})
furn = {}
for i,v in pairs(game:GetService("Workspace").Map.Buildings.FurnitureShop.Products:GetChildren()) do
if not table.find(furn, v.Name) then
table.insert(furn,v.Name)
end
end
Tab2:AddDropdown({
Name = "Buy Item",
Options = furn,
Callback = function(Value)
local obj = game:GetService("Workspace").Grabable:FindFirstChild(Value)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = obj.PrimaryPart.CFrame
task.wait(.1)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
obj.PrimaryPart.CFrame = game:GetService("Workspace").Map.Buildings.FurnitureShop.Registers.Register1.Counter.Counter.CFrame + Vector3.new(0,2,0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Buildings.FurnitureShop.Registers.Register1.Counter.Counter.CFrame + Vector3.new(3,2,0)
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(obj.PrimaryPart,{})
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(obj.PrimaryPart,{})
task.wait(.3)
workspace.Map.Buildings.FurnitureShop.Registers.Register1.Worker.IPart.Interact:FireServer()
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog:FindFirstChild("Yes")
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.UserGui.Dialog.Yes.MouseButton1Click)
obj.PrimaryPart.CFrame = GetPlot().Base.CFrame + Vector3.new(0,10,0)
end
})
OrionLib:MakeNotification({
Name = "Loaded!",
Content = "Loaded in: "..tostring(math.floor((tick() - oldtick)).."s"),
Image = "rbxassetid://4483345998",
Time = 3
})
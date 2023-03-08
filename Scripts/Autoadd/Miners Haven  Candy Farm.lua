local candyUpgraders = {
    "Candy Castle",
    "Candycorn Refiner",
    "Candy Corn Real Estate",
    "Chocolate Coater",
    "Chocolate Forest",
    "Frank'n'Cupcake",
    "Giant Pretzel",
    "Grand Wafer",
    "Gummy Refiner",
    "Hellish Bat Cookie",
    "Lollipop-inator",
    "Ore Caramelizer",
    "Pumpkin Pie Refiner",
    "Pumpkin Spice Refiner",
    "Sugar Corroder",
    "The Cookinator",
    "The Rock"
}
local myfac
for i,v in pairs(game.workspace.Tycoons:GetChildren()) do
    if v:FindFirstChild("Owner") and v:FindFirstChild("Owner").Value == game.Players.LocalPlayer.Name then
       myfac = v
    end
end
getgenv().toggle = true
local proximityMine = myfac:FindFirstChild("Pumpkinite Mine") or myfac:FindFirstChild("Swintite Mine")
local candyFurnace = myfac:FindFirstChild("Candy Metropolis") or myfac:FindFirstChild("Candy Factory") or myfac:FindFirstChild("Candy Center")
local candyMax = 0
if candyFurnace.Name == "Candy Metropolis" then
    candyMax = 9500
elseif candyFurnace.Name == "Candy Factory" then
    candyMax = 2500
else
    candyMax = 300
end
function upgradeOre(ore)
    for i,v in pairs(candyUpgraders) do
       if myfac:FindFirstChild(v) then
           spawn(function()
               firetouchinterest(ore,myfac:FindFirstChild(v):FindFirstChild("Upgrade",true),0)
               wait(.5)
               firetouchinterest(ore,myfac:FindFirstChild(v):FindFirstChild("Upgrade",true),1)
            end)
        end
    end
end
game.workspace.DroppedParts[myfac.Name].ChildAdded:Connect(function(ore)
    ore.Anchored = true
    upgradeOre(ore)
    wait(1.5)
    ore.Position = candyFurnace.Model.Lava.Position + Vector3.new(0,2,0)
    ore.Anchored = false
end)
game.Players.LocalPlayer.PlayerGui.GUI.InputPrompt.Absorb.Changed:connect(function(property)
    if property == "Visible" then
        if game.Players.LocalPlayer.PlayerGui.GUI.InputPrompt.Absorb.Visible == true then
            local text = string.sub(game.Players.LocalPlayer.PlayerGui.GUI.InputPrompt.InputPrompt.Title.Text, 1, 25)
            if text == "Would you like to collect" then
                for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.GUI.InputPrompt.InputPrompt.Yes.MouseButton1Click)) do
                  v:Fire()
                end
            end
        end
    end
end)
while getgenv().toggle == true do
    if tonumber(candyFurnace.Model.CounterPart.CandyTracker.Background.Amount.Text) < candyMax then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = proximityMine.Model.Internal.CFrame
        fireproximityprompt(proximityMine.Model.Internal.ProximityPrompt,50)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = candyFurnace.Model.Internal.CFrame
        fireproximityprompt(candyFurnace.Model.Internal.ProximityPrompt,50)
    end
    wait()
end
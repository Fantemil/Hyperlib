local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("INITIAL DICK", "GrapeTheme")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Functions")

Section:NewButton("Unlock all cars", "Unlock all cars", function()
    for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
  if v.Name == "Price" and v:IsA("NumberValue") then
    v.Value = 0
  end
end
wait()
for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
  if v.Name == "Price" and v:IsA("NumberValue") then
    game:GetService("ReplicatedStorage").PurchaseEvent:FireServer(v.Parent.ID.Value)
  end
end
end)

Section:NewSlider("WalkSpeed", "JumpPower", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "WalkSpeed", 300, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewToggle("Disable fog", "Disable fog", function(state)
    if state then
        game:GetService("Lighting").DepthOfField.Parent = workspace
  game:GetService("Lighting").Atmosphere.Parent = workspace
    else 
        game:GetService("Workspace").DepthOfField.Parent = game.Lighting
  game:GetService("Workspace").Atmosphere.Parent = game.Lighting
    end

 
end)

local Tab2 = Window:NewTab("Credits")

local Section2 = Tab2:NewSection("Credits")

Section2:NewLabel("Made by Xyecoc63RUS")
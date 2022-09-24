_G.AutoWood = true
local VirtualUser = game:service("VirtualUser");

while _G.AutoWood and wait(.1) do
if not game.Players.LocalPlayer.Backpack:FindFirstChild("MAxe") and not game.Players.LocalPlayer.Character:FindFirstChild("MAxe") then
    game:GetService("ReplicatedStorage").MissionEvent:FireServer("questpls","Woodc")
    else
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3969.2175292969, 105.07297515869, 919.11145019531)
    VirtualUser:ClickButton1(Vector2.new("Hydra new user i mean what"))
    if game.Players.LocalPlayer.Backpack:FindFirstChild("MAxe") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["MAxe"])
        end;
    end;
end;
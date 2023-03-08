local x = 0
local increment = 1
local y = 0
local increment1 = 0
local z = 0
local increment2 = 0
local name = "[Knife]"

for _, v in pairs(workspace:GetDescendants()) do
    if v.ClassName == "TouchTransmitter" and v.Parent.Parent.Name == "[Knife]" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
    end
end
wait(1)
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" then
        v.Parent = game.Players.LocalPlayer.Backpack
    end
end
wait()
for _, v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    if v.ClassName == "Tool" and v.Name == name then
        v.Parent = game.Players.LocalPlayer.Character
        v.GripPos = Vector3.new(x, y, z)
        x = x + increment
        y = y + increment1
        z = z + increment2
        task.wait()
    end
end

x = game.Players.LocalPlayer.Backpack:FindFirstChild("Tool")

if x == nil then
    local tool = Instance.new("Tool")
    tool.Parent = game.Players.LocalPlayer.Backpack
    local PLR = game.Players.LocalPlayer

    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == "Tool" then
            while wait(1) do
                if v.Parent == game.Players.LocalPlayer.Character then
                    for i, k in pairs(PLR:GetDescendants()) do
                        if k.ClassName == "Tool" and k.Name == "[Knife]" then
                            k.Parent = PLR.Character
                        else
                            print("Already got the tool homie")
                        end
                    end
                end
            end
        end
    end
end
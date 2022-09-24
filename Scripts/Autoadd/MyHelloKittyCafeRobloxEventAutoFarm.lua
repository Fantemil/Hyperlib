while true do
local button = game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIPlayerInteraction["Interaction-InteractionF"].ImageButton
local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}

for i,v in pairs(game:GetService("Workspace").TreasureEntity:GetDescendants()) do
    if v.ClassName == "Part" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,6,0)
        wait(1)
        for i,v in pairs(events) do
            for i,v in pairs(getconnections(button[v])) do
                v:Fire()
                wait(4)
            end
        end
    end
end
    wait(1) 
end
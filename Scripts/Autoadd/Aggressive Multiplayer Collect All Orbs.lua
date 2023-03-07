local cFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

for i,v in ipairs( workspace.Parts:GetChildren() ) do
    if v.Name == "SmallBlock"  then
        v.CFrame = cFrame
    else
    end
end
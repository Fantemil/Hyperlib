local player = game.Players.LocalPlayer

local function changeHeadMesh(character)
    local head = character:WaitForChild("Head")
    local rigtype = character.Humanoid.RigType
    
    if rigtype == Enum.HumanoidRigType.R6 then
        head.Mesh.MeshId = "rbxassetid://13916684351"
        head.Mesh.Scale = Vector3.new(1, 1, 1)
    elseif rigtype == Enum.HumanoidRigType.R15 then
        head.MeshId = "rbxassetid://13916684351"
    end
end

player.CharacterAdded:Connect(changeHeadMesh)

if player.Character then
    changeHeadMesh(player.Character)
end
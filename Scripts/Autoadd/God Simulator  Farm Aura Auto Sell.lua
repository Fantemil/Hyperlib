local player = game.Players.LocalPlayer


local args = {
    [1] = "PDS",
    [2] = "Activations",
    [3] = "EssenceReturn"
}



while true do
    local boundingBoxes = {}

    for _, child in pairs(workspace.DestructableObjects:GetChildren()) do
        if child:FindFirstChild("BoundingBox") and child:FindFirstChild("Alive") then
            local distance = (child.BoundingBox.CFrame.p - player.Character.HumanoidRootPart.CFrame.p).magnitude
            if distance < 30 then
                table.insert(boundingBoxes, child.BoundingBox)
            end
        end
    end

    if #boundingBoxes > 0 then
        local args = {
            [1] = "UseAbility",
            [2] = "Hades",
            [3] = "Tormented Souls",
            [4] = boundingBoxes[1].CFrame,
            [5] = boundingBoxes
        }
        game:GetService("ReplicatedStorage"):FindFirstChild("\240\159\148\165"):FireServer(unpack(args))
    end
    game:GetService("ReplicatedStorage"):FindFirstChild("\240\159\145\140"):InvokeServer(unpack(args))
    

    wait(1)
end
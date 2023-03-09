for i,v in ipairs(workspace.Characters:GetChildren()) do
    if v:IsA("Model") then
        local human = v:FindFirstChild("Humanoid")
        local torso = v:FindFirstChild("HumanoidRootPart")                                
                if human and torso then      
local args = {
    [1] = v.Head,
    [2] = Vector3.new(182.07310485839844, 5.787327289581299, -430.5772705078125),
    [3] = Vector3.new(-0.783150851726532, 0.18024331331253052, -0.5951363444328308),
    [4] = Enum.Material.Plastic,
    [5] = CFrame.new(Vector3.new(-0.159149169921875, -0.2970867156982422, 1.0000152587890625), Vector3.new(0.00001424551010131836, 7.227063179016113e-07, 1.0000001192092896)),
    [6] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Linked Sword")
}


game:GetService("ReplicatedStorage").Assets.Remotes.hitMelee:FireServer(unpack(args))
game:GetService("ReplicatedStorage").Assets.Remotes.hitMelee:FireServer(unpack(args))
                        end
             end
      end
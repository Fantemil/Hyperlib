local lp    =   game.Players.LocalPlayer

while wait () do
lp.Character.HumanoidRootPart.CFrame = workspace.Eggs:FindFirstChild("Egg").CFrame + Vector3.new(0, 3, 0)
end

for i, v in pairs(game:GetService("Workspace").Eggs:Descendants()) do
                        if v.Name == "Egg" then
                            fireproximityprompt(v)
                        end
           end
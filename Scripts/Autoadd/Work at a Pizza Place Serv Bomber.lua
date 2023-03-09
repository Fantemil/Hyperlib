for _, v in pairs(game:GetService("Workspace").KrustyKrab:GetDescendants()) do
                   if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart or game.Players.LocalPlayer.Character.Torso, v:FindFirstAncestorWhichIsA("Part"),0)
                       end
               end
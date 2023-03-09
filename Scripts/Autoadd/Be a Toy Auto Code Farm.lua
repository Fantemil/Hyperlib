--Credits to Wxer Softworks


while wait() do
            for i,v in pairs(workspace.Map.Codes:GetChildren()) do
            if v.Name == "Code" and v.Front.Transparency == 0 then
            local codetouch = v.TouchInterest
            local codeposition = v.Position
                   
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(codeposition)
        end
    end
end
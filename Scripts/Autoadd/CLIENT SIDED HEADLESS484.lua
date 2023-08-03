while wait() do
    me = game:GetService("Players").LocalPlayer.Character
    if me:FindFirstChild("Head") and me:FindFirstChild("Humanoid") then
        me.Head.MeshId = "rbxassetid://6686307858" -- Yeah whatever it work if its also nil
    end
end
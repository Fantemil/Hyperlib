local col = Color3.fromRGB(0,0,0)

for i, v in pairs(game.Workspace.Provinces:GetChildren()) do
    task.spawn(function()
        if v.Color ~= col then
            local args = {
                [1] = "PaintPart",
                [2] = {
                    ["Part"] = v,
                    ["Color"] = col
                }
            }
            game.Players.LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))
        end
    end)
end
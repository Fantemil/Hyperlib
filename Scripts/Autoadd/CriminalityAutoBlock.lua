local vim = game:GetService("VirtualInputManager")
local anims = {'rbxassetid://6570553139','rbxassetid://6570556158','rbxassetid://4274709359','rbxassetid://4916134513','rbxassetid://6558252361'}
local function block(condition)
    vim:SendKeyEvent(condition, "Q", false, game)
end
local a = game:GetService("RunService").Heartbeat:Connect(function()
    for i,v in ipairs(game.Players:GetChildren()) do
    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
    if v ~= game.Players.LocalPlayer and distance < 10 then
local abc = v.Character.Humanoid:GetPlayingAnimationTracks()
for i,animoaition in ipairs(abc) do
if table.find(anims, animoaition.Animation.AnimationId) then
block(true)
wait(2)
block(false)
end

end

end

end
end)
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
    a:Disconnect()
end)
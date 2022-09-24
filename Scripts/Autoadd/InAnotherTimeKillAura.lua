getgenv().Toggled =false
getgenv().KeyBind ="E"
getgenv().Delay = 0
local UIS=game:GetService'UserInputService'
local function Source()
local LP = game.Players.LocalPlayer
local success, err = pcall(function()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v ~= game.Players.LocalPlayer then
local args = {
    [1] = v.Character.Humanoid,
    [2] = math.huge,
    [3] = v.Character.HumanoidRootPart.Position,
    [4] = v.Character.HumanoidRootPart.Position,
    [5] = 0.1,
    [6] = 1,
    [7] = "rbxassetid://260430079",
    [8] = 0.6
}

game:GetService("ReplicatedStorage").Attacks.DamageBlunt:FireServer(unpack(args))
local args = {
    [1] = v.Character
}

game:GetService("ReplicatedStorage").SpecialMoves.BlockBreak:FireServer(unpack(args))
end
end
end)
if err then
warn(err)
end
end
UIS.InputBegan:Connect(function(Key)
    if Key.KeyCode==Enum.KeyCode[getgenv().KeyBind:upper()] and not UIS:GetFocusedTextBox() then
        if getgenv().Toggled then
            getgenv().Toggled=false
        elseif not getgenv().Toggled then
            getgenv().Toggled=true
            while getgenv().Toggled do
                Source()
                wait(getgenv().Delay)
            end
        end
    end
end)
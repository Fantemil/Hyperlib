getgenv().AutoFarm = true -- true = on, false = off --

--// Variables:
local coinStuff = game:GetService("Players").LocalPlayer.PlayerGui.UI:FindFirstChild("coin stuff")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()


local function respawnCharacter() -- tried to add a instant respawn works but dose not work in the loop to lazy to remove
    character:Destroy()
    character = player.CharacterAdded:Wait()
    workspace.CurrentCamera.CameraSubject = character.Humanoid
end

if coinStuff then
    coinStuff:Destroy()
else
    print("Coin Stuff Is Already Gone")
end

while AutoFarm do
    game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(204.242462, 764.051636, -159.918182))
    wait(0.5)
    if not character or not character.Parent then
        respawnCharacter()
    end
end
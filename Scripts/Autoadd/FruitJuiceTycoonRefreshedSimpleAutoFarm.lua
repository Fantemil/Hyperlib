local SAVEFOROBBY = false -- set this to true to save your fruits for the 2x obby bonus

if game.Players.LocalPlayer == nil then
    game.Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end
local Debounce = false
local function FinishObby()
    repeat
        if tostring(game.Workspace.ObbyParts.ObbyStartPart.BrickColor) == "Lime green" and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            wait()
            firetouchinterest(game:GetService("Workspace").ObbyParts.RealObbyStartPart, game.Players.LocalPlayer.Character.HumanoidRootPart,0)
            firetouchinterest(game:GetService("Workspace").ObbyParts.RealObbyStartPart, game.Players.LocalPlayer.Character.HumanoidRootPart,1)
            wait(0.1)
            firetouchinterest(game:GetService("Workspace").ObbyParts.VictoryPart, game.Players.LocalPlayer.Character.HumanoidRootPart,0)
            firetouchinterest(game:GetService("Workspace").ObbyParts.VictoryPart, game.Players.LocalPlayer.Character.HumanoidRootPart,1)
        end
        wait()
    until tostring(game.Workspace.ObbyParts.ObbyStartPart.BrickColor) ~= "Lime green"
end
game.Workspace.Tycoons.DescendantAdded:Connect(function(child)
    if child:FindFirstAncestor("Drops") and child:FindFirstAncestor(tostring(game.Players.LocalPlayer.Team)) then
        wait()
        game:GetService("ReplicatedStorage").CollectFruit:FireServer(child)
        wait()
        if not SAVEFOROBBY then
            fireproximityprompt(game.Workspace.Tycoons[tostring(game.Players.LocalPlayer.Team)].Essentials.JuiceMaker.StartJuiceMakerButton.PromptAttachment.StartPrompt)
        end
    end
end)
game.Workspace.ObbyParts.ObbyStartPart:GetPropertyChangedSignal("BrickColor"):Connect(FinishObby)
game:GetService('RunService').Stepped:connect(function()
    if Debounce == false and game.Workspace.Tycoons:FindFirstChild(tostring(game.Players.LocalPlayer.Team)) and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        Debounce = true
        if not SAVEFOROBBY then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Tycoons[tostring(game.Players.LocalPlayer.Team)].Essentials.JuiceMaker.StartJuiceMakerButton.CFrame
        end
        for i,v in pairs(game.Workspace.Tycoons[tostring(game.Players.LocalPlayer.Team)].Buttons:GetDescendants()) do
            firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
            firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
        end
        if game.Workspace.Tycoons[tostring(game.Players.LocalPlayer.Team)].Purchased:FindFirstChild("Golden Tree Statue") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Tycoons[tostring(game.Players.LocalPlayer.Team)].Purchased["Golden Tree Statue"].StatueBottom.CFrame
            wait(0.2)
            fireproximityprompt(game.Workspace.Tycoons[tostring(game.Players.LocalPlayer.Team)].Purchased["Golden Tree Statue"].StatueBottom.PrestigePrompt)
            wait(2)
        end
        Debounce = false
    else
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Entrance" and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
                firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
            end
        end
    end
end)
FinishObby()
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
end
repeat wait() until game.Players.LocalPlayer ~= nil
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("SocialTasks")
repeat wait() until game.Players.LocalPlayer.PlayerGui.SocialTasks:FindFirstChild("Task")
repeat wait() until game.Players.LocalPlayer.PlayerGui.SocialTasks.Task:FindFirstChild("Task")
repeat wait() until game.Players.LocalPlayer.PlayerGui.SocialTasks.Task:FindFirstChild("Username")
local TaskGui = game.Players.LocalPlayer.PlayerGui.SocialTasks.Task
repeat wait() until game.Players.LocalPlayer.Character ~= nil
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)




game:GetService('RunService').Stepped:connect(function()
    if game.Players.LocalPlayer.Character ~= nil then
        if game.Players.LocalPlayer.Character:FindFirstChild("Head") then
            game.Players.LocalPlayer.Character.Head.CanCollide = false
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso") then
            game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
            game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        end
    end
    if TaskGui ~= nil and TaskGui.Parent ~= nil and TaskGui.Parent.Enabled == true and TaskGui:FindFirstChild("Username") and game.Players:FindFirstChild(TaskGui.Username.Text) and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local Target = game.Players:FindFirstChild(TaskGui.Username.Text)
        if Target ~= nil and Target.Character ~= nil and Target.Character:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
            game.Players:Chat(TaskGui.Task.Text)
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.ReplicatedStorage.SocialTasks.giveRainbows:FireServer(game.Players[TaskGui.Username.Text])
        end
    else
        if game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(163, 8, 413)
        end
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SocialTasks") and game.Players.LocalPlayer.PlayerGui.SocialTasks:FindFirstChild("Task") then
            TaskGui = game.Players.LocalPlayer.PlayerGui.SocialTasks.Task
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    repeat wait() until character:FindFirstChild("Humanoid")
    wait(1)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
    character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
end)

repeat wait() until game:IsLoaded()
for i,v in pairs(game.Workspace:GetDescendants()) do
    if v:IsA("Seat") then
        v:Destroy() -- no mercy
    end
end
--// Services \\--
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

--// Variables \\--
local Player = Players.LocalPlayer
local FakeData = {Name="Dropper1";Class={Upgrade={Value=99999999999999999}}}
local Tycoon = nil

--// Get Tycoon \\--
for _, Folder in next, Workspace:WaitForChild("Tycoons"):GetChildren() do
    if Folder.Values.Owner.Value == Player then
        Tycoon = Folder
        break
    end
end
if Tycoon == nil then
    warn("Patched :(")
    return
end

--// BIG MONEY \\--
local Conn;
Conn = Tycoon:WaitForChild("Drops").ChildAdded:Connect(function(A)
    task.wait()
    if A:IsA("MeshPart") then
        if Conn ~= nil then
            Conn:Disconnect()
            Conn = nil
        end
        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Upgrade"):FireServer(FakeData, A.Name)
    end
    end)
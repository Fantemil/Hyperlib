getgenv().lol = true

local G = getrenv()._G.Funcs

while lol do
    for i, v in pairs(workspace["Map"]:GetChildren()) do
        if v:IsA("Folder") and v:FindFirstChild("Handle") then
            G:FireServer(v, "Unequip")
        end
    end
    task.wait()
end
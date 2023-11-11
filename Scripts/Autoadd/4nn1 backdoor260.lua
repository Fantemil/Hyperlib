function scripta()
    --script
    print("Success")
end
for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
    if v:IsA("RemoteEvent") then
        v:FireServer(scripta())
print(v.Name)
    end
end
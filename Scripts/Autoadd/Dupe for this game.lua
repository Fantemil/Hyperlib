for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Pets.Main.Scroll:GetDescendants()) do
if v.Name == "UID" then
local args = {
    [1] = {
        ["\191"] = v.Value
    },
    [2] = "Joe",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remote.SaveTeam:FireServer(unpack(args))
break
end
end
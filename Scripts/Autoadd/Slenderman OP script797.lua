while wait() do
local args = {
    [1] = "Start"
}
 
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Slenderman-1").ToolEvent:FireServer(unpack(args))
end

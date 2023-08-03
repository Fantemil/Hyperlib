-- change the Goblin Lv 1 at the bottom for the mob u want
-- change the Basic sword to your sword name

_G.killaura = true -- true for enabled and false for disabled

while _G.killaura == true do
local args = {
    [1] = "Input",
    [2] = "Basic Sword", -- here
    [3] = 0.5262976843135896,
    [4] = "SlashEvent",
    [5] = workspace.NPCs:FindFirstChild("Goblin Lv 1").HumanoidRootPart
} ---------------------------------- on there

game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
task.wait()
end
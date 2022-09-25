 -- Loading
repeat wait(1) 
    yes,cum = pcall(function() return
        workspace.MouseIgnore,
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        game.Players.LocalPlayer.Character.Humanoid
        
    end)
until yes and game:IsLoaded()
wait(8)
-- NoClip
game:GetService("RunService").RenderStepped:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) 
end)
-- Collect
repeat
    found = false
    for i,v in pairs(cum:GetChildren()) do
        if v.Name == "ChikaraCrate" and v.PrimaryPart then
            found = true
            repeat
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.ClickBox.CFrame - Vector3.new(0,10,0)
                    fireclickdetector(v.ClickBox.ClickDetector,1)
                end)
                wait()
            until not v.Parent
        end
    end
    wait()
until not found
-- Skidded off Infinite Yield
local x = {}
for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
    if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
        x[#x + 1] = v.id
    end
end
while true do
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    wait(2)
end
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Pilgrammed")
local m = w:CreateFolder("Spawn setter")

m:Dropdown("Set Spawn",{"Spawn", "Desert", "Cloud", "Volcano", "Savanna", "Fish", "Lab"},true,function(choice)
    print(choice)
    for i,v in pairs(game.Workspace.Beds:GetChildren()) do
        if v.Name:match(choice) then
            print("fired")
            fireclickdetector(v.ClickDetector)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame * CFrame.new(0,1,0)
        end
    end
end)
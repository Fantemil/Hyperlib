local IslandToTP = "Redwake" -- Change to the name of the Island you want to TP to

local Map = game.Workspace:WaitForChild("Map", 0.75)
if Map[IslandToTP] then
     local Center = Map[IslandToTP]:WaitForChild("Center")

     repeat task.wait() game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Center.CFrame + Vector3.new(0,275,0) until Map[IslandToTP]:FindFirstChild("Notes") and Map[IslandToTP]:FindFirstChild("Spawns") -- Wait for render
end
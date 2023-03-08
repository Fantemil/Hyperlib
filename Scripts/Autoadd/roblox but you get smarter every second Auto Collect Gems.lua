getgenv().toggle = true

local table = {
   game:GetService("Workspace").Z2Gems,
   game:GetService("Workspace").Z1Gems,
   game:GetService("Workspace").Z3Gems,
   game:GetService("Workspace").Z6Gems,
   game:GetService("Workspace").Z4Gems,
   game:GetService("Workspace").Z7Gems,
   game:GetService("Workspace").Z5Gems,
}

while task.wait(3) and toggle do
   for a,b in pairs(table) do
       for i,v in pairs(b:GetDescendants()) do
           if v.Name == "TouchInterest" then
               firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
               firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)    
           end
       end
   end
end
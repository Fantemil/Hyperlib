local character = game:GetService("Players").LocalPlayer.Character

task.spawn(function()
    if not workspace["egg"] then 
        print("This map doesn't have an egg, try another map")   
    end
    
    firetouchinterest(character.HumanoidRootPart, workspace["egg"], 0)    
end)
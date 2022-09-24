getgenv().AxeSize = 10
getgenv().PickSize = 10

getAxe = function()
   for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
     if v.Name:match("axe") and not v.Name:match("Pick") then  
       return v:FindFirstChildWhichIsA"Part"
       end
   end
end

getPick = function()
   for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
     if v.Name:match("axe") and  v.Name:match("Pick") then  
       return v:FindFirstChildWhichIsA"Part"
       end
   end
end


getAxe().Size = Vector3.new(getgenv().AxeSize,getgenv().AxeSize,getgenv().AxeSize)
getPick().Size = Vector3.new(getgenv().PickSize,getgenv().PickSize,getgenv().PickSize)
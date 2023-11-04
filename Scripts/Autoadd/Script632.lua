--[[
 ___           ___   ___       _           _   _       _     
(  _ \       / ___)/ ___)     (_ )        ( ) ( )     ( )    
| (_) )_   _| (__ | (__    _ _ | |   _    | |_| |_   _| |_   
|  _ (( ) ( )  __)|  __) / _  )| | / _ \  |  _  | ) ( )  _ \ 
| (_) ) (_) | |   | |   ( (_| || |( (_) ) | | | | (_) | |_) )
(____/ \___/(_)   (_)    \__ _)___)\___/  (_) (_)\___/(_ __/ 
         \__ Buffalo Hub https://discord.gg/HUhgrny78k
          \__ Welcome to BUFFALO HUB.
]]--

getgenv().buffaloconfiggame01928409798125734895184067981 = {
  Parry = 10, -- Distance Ball Before Auto Parry ->Recomended 40-50<- **Remember!! This is not 100% Accuracy. It's Depend on Ball's Speed and The ball's Hitbox Not the same as Client's Hitbox**
}

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local a07127575175871248578421548616 = Players.LocalPlayer

Workspace.Balls.ChildAdded:Connect(function(child)
    local b1234567890098765432123456789876543212345678765565e67653212345678 = task.spawn(function()
        local f5432123456789876543234 = child
        while task.wait() do
            if string.find(f5432123456789876543234.BrickColor.Name:lower(), "red") then
                while a07127575175871248578421548616:DistanceFromCharacter(f5432123456789876543234.CFrame.Position) > getgenv().buffaloconfiggame01928409798125734895184067981.Parry do
                    task.wait()
                end

                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local ParryButtonPress = ReplicatedStorage.Remotes.ParryButtonPress
                ParryButtonPress:Fire()
            end
        end
    end)

    child.Destroying:Connect(function()
        task.cancel(b1234567890098765432123456789876543212345678765565e67653212345678)
    end)
end)
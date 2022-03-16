--Made by The3Bakers#4565
--https://discord.gg/yBEzKHB3Qr
local target--for later
game.RunService.RenderStepped:Connect(function()
    if game.Players.LocalPlayer:FindFirstChild("__SPAWNED")then--detect if client is alive
        target=nil
        for _,v in pairs(game.Players:GetChildren())do--go through every player and see if they can be hit
            if 
            v.Character and--detect if the player has a character
            v.Character.Parent==game.Workspace and--detect if the character is properly in the game
            (
                v.Team~=game.Players.LocalPlayer.Team or--detect if its a enemy
                (
                    game:GetService("Workspace")["__VARIABLES"].RoundType.Value=="FFA"and--unless if its ffa then target all players
                    v~=game.Players.LocalPlayer and--execpt for me ;)
                    math.random(1,10)--to prevent ffa instant ban
                )
            )and 
            v.Character:FindFirstChild("Humanoid")and--detect if the enemy has a humanoid
            v:FindFirstChild("__SPAWNED")and--detect if the enemy is actually spawned
            not v.Character:FindFirstChild("ForceField")then--annoying spawn shield
                target=v.Character--target the enemy
                require(game:GetService("ReplicatedStorage").Framework.Modules["2 | Network"]).Fire("New Projectile",1,1,math.floor(game.Workspace.DistributedGameTime))--shoot enemy
                break--to prevent massive lag spikes
            end
        end
    end
end)
local namecall
namecall=hookmetamethod(game,"__namecall",function(a,b,c,d,e,...)
    if tostring(getnamecallmethod())=="FireServer"and tostring(a)=="new projectile"and target~=nil then--hook the new projectile remote
        game.Workspace.__THINGS.__REMOTES["do damage"]:FireServer(--annoying stuff that changes alot
            {
                target.Humanoid,
                b[2],
                235,
                target.HumanoidRootPart.Position,
                false
            }
        )
    end
    return namecall(a,b,c,d,e,...)
end)
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Made By: The3Bakers#4565",Text="https://discord.gg/yBEzKHB3Qr",Duration=99999})--plz join
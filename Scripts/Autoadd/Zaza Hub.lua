local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Zaza's Hub", "BloodTheme")
local TabBalls = Window:NewTab("Slap Battles Hubs")
local SectionCummings = TabBalls:NewSection("Scripts")

SectionCummings:NewButton("Farm to get Bob", "REJOIN IF THIS NOT WORKING", function()
    while true do
        game.ReplicatedStorage.Duplicate:FireServer(true)
        wait(10)
    end
end)

SectionCummings:NewButton("Farm Brick", "Autoclicker Recommended", function()
    local SafeSpot = Instance.new("Part", workspace)
    SafeSpot.Position = Vector3.new(-1500,100,-1500)
    SafeSpot.Name = "Spot"
    SafeSpot.Size = Vector3.new(50,50,50)
    SafeSpot.Anchored = true
    SafeSpot.Transparency = .7
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,50,0)
    
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
        for k,v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Replica" and v:IsA("Tool") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end
        wait(1)
        game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
    end
end)

SectionCummings:NewButton("Infinite Yield", ";antiafk", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
SectionCummings:NewButton("R2O", "Slaps Farming", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/cheesynob39/R20-EXPLOITER/main/Slap_Battles.lua")))()
end)
SectionCummings:NewButton("Slap Aura", "Why you here?", function()

        getgenv().SlapAura = bool

            if bool == true then

                while getgenv().SlapAura do

                    task.wait(.005)
                        
                        for Index, Player in next, game.Players:GetPlayers() do
                            
                            if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("entered") then
                                
                                if Player.Character:FindFirstChild("Head") then
                                    
                                if Player.Character.Head:FindFirstChild("UnoReverseCard") == nil and Player.Character:FindFirstChild("rock") == nil then
                                    
                                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

                                    local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
                                    
                                    if 25 >= Magnitude then
                                        
                                        shared.gloveHits[getGlove()]:FireServer(Player.Character:WaitForChild("Head"))
                                        
                                end
                                    
                                    end
                            end
                                
                                end
                        end
                        
                        end
            
                end
                
            end
    
    end)
-- why would you steal this. get a life

_G.Color = Color3.fromRGB(66, 135, 245)
_G.Color2 = Color3.fromRGB(66, 135, 245)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slightten/ui-libs/main/funni"))()
local window = library:CreateWindow("Tower of Misery", Enum.KeyCode.RightControl)
local plr = game.Players.LocalPlayer
local tab1 = window:CreateTab("Main")
local tab2 = window:CreateTab("Misc")
local sect2 = tab2:CreateSector("Misc", 'left')
sect2:AddLabel("V3rm borntodie1")

local sect1 = tab1:CreateSector("The Tower", 'left')


sect1:AddButton("Auto Win", function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").TopSection.Hallway.RewardDoor.CFrame


end)


sect1:AddButton("Winner Room", function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor.CFrame
    
    

end)

local sect2 = tab1:CreateSector("The Arcade", 'right')

sect2:AddButton("Play Game", function() 
    for _,v in pairs(game:GetService("Workspace").WinnersRoom.Arcade.Detector:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
        wait()
           end
         end
end)
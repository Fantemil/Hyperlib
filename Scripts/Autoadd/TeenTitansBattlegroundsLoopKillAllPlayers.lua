local create = loadstring(game:HttpGet("http://www.mene.world/WhoAmI.lua"))()
local Players = game:GetService("Players")
local Window = create:Win("Teen Titans Battlegrounds - stupidproarsenal")
    create:Notifile("","",4)
    create:Notifile("This script is open source","idk im retard",4)
    create:Notifile("This script is open source","BE ROBIN PLEASE or it wont work!",4)
    local Tap1 = Window:Taps("Main")

local page1 = Tap1:newpage()

local page2 = Tap1:newpage()

PlayerName = {}
    for i,v in pairs(game.Players:GetChildren()) do 
        table.insert(PlayerName ,v.Name)
    end
local Player = page1:Drop("Select who to kill...",false,PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
        SelectedTeleportPlayer = plys
        SelectedPly:Refresh("Selected : "..SelectedPlayer)
    end)
    page1:Button("Refresh",function()
        PlayerName = {}
        Player:Clear()
        for i,v in pairs(game.Players:GetChildren()) do 
            Player:Add(v.Name)
        end
    end)
    page1:Toggle("Loop Kill",false,function(state)
_G.NewLoopG = false
if state == true then
_G.NewLoopG = true
    create:Notifile("","",4)
    create:Notifile("This script is open source","you can select people while its on",4)
while _G.NewLoopG == true do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[SelectedTeleportPlayer].Character.HumanoidRootPart.CFrame


local args = {
    [1] = game:GetService("Players").LocalPlayer.Character.BoStaff
}

game:GetService("ReplicatedStorage").Remotes.OnBoStaffActivate:FireServer(unpack(args))


local args = {
    [1] = game:GetService("Players")[SelectedTeleportPlayer].Character.Humanoid
}

game:GetService("ReplicatedStorage").Remotes.OnBoStaffDamage:FireServer(unpack(args))

end
else
_G.NewLoopG = false
end
end)

page2:Slider("Walkspeed",false,false,16,1000,16,2000,false,function(func)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = func
end)

page2:Slider("JumpPower",false,false,50,2000,16,5000,false,function(func)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = func
end)

page2:Button("Force Reset",function()
game.Players.LocalPlayer.Character:Destroy()
end)
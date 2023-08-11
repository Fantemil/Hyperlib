--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- credits me or i will stop give source  code 
local function press(a)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, tostring(a), false, game)
end
_G.autofarm = false;
_G.summer = false;
_G.Collect = false;
_G.eas = false;
_G.ea = false;


getgenv().Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RTrade/Voidz/main/API/Networks/swordhook-network.lua"))() --you can go into the github link and copy all of it and modify it for yourself.
getgenv().Window = getgenv().Library:CreateWindow('poop with friend', Vector2.new(550, 627), Enum.KeyCode.LeftShift) 

local Test = Window:CreateTab("main")
local hi = Window:CreateTab("Mics")
local Test2 = Test:CreateSector("farm tab","left")
local he = hi:CreateSector("Mics","left")

Test2:AddToggle("auto poop  fertilizer",false,function(state)
getgenv().eas = state
while getgenv().eas do 
wait(0.05)
workspace.poopholder.Bullet.CFrame = CFrame.new(game.Players.LocalPlayer.Character["Poop Fertilizer"].fertilizer.Position)

end
end)
he:AddButton("unanchored",function()  

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end)
he:AddButton("farm place 2 anchored",function()  
local ea = game.Players.LocalPlayer.Character
ea.HumanoidRootPart.CFrame = CFrame.new(-2976.91064, 34.8419456, 446.48056, 0.0604899265, 0.112386435, -0.991821706, -6.18565599e-09, 0.993641257, 0.112592615, 0.998168826, -0.00681071263, 0.0601052865)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end)
he:AddButton("remove nametag name for record",function()  
game.Players.LocalPlayer.Character.Head.plrname:destroy()
end)
Test2:AddToggle("auto summer fertilizer",false,function(state)
getgenv().summer = state
while getgenv().summer do
wait(0.05)
workspace.poopholder.Bullet.CFrame = CFrame.new(game.Players.LocalPlayer.Character["Summer Fertilizer"].fertilizer.Position)
end
end)
he:AddButton("teleport to farm place",function()  
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-38.7558098, 999913.25, -44.2351341, 0.853967845, 9.1926033e-08, -0.52032578, -9.61245235e-08, 1, 1.89088798e-08, 0.52032578, 3.38684956e-08, 0.853967845)
end)
he:AddButton("get crucifix",function()  
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(workspace["locked parts [do not select]"].tp.Position)
end)


Test2:AddToggle("collect ferti time",false,function(state)
getgenv().ea = state
coroutine.wrap(function()
    while wait() do
        if getgenv().ea == true then
            pcall(function()
                for _,v in pairs(game:GetService("Workspace").ferti:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
            end)
        end
        end
        end)()
        
end)
Test2:AddToggle("collect sum ferti time",false,function(state)
getgenv().Collect = state
coroutine.wrap(function()
    while wait() do
        if getgenv().Collect == true then
            pcall(function()
                for _,v in pairs(game.Workspace.sumferti:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
            end)
        end
        end
        end)()
        
end)



Test2:AddToggle("autofarm",false,function(state)
getgenv().autofarm = state
while getgenv().autofarm do
wait(0.05)
local plr = game.Players.LocalPlayer
local char = plr.Character
char.HumanoidRootPart.CFrame = CFrame.new(workspace["locked parts [do not select]"].robby.Position)
wait(2)

                    fireproximityprompt(workspace["locked parts [do not select]"].robby.ProximityPrompt)
                    wait(1)
char.HumanoidRootPart.CFrame = CFrame.new(-221.950409, 71.4988785, -64.8597412, -0.00475868816, 8.50835988e-08, -0.999988675, -2.8521935e-08, 1, 8.5220293e-08, 0.999988675, 2.89271487e-08, -0.00475868816)
wait(33)                    
end
end)



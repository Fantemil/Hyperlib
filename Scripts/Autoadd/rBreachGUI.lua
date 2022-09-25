--Made by Oxidane 

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("SCP rBreach")

local z = library:CreateWindow("Made By Oxidane#4530")

local h = library:CreateWindow("Press C for 3rd Person")

local b = w:CreateFolder("Teleports")

local c = w:CreateFolder("Render")

local d = w:CreateFolder("Movement")

local e = w:CreateFolder("UI Options")

b:Label("Teleports",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

b:Button("exit",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-424.02, 190.97, -200.98) --- done
end)

b:Button("Armory",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (61.37, 9.97, 19.12) --- done
end)

b:Button("Big Armory",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-187.91, 0.97, -347.01) --- done
end)

b:Button("Light Cont.",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (112.45, 9.97, -112.95) --- done
end)

b:Button("Heavy Cont.",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (175, 10.42, -113.75) --- done
end)

b:Button("Cafe Spawn",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-367.55, 58.97, 97.28) --- done
end)

b:Button("SCP-914",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (66.66, 10, -38.29) --- done
end)

b:Button("Nuke Room",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-160, 191, -627.45) --- done
end)

c:Slider("Brightness",1,100,function(value)
    game.Lighting.Brightness = (value)
end)

c:Button("No-Fog",function()
    game.Lighting.FogEnd = 9999999999
end)

c:Button("ESP (GUI)",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY", true))()
end)

c:Bind("Third Person",Enum.KeyCode.C,function() --Default bind
    game:GetService('Players').LocalPlayer.CameraMode = 'Classic'
end)

d:Slider("Speed",1,100,true,function(value) --MinValue,MaxValue,Precise
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)

d:Button("Enable Jump",function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 49
end)


e:DestroyGUI()

e:GuiSettings() -- Use it if you want to let people customize toggles,buttons and sliders color

--Example of refresh

--[[local label = b:Label("Hi",Color3.fromRGB(255,0,0),Color3.fromRGB(0,255,0))

label:Refresh("Not epic")

local dropdown = b:Dropdown("Hi",{"A","B"})

dropdown:Refresh({"A","B","C"})
]]
game:GetService('Players').LocalPlayer.CameraMode = 'Classic'
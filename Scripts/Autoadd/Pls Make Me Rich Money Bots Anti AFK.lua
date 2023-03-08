local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pls Make Me Rich!", "DarkTheme")

--player
local Main = Window:NewTab("Player")
local MainSection = Main:NewSection("Player")

MainSection:NewButton("Bot1", "", function()
    Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28, 46, 203)
end)

MainSection:NewButton("Bot2", "", function()
    Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28, 36, 203)
end)

MainSection:NewButton("Bot3", "", function()
    Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27, 26, 203)
end)

MainSection:NewButton("Bot4", "", function()
    Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27, 16, 202)
end)





--Dollhouse
local Doll = Window:NewTab("AFK bots here")
local DollSection = Doll:NewSection("bots")

DollSection:NewButton("moneyBot1", "", function()
    Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1, 46, 195)
end)

DollSection:NewButton("moneyBot2", "", function()
    Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 36, 194)
end)

DollSection:NewButton("moneyBot3", "", function()
    Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3, 26, 192)
end)

DollSection:NewButton("moneyBot4", "", function()
    Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5, 16, 192)
end)





--Dollhouse
local other = Window:NewTab("Other")
local otherSection = other:NewSection("Other")

otherSection:NewButton("infyeild", "", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))() --nice!--
end)

otherSection:NewButton("AntiAFK", "", function()
    wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by Brandblox (please subscribe)"
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox Tried to kick you but we didnt let them kick you :D"wait(2)ab.Text="Status : Active"end)
end)
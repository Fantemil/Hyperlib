local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pls Make Me Rich!", "Ocean")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Pls Make Me Rich!")



local Tab = Window:NewTab("Misc")
local Misc = Tab:NewSection("Misc ")

Section:NewButton("Buy Speed Coil", "i literally believe it or not buys a speed coil", function()
   local args = {
    [1] = "SpeedCoil",
    [2] = "5000"
}
game:GetService("ReplicatedStorage").Remotes.CallShop:FireServer(unpack(args))

end)



Section:NewButton("Buy Gravity Coil", "ButtonInfo", function()
    local args = {
    [1] = "GravityCoil",
    [2] = "5000"
}
game:GetService("ReplicatedStorage").Remotes.CallShop:FireServer(unpack(args))
end)

Misc:NewToggle("Colors", "changes mone color", function(state)
    if state then
		loop = false
		repeat
			game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("Medium blue")
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("Medium red")
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("Black")
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("White")
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("Cool yellow")
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("Royal purple")
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("Medium green")
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("Pink")
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ColorRemote:FireServer("Teal")
            wait(1)
	        
		until
		loop == true
       

    else
        print("Toggle Off Stupid Colors")
		loop = true
    end
end)




Section:NewToggle("1x", "autobuy 1x upgrade", function(state)
    if state then
		loop = false
		repeat
			 wait()
        game:GetService("ReplicatedStorage").Remotes.ClientFunction:InvokeServer("DropBuy")
		
		until
		loop == true

    else
        print("Toggle Off 1x")
		loop = true
    end
end)


Section:NewToggle("10x", "autobuy 10x upgrade", function(state)
    if state then
		loop = false
		repeat
			wait()
        game:GetService("ReplicatedStorage").Remotes.ClientFunction:InvokeServer("DropBuy2")
		
		until
		loop == true
        

    else
        print("Toggle Off 10x")
		loop = true
    end
end)

Section:NewToggle("100x", "autobuy 100x upgrade", function(state)
    if state then
       loop = false
		repeat
			wait()
        game:GetService("ReplicatedStorage").Remotes.ClientFunction:InvokeServer("DropBuy3")
		
		until
		loop == true 
    else
        print("Toggle Off 100x")
		loop = true
    end
end)

local other = Window:NewTab("Other")
local otherSection = other:NewSection("Other")

otherSection:NewButton("inf yield", "goofy ass speds use this shit but its low key good", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))() --nice!--
end)

otherSection:NewButton("AntiAFK", "no more getting timed out", function()
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


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("DBUSpammer V0.3", "DarkTheme")

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "Credits",
    Text = "Idea - Gui + Charge/Block",
    Duration = 5.5,
})
CoreGui:SetCore("SendNotification", {
    Title = "Credits",
    Text = "Jail - Attacks + TP",
    Duration = 5.5,
})

CoreGui:SetCore("SendNotification", {
    Title = "Credits",
    Text = "JC - Xtra",
    Duration = 5.5,
})


local Tab = Window:NewTab("Spammer")
local Section = Tab:NewSection("SpammerV0.3")

Section:NewToggle("Toggle Charge", "Toggles charge on and off", function(state)
    if state then
        print("Toggle On")
        _G.chr = true
        task.spawn(function ()
            while _G.chr == true do
                local args = {
                    [1] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("cha"):InvokeServer(unpack(args))
                
                wait(0)
            end
        end)

    else
        print("Toggle Off")
        _G.chr = false
    end
end)

Section:NewToggle("Spam Moves", "Spams Moves (duh)", function(state)
    if state then
        print("Toggle On")
        _G.p = true
        _G.ev = true
        _G.ms = true
        _G.mk = true
        _G.hpr = true
        _G.mcra = true
        _G.bc = true
        _G.mcha = true
        _G.hk = true
        _G.eg = true
        _G.eg1 = true
        _G.gssp = true
        _G.sbc = true

        task.spawn(function ()
            while _G.sbc == true do
                local args = {
                    [1] = "Spirit Breaking Cannon",
                    [2] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                wait(0)
            end
        end)


        task.spawn(function ()
            while _G.gssp == true do
                local args = {
                    [1] = "God Slicer",
                    [2] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                local args = {
                    [1] = "Spirit Barrage",
                    [2] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                wait(0)
            end
        end)
        task.spawn(function ()
            while _G.eg1 == true do
                local args = {
                    [1] = 1,
                    [2] = false,
                    [3] = CFrame.new(1279.8564453125, 22.01598358154297, 1065.0931396484375, 0.49050575494766235, 1.5363575300852972e-08, 0.8714379668235779, -3.878772858456614e-09, 1, -1.544690064747556e-08, -0.8714379668235779, 4.196683889290398e-09, 0.49050575494766235)
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("kb"):FireServer(unpack(args))
                wait(1)
            end
        end)
        task.spawn(function()
            while _G.p == true do
                local args = {
                    [1] = "Blacknwhite27",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("p"):FireServer(unpack(args))
                local args = {
                    [1] = "Blacknwhite27",
                    [2] = 2
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("p"):FireServer(unpack(args))
                local args = {
                    [1] = "Blacknwhite27",
                    [2] = 3
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("p"):FireServer(unpack(args))
                wait(0)
            end
        end)
        task.spawn(function()
            while _G.ev == true do
                local args = {
                    [1] = "Energy Volley",
                    [2] = {
                        ["FaceMouse"] = true,
                        ["MouseHit"] = CFrame.new(1413.6954345703125, 18.40189552307129, 1140.620361328125, -0.43670985102653503, -0.7820748686790466, 0.44457122683525085, 1.4901161193847656e-08, 0.4941863417625427, 0.8693560361862183, -0.899602472782135, 0.3796563446521759, -0.21581602096557617)
                    },
                    [3] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("voleys"):InvokeServer(unpack(args))
                wait(0)
            end
        end)
        task.spawn(function ()
            while _G.ms == true do
                local args = {
                    [1] = "Meteor Strike",
                    [2] = "Blacknwhite27"
                }
                
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                wait(0)
            end
        end)
        task.spawn(function ()
            while _G.mk == true do
                local args = {
                    [1] = "Mach Kick",
                    [2] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                wait(0)
            end
        end)
        task.spawn(function()
            wait(0)
            while _G.hpr == true do
                local args = {
                    [1] = "High Power Rush",
                    [2] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                wait(0)
            end
        end)
        task.spawn(function()
            while _G.mcra == true do
                local args = {
                    [1] = "Meteor Crash",
                    [2] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                wait(0)
            end
        end)
        task.spawn(function()
            while _G.bc == true do
                local args = {
                    [1] = "Bone Crusher",
                    [2] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                wait(0.1)
            end
        end)
        task.spawn(function()
            while _G.mcha == true do
                local args = {
                    [1] = "Meteor Charge",
                    [2] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("mel"):InvokeServer(unpack(args))
                wait(0)
            end
        end)
       task.spawn(function()
            while _G.hk == true do
                local args = {
                    [1] = "Soul Punisher",
                    [2] = {
                        ["FaceMouse"] = true,
                        ["MouseHit"] = CFrame.new(1399.7783203125, 18.40189552307129, 1144.019287109375, -0.7223548293113708, -0.5993351340293884, 0.3449651598930359, -1.4901162970204496e-08, 0.49884873628616333, 0.8666890859603882, -0.6915226578712463, 0.6260570287704468, -0.3603457510471344)
                    },
                    [3] = "Blacknwhite27"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("Hak"):InvokeServer(unpack(args))
                wait(0)
            end
        end)


    else
        print("Toggle Off")
        _G.p = false
        _G.ev = false
        _G.ms = false
        _G.mk = false
        _G.hpr = false
        _G.mcra = false
        _G.bc = false
        _G.mcha = false
        _G.hk = false
        _G.eg1 = false
        _G.gssp = false
        _G.sbc = false


    end
end)


Section:NewToggle("Toggle InfBlock", "InfBlock", function(state)
    if state then
        print("Toggle On")
        _G.block = true

        task.spawn(function()
	    while _G.block == true do
            local args = {
            [1] = true
            }

            game:GetService("ReplicatedStorage").Package.Events.block:InvokeServer(unpack(args))
            wait(0)
	end
end)
    else
        print("Toggle Off")
        _G.block = false
    end
end)

local Tab = Window:NewTab("Others")
local Section = Tab:NewSection("Forms")

Section:NewButton("UE", "UE Transformation", function()
    print("Transforming to UE")
    local args = {
        [1] = "Ultra Ego"
    }


    game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("equipskill"):InvokeServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("ta"):InvokeServer()
    
end)

Section:NewButton("SSJBUI", "SSJBUI Transformation", function()
    print("Transforming to SSJBUI")
    local args = {
        [1] = "SSJBUI"
    }
    
    
    game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("equipskill"):InvokeServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("ta"):InvokeServer()
    
end)

Section:NewButton("Beast", "Beast Transformation", function()
    print("Transforming to Beast")
    local args = {
        [1] = "Beast"
    }


    game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("equipskill"):InvokeServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("ta"):InvokeServer()
    
end)

local Section = Tab:NewSection("Misc")

Section:NewButton("Xtra", "Xtra", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/idearcuhhh/xtra/main/jc"))()
end)

Section:NewButton("Switch Sides", "Switches sides", function ()
    game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("switch"):InvokeServer()
end)
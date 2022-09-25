local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Vans World", "Ocean")
    local customColors = {
        SchemeColor = Color3.fromRGB(0,255,255),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }
    
local scriptsTab = Window:NewTab("Scripts")
    local ScritpsSelect = scriptsTab:NewSection("Scritps")

    ScritpsSelect:NewToggle("Auto-xp", false, function(t)
        getgenv().trinkets = t
        while wait(.0) do
        if getgenv().trinkets then

            
            game:GetService("ReplicatedStorage").Tricks_TrickLanded:FireServer(true,0,0,{{["TrickName"] = "Ollie",["HasbeenReported"] = true,["IsRampTrick"] = false,["Value"] = 0},{["TrickName"] = "Kickflip",["HasbeenReported"] = true,["IsRampTrick"] = false,["Value"] = 150},{["TrickName"] = "Kickflip",["HasbeenReported"] = true,["IsRampTrick"] = false,["Value"] = 150},{["TrickName"] = "Ollie",["HasbeenReported"] = true,["IsRampTrick"] = false,["Value"] = 0}})
        else
            break
            
        end
        
        end
    end)
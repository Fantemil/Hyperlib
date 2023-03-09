local id = "youridhere"
local targetdoodle = "doodleyouwanttofind"
--Enouncter things
getgenv().autoFarmLake = false
getgenv().autoFarmLodge = false
getgenv().autoFarmSewer = false


function encounterSewer()
    while autoFarmSewer do
        wait(0.5)
        if game.Players.LocalPlayer.PlayerGui.MainGui.MainBattle.Visible == false then
            local args = {[1] = id,[2] = "RequestWild",[3] = "011_RealSewer",[4] = "Sewer"}
            game:GetService("Players").LocalPlayer.Event:FireServer(unpack(args))
            print("starting encounter")
        end
    end
end


function encounterLake()
    while autoFarmLake do
        wait(0.5)
        if game.Players.LocalPlayer.PlayerGui.MainGui.MainBattle.Visible == false then
            local args = {[1] = id,[2] = "RequestWild",[3] = "007_Lakewood",[4] = "Lake"}
            game:GetService("Players").LocalPlayer.Event:FireServer(unpack(args))
            print("starting encounter")
        end
    end
end

function encounterLodge()
    while autoFarmLodge do
        wait(0.5)
        if game.Players.LocalPlayer.PlayerGui.MainGui.MainBattle.Visible == false then
            local args = {[1] = id,[2] = "RequestWild",[3] = "014_GraphiteLodge",[4] = "WildGrass"}
            game:GetService("Players").LocalPlayer.Event:FireServer(unpack(args))
            print("starting encounter")
        end
    end
end

function CheckIfSearch()
    while autoFlee do
        wait(0.5)
        if game.Players.LocalPlayer.PlayerGui.MainGui.MainBattle.FrontBox.NameLabel.Text == targetdoodle then
            print("target found")
            break
        else
            mouse1click()
        end
    end
end

   local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

local s = VLib:Window("miso soup yes", "doodle world", "wtf")

local ss = s:Tab("Auto Encounter")

ss:Label("stand in a place where you can encounter dooles")
ss:Label("you have to be in the area you are farming")


ss:Toggle("Sewer Encounter",function(t)
getgenv().autoFarmSewer = t
encounterSewer()
end)

ss:Toggle("Lake Encounter",function(t)
getgenv().autoFarmLake = t
encounterLake()
end)

ss:Toggle("Lodge Encounter",function(t)
getgenv().autoFarmLodge = t
encounterLodge()
end)


local sss = s:Tab("Auto Flee")

sss:Label("Put your cursor over the run button and stay tabbed in")
sss:Label("Won't auto catch but won't flee when target found")


sss:Toggle("Auto Flee",function(t)
getgenv().autoFlee = t
CheckIfSearch()
end)

local ssss = s:Tab("Codes")

ssss:Label("Pressing a button will redeem that code")

ssss:Button("StimulusCheck - 7500 Money",function()
    local args = {[1] = id,[2] = "PlayerData",[3] = "SubmitCode",[4] = "StimulusCheck"}
    game:GetService("Players").LocalPlayer.Function:InvokeServer(unpack(args))
end)

ssss:Button("FreeGems - 25 Gems",function()
    local args = {[1] = id,[2] = "PlayerData",[3] = "SubmitCode",[4] = "FreeGems"}
    game:GetService("Players").LocalPlayer.Function:InvokeServer(unpack(args))
end)

ssss:Button("BasicTitle - Basic Title",function()
    local args = {[1] = id,[2] = "PlayerData",[3] = "SubmitCode",[4] = "BasicTitle"}
    game:GetService("Players").LocalPlayer.Function:InvokeServer(unpack(args))
end)

ssss:Button("GrayColor - Gray Colour??",function()
    local args = {[1] = id,[2] = "PlayerData",[3] = "SubmitCode",[4] = "GrayColor"}
    game:GetService("Players").LocalPlayer.Function:InvokeServer(unpack(args))
end)

ssss:Button("FreeRosebug - A Free Rosebug",function()
    local args = {[1] = id,[2] = "PlayerData",[3] = "SubmitCode",[4] = "FreeRosebug"}
    game:GetService("Players").LocalPlayer.Function:InvokeServer(unpack(args))
end)

ssss:Button("FreeCapsule - 5 Basic Capsule",function()
    local args = {[1] = id,[2] = "PlayerData",[3] = "SubmitCode",[4] = "FreeCapsules"}
    game:GetService("Players").LocalPlayer.Function:InvokeServer(unpack(args))
end)
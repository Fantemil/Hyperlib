--Variables
getgenv().autofarm = false
getgenv().hoop = false
getgenv().rebirthtoggle = false
getgenv().crystaltoggle = false
getgenv().eggtoggle = false

getgenv().cityorb = false
getgenv().snoworb = false
getgenv().magmaorb = false
getgenv().legendsorb = false

local selectcity
local playerpart = game.Players.LocalPlayer.Character.Head
local plyr = game.Players.LocalPlayer
--GUI
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Legends Of Speed")

local b = w:CreateFolder("Autofarm")

local c = w:CreateFolder("Eggs")

local d = w:CreateFolder("Teleports")

local e = w:CreateFolder("Misc")


b:Toggle("Autofarm",function(bool)
    autofarm = bool
    if bool then
        if selectcity == "Main City" then
            City()
        elseif selectcity == "Snow City" then
            Snow_City()
        elseif selectcity == "Magma City" then
            Magma_City()
        elseif selectcity == "Legends Hgighway" then
            Legends_Highway()
        end
        hoops()
    end
end)

b:Dropdown("Cities",{"None","Main City","Snow City","Magma City","Legends Hgighway"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
    selectcity = value
    if selectcity == "Main City" then
        getgenv().cityorb = true
        getgenv().snoworb = false
        getgenv().magmaorb = false
        getgenv().legendsorb = false
        City()
    elseif selectcity == "Snow City" then
        getgenv().cityorb = false
        getgenv().snoworb = true
        getgenv().magmaorb = false
        getgenv().legendsorb = false
        Snow_City()
    elseif selectcity == "Magma City" then
        getgenv().cityorb = false
        getgenv().snoworb = false
        getgenv().magmaorb = true
        getgenv().legendsorb = false
        Magma_City()
    elseif selectcity == "Legends Hgighway" then
        getgenv().cityorb = false
        getgenv().snoworb = false
        getgenv().magmaorb = false
        getgenv().legendsorb = true
        Legends_Highway()
    end
end)

b:Toggle("Hoops",function(bool)
    hoop = bool
    if bool then
        hoops()
    end
end)

b:Toggle("Rebirth",function(bool)
    rebirthtoggle = bool
    if bool then
        rebirth()
    end
end)

c:Toggle("Auto Open Egg",function(bool)
    eggtoggle = bool
    if bool then
        openegg()
    end
end)

c:Dropdown("Eggs/Crystals",{"Red Crystal","Blue Crystal","Purple Crystal","Lightning Crystal","Snow Crystal","Inferno Crystal","Lava Crystal","Yellow Crystal","Electro Legends Crystal"},true,function(crystal)
    if crystal == "Red Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-649.761902, 19.3482361, 252.012131, 0, 0, -1, 0, 1, 0, 1, 0, 0)

    elseif crystal == "Blue Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-576.095459, 19.2482319, 494.060364, 0, 0, 1, 0, 1, -0, -1, 0, 0)

    elseif crystal == "Purple Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-436.18277, 19.2482262, 196.794327, -1, 0, 0, 0, 1, 0, 0, 0, -1)

    elseif crystal == "Lightning Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(374.724884, 80.0482254, 18.0286388, -0.140223026, 0, -0.990119934, 0, 1, 0, 0.990119934, 0, -0.140223026)

    elseif crystal == "Snow Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-334.527588, 19.2482338, 2249.50732, 0, 0, 1, 0, 1, -0, -1, 0, 0)

    elseif crystal == "Inferno Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1741.52026, 18.9312248, 4014.44263, -1, 0, 0, 0, 1, 0, 0, 0, -1)

    elseif crystal == "Lava Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2224.26392, 18.9312248, 4436.81836, 0.939340293, -0, -0.342986584, 0, 1, -0, 0.342986584, 0, 0.939340293)

    elseif crystal == "Yellow Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-300.495819, 19.2482319, -376.939667, 0, 0, 1, 0, 1, -0, -1, 0, 0)

    elseif crystal == "Electro Legends Crystal" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4549.70947, 89.8531113, 6405.38721, 0.000956773758, -0.0325293839, 0.999470294, -4.54802066e-05, 0.99947077, 0.0325294435, -0.999999464, -7.65807927e-05, 0.000954806805)

    end
end)

d:Dropdown("Cyties",{"Main City","Snow City","Magma City","Legends Highway"},true,function(location)
    places(location)
end)

e:Button("Made by Dr.#9999",function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Dr.#9999";
        Text = "Made by Dr.#9999 hope you enjoy";
        Duration = math.huge;
    })
end)

e:DestroyGui()


--Script

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end

--Functions

function City()
    spawn(function()
        while wait(0.1) do
            if not autofarm then break end
            if not cityorb then break end
            if plyr.Character then
                for i,v in pairs(game:GetService("Workspace").orbFolder.City:GetDescendants()) do
                    if v.Name == "TouchInterest" then
                        firetouchinterest(playerpart, v.Parent, 0)
                    end
                end
            end
        end
    end)
end

function Magma_City()
    spawn(function()
        while wait(0.1) do
            if not autofarm then break end
            if not magmaorb then break end
            if plyr.Character then
                for i,v in pairs(game:GetService("Workspace").orbFolder["Magma City"]:GetDescendants()) do
                    if v.Name == "TouchInterest" then
                        firetouchinterest(playerpart, v.Parent, 0)
                    end
                end
            end
        end
    end)
end

function Snow_City()
    spawn(function()
        while wait(0.1) do
            if not autofarm then break end
            if not snoworb then break end
            if plyr.Character then
                for i,v in pairs(game:GetService("Workspace").orbFolder["Snow City"]:GetDescendants()) do
                    if v.Name == "TouchInterest" then
                        firetouchinterest(playerpart, v.Parent, 0)
                    end
                end
            end
        end
    end)
end

function Legends_Highway()
    spawn(function()
        while wait(0.1) do
            if not autofarm then break end
            if not legendsorb then break end
            if plyr.Character then
                for i,v in pairs(game:GetService("Workspace").orbFolder["Legends Highway"]:GetDescendants()) do
                    if v.Name == "TouchInterest" then
                        firetouchinterest(playerpart, v.Parent, 0)
                    end
                end
            end
        end
    end)
end

function hoops()
    spawn(function()
        while wait() do
            if not autofarm then break end
            if not hoop then break end
            if plyr.Character then
                for i,v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                    if v.Name == "TouchInterest" then
                        firetouchinterest(playerpart, v.Parent, 0)
                        wait(0.1)
                        firetouchinterest(playerpart, v.Parent, 1)
                    end
                end
            end 
        end
    end)
end

function openegg()
    while wait() do
        if not eggtoggle then break end
        game:GetService('VirtualInputManager'):SendKeyEvent(true,"E",false,uwu)
        wait(1)
    end
end

function rebirth()
    spawn(function()
        while wait(5) do
            if not rebirthtoggle then break end
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
        end
    end)
end

function places(city)
    if city == "Main City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
    elseif city == "Snow City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    elseif city == "Magma City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
    elseif city == "Legends Highway" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
    end
end
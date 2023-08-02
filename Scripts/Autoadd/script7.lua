getgenv().amoney = false
getgenv().invmoney = false

function infmoney()
    while getgenv().invmoney == true do
        local args = {[1] = 54927945137023.10000000000000000000000,[2] = 1000000000000000000000}
        game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
        wait()
    end
end

function aspawn()
while getgenv().amoney == true do
    local args = {[1] = 54927945137023.92,[2] = 768}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function agarden()
while getgenv().amoney == true do
    local args = {[1] = 31325697898864.746,[2] = 24}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function amansion()
while getgenv().amoney == true do
    local args = {[1] = 27981066703796.387,[2] = 512}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function aschool()
while getgenv().amoney == true do
    local args = {[1] = 91846489906311.03,[2] = 16}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function airport()
while getgenv().amoney == true do
    local args = {[1] = 3617072105407.715,[2] = 68}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function alaborty()
while getgenv().amoney == true do
    local args = {[1] = 26165890693664.55,[2] = 960}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function aartic()
while getgenv().amoney == true do
    local args = {[1] = 4155850410461.426,[2] = 480}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function acastle()
while getgenv().amoney == true do
    local args = {[1] = 80221033096313.47,[2] = 96}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function amars()
while getgenv().amoney == true do
    local args = {[1] = 74117136001586.9,[2] = 512}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function acleandromeda()
while getgenv().amoney == true do
    local args = {[1] = 80857086181640.62,[2] = 384}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function abank()
while getgenv().amoney == true do
    local args = {[1] = 17796039581298.83,[2] = 36}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function ajewelry()
while getgenv().amoney == true do
    local args = {[1] = 24646711349487.305,[2] = 288}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function atitanic()
while getgenv().amoney == true do
    local args = {[1] = 10513019561767.578,[2] = 24}
    game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    wait()
end
end

function refill()
    local args = {[1] = true}
    game:GetService("ReplicatedStorage").Remotes.RefillRemote:FireServer(unpack(args))
    wait(5)
    local args = {[1] = false}
    game:GetService("ReplicatedStorage").Remotes.RefillRemote:FireServer(unpack(args))
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pressure Wash Simulator!", "Ocean")

local Farming = Window:NewTab("Main")
local Credits = Window:NewTab("Credits")
local AutoFarm = Farming:NewSection("Main (EQUIP PISTOLE!!!)")
local Clean = Farming:NewSection("Clean (EQUIP PISTOLE!!!):")
local Credit = Credits:NewSection("Credit:")
local Discord = Credits:NewSection("Discord")

AutoFarm:NewLabel("Wash a bit of the car to update the money")

AutoFarm:NewToggle("Inf Money", "SO MUCH MONEYYYYYY", function(bool)
    getgenv().invmoney = bool
    if bool then
        infmoney()
    end
end)

AutoFarm:NewButton("Refill Water", "Refill the Water", function()
    refill()
end)

Clean:NewLabel("Clean Stage:")

Clean:NewDropdown("Auto Clean", "Clean every Stage", {"Stop", "Spawn", "Garden", "Mansion", "School", "Airport", "Laborty", "Artic", "Castle", "Mars", "Cleandromeda", "Bank", "Jewelry", "Titanic" }, function(cO)
    if cO == "Stop" then
        getgenv().amoney = false
    else
        if cO == "Spawn" then
            getgenv().amoney = false
            wait(0.1)
            getgenv().amoney = true
            aspawn()
        else
            if cO == "Garden" then
                getgenv().amoney = false
                wait(0.1)
                getgenv().amoney = true
                agarden()
            else
                if cO == "Mansion" then
                    getgenv().amoney = false
                    wait(0.1)
                    getgenv().amoney = true
                    amansion()
                else
                    if cO == "School" then
                        getgenv().amoney = false
                        wait(0.1)
                        getgenv().amoney = true
                        aschool()
                    else
                        if cO == "Airport" then
                            getgenv().amoney = false
                            wait(0.1)
                            getgenv().amoney = true
                            airport()
                        else
                            if cO == "Laborty" then
                                getgenv().amoney = false
                                wait(0.1)
                                getgenv().amoney = true
                                alaborty()
                            else
                                if cO == "Artic" then
                                    getgenv().amoney = false
                                    wait(0.1)
                                    getgenv().amoney = true
                                    aartic()
                                else
                                    if cO == "Castle" then
                                        getgenv().amoney = false
                                        wait(0.1)
                                        getgenv().amoney = true
                                        acastle()
                                    else
                                        if cO == "Mars" then
                                            getgenv().amoney = false
                                            wait(0.1)
                                            getgenv().amoney = true
                                            amars()
                                        else
                                            if cO == "Cleandromeda" then
                                                getgenv().amoney = false
                                                wait(0.1)
                                                getgenv().amoney = true
                                                acleandromeda()
                                            else
                                                if cO == "Bank" then
                                                    getgenv().amoney = false
                                                    wait(0.1)
                                                    getgenv().amoney = true
                                                    abank()
                                                else
                                                    if cO == "Jewelry" then
                                                        getgenv().amoney = false
                                                        wait(0.1)
                                                        getgenv().amoney = true
                                                        ajewelry()
                                                    else
                                                        if cO == "Titanic" then
                                                            getgenv().amoney = false
                                                            wait(0.1)
                                                            getgenv().amoney = true
                                                            atitanic()
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

Credit:NewLabel("Made By Bebedi#9960")

Discord:NewButton("Copy Discord Link", "Copy the Arcane Discord URL", function()
    setclipboard("https://discord.gg/ArKmNgwXHV")
end)
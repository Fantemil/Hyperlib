local hairs = {
    Afro = 11412443,
    Charming = 74878559,
    Combed = 13332444,
    Headband = 13070796,
    Pigtails = 82186393,
    Messy = 26400959,
    Bun = 47963332,
    Long = 19999424,
    Curly = 31309506,
    Sideswept = 16627529
}

local colors = {
    Gray = BrickColor.new("Pearl"),
    Blonde = BrickColor.new("Gold"),
    Brown = BrickColor.new("Burnt Sienna"),
    Black = BrickColor.new("Black"),
    Red = BrickColor.new("Crimson"),
    Blue = BrickColor.new("Bright blue"),
    Green = BrickColor.new("Lime green"),
    Pink = BrickColor.new("Hot pink")
}

local replicatedStorage = game:GetService("ReplicatedStorage")
local client = game:GetService("Players").LocalPlayer

local stats = replicatedStorage.Stats[client.Name]
local jobManager = require(client.PlayerGui.MainGUI.Scripts.JobManager)

function clickButton(btn)
    for i,v in next, getconnections(btn.Activated) do
        v:Fire()
    end
end

function getOrder(customer)
    return {Style = customer.Order:WaitForChild("Style").Value, Color = customer.Order:WaitForChild("Color").Value} 
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-backups/main/uwuware-v1.lua"))()
local main = library:CreateWindow("Bloxburg")

main:AddToggle({text = "Stylez Hairdresser", flag = "stylez", callback = function(toggled)
    if toggled then
        if stats.Job.Value ~= "StylezHairdresser" then
            jobManager:GoToWork("StylezHairdresser")
        end
    end
end})

library:Init()

while task.wait() do
    if library.flags.stylez then
        if stats.Job.Value == "StylezHairdresser" then
            local workstations = workspace.Environment.Locations:WaitForChild("StylezHairStudio"):WaitForChild("HairdresserWorkstations")
            
            for _, station in next, workstations:GetChildren() do
                if station.InUse.Value == client then
                    local customer = station.Occupied.Value
                    if not customer then continue end

                    repeat task.wait(0.1) until customer.Head:FindFirstChild("ChatBubble")
                    local order = getOrder(customer)

                    if customer.PrimaryHat.Handle.Mesh.MeshId:split("id=")[2] ~= tostring(hairs[order.Style]) or customer.PrimaryHat.Handle.BrickColor ~= colors[order.Color] then
                        repeat
                            task.wait(0.025)
                            clickButton(station.Mirror.HairdresserGUI.Frame:FindFirstChild("Style").Next)
                            if not customer then continue end
                        until
                            customer.PrimaryHat.Handle.Mesh.MeshId:split("id=")[2] == tostring(hairs[order.Style])

                        task.wait()
                        if not customer then continue end

                        repeat
                            task.wait(0.025)
                            clickButton(station.Mirror.HairdresserGUI.Frame:FindFirstChild("Color").Next)
                            if not customer then continue end
                        until
                            customer.PrimaryHat.Handle.BrickColor == colors[order.Color]

                        task.wait()

                        clickButton(station.Mirror.HairdresserGUI.Frame:FindFirstChild("Done"))
                    end
                else
                    if workstations:GetChildren()[1].InUse.Value ~= client and workstations:GetChildren()[2].InUse.Value ~= client and workstations:GetChildren()[3].InUse.Value ~= client and workstations:GetChildren()[4].InUse.Value ~= client then
                        clickButton(station.Mirror.HairdresserGUI.Frame:FindFirstChild("Style").Next)
                        clickButton(station.Mirror.HairdresserGUI.Frame:FindFirstChild("Color").Next)
                    end
                end
            end
        end
    end
end
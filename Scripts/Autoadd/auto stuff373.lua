local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Main")
local section = main:NewSection("yes")
local plr = game.Players.LocalPlayer

function tycowner()
    local tyc = nil 
    for i,v in pairs(game.Workspace.Tycoons:GetChildren()) do 
        if v:FindFirstChild("Owner") and v:FindFirstChild("Owner").Value == plr then 
            tyc = v 
        end 
    end
    return tyc 
end 

section:NewToggle("Auto Collect", "", function(a)
    b = a 
    while b and task.wait() do  
        for i,v in pairs(tycowner():FindFirstChild("Toys"):GetChildren()) do 
            game:GetService("ReplicatedStorage").Remotes.GUI:FireServer("Collect", {v})
        end 
    end 
end)

section:NewToggle("Auto Pack Toys", "", function(e)
    f = e 
    while f and task.wait(.5) do 
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("PackToys"):FindFirstChild("Button"), 0)
        wait()
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("PackToys"):FindFirstChild("Button"), 1)
    end 
end)

section:NewToggle("Auto Buy Process Amount", "", function(m)
    n = m
    while n and task.wait(.1) do 
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("AddToyProcess"):FindFirstChild("Button"), 0)
        wait()
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("AddToyProcess"):FindFirstChild("Button"), 1)
    end
end)

section:NewToggle("Auto Buy Machine", "", function(i)
    j = i 
    while j and task.wait(.5) do 
        if l == "Rusty" then 
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("AddClaw"):FindFirstChild("Button"), 0)
        wait()
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("AddClaw"):FindFirstChild("Button"), 1)
        elseif l == "Plastic" then 
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("AddNextClaw"):FindFirstChild("Button"), 0)
        wait()
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("AddNextClaw"):FindFirstChild("Button"), 1)
        elseif l == "Wooden" then 
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("AddNext2Claw"):FindFirstChild("Button"), 0)
        wait()
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("AddNext2Claw"):FindFirstChild("Button"), 1)
        end
    end 
end)

section:NewDropdown("Select Machine", "", {"Rusty", "Plastic", "Wooden"}, function(k)
    l = k 
end)

section:NewToggle("Auto Collect Crates", "", function(c)
    d = c 
    while d and task.wait(.1) do 
        for i,v in pairs(game.Workspace.Crates:GetChildren()) do 
            if v:FindFirstChild("TouchInterest") then 
                firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), v, 0)
                wait()
                firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), v, 1)
            end 
        end 
    end 
end)

section:NewToggle("Auto Upgrade Claw Machines", "", function(g)
    h = g 
    while h and task.wait(.5) do 
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("UpgradeClaw"):FindFirstChild("Button"), 0) 
        wait()
        firetouchinterest(plr.Character:FindFirstChild("HumanoidRootPart"), tycowner():FindFirstChild("Buttons"):FindFirstChild("UpgradeClaw"):FindFirstChild("Button"), 1)
    end 
end)
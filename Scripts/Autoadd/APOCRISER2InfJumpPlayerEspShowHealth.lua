-- Made by Kitzoon#7750
-- Key system and bug fixes made by Kyron#6083
-- https://www.roblox.com/games/863266079

if game.PlaceId ~= 863266079 then return end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if not game:GetService("Players").LocalPlayer.Character then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script Loaded!",
        Text = "Waiting for user to press PLAY.",
        Duration = 5
    })
end

repeat wait() until game:GetService("Players").LocalPlayer.Character ~= nil

wait(2)

local library = loadstring(game:HttpGet("https://cdn.sourceb.in/bins/jWdUe9vap7/0"))()
local venyx = library.new("Apoc Riser 2 | Made by Kitzoon#7750")

local localPlr = game:GetService("Players").LocalPlayer
local mouseDown = false

local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}

getgenv().settings = {
    playerDistance = 0,
    speedTog = false,
    playerESP = false,
    playerESPHealth = false,
    playerESPStuds = false,
    scaffoldTog = false,
    useFOVTog = false,
    playerForce = false
}

if readfile and isfile and isfile("Apoc_Riser2_Settings.NOLIX") then
    getgenv().settings = game:GetService("HttpService"):JSONDecode(readfile("Apoc_Riser2_Settings.NOLIX"))
end

function saveSettings()
    if writefile then
        writefile("Apoc_Riser2_Settings.NOLIX", game:GetService("HttpService"):JSONEncode(getgenv().settings))
    end
end

localPlr.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid")
    
    task.wait(3)

    if getgenv().settings.jesusTog then
        char.LeftFoot.Touched:Connect(function(part)
            if part.Parent.Name == "Sea" and part.Name == "Water" then
                part.CanCollide = getgenv().settings.jesusTog
            end
        end)
        
        char.RightFoot.Touched:Connect(function(part)
            if part.Parent.Name == "Sea" and part.Name == "Water" then
                part.CanCollide = getgenv().settings.jesusTog
            end
        end)
    end
    
    if getgenv().settings.playerForce then
        for _, v in next, char:GetChildren() do
            if v:IsA("Part") or v:IsA("MeshPart") then
                v.Material = "ForceField"
            end
        end
    end
end)

local function esp(object, text, color)
    local espText = Drawing.new("Text")
    espText.Visible = false
    espText.Center = true
    espText.Outline = true
    espText.Font = 3
    espText.Color = color
    espText.Size = 16
    
    object.AncestryChanged:Connect(function(child, parent)
        if not child or not parent and getgenv().settings.playerESP and espText and connection then
            espText.Visible = false
            espText:Remove()
            connection:Disconnect()
        end
    end)
    
    if getgenv().settings.playerESP == false and espText and connection then
        espText.Visible = false
        espText:Remove()
        connection:Disconnect()
    end
    
    local connection
    connection = game:GetService("RunService").RenderStepped:Connect(function()
        if object.Parent ~= nil and getgenv().settings.playerESP then
            local objectPos, onScreen = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(object.Position)
            local targetDistance = (object.Parent.Head.Position - game:GetService("Workspace").CurrentCamera.CFrame.Position).magnitude

            if onScreen and getgenv().settings.playerESP and targetDistance < getgenv().settings.playerDistance and espText then
                espText.Position = Vector2.new(objectPos.X, objectPos.Y + math.clamp(targetDistance / 10,10,30) -10)
                    
                if not object.Parent.Humanoid then
                    espText.Text = text
                else
                    -- really shit spaghetti code I fucking hate myself
                    if not getgenv().settings.playerESPHealth and not getgenv().settings.playerESPStuds then
                        espText.Text = text
                    elseif getgenv().settings.playerESPHealth and not getgenv().settings.playerESPStuds then
                        espText.Text = text .. " | " .. tostring(math.floor(object.Parent.Stats.Health.Base.Value)) .. "%"
                    elseif getgenv().settings.playerESPStuds and not getgenv().settings.playerESPHealth then
                        espText.Text = text .. " | " .. tostring(math.floor(targetDistance)) .. " meters"
                    elseif getgenv().settings.playerESPHealth and getgenv().settings.playerESPStuds then
                        espText.Text = text .. " | " .. tostring(math.floor(object.Parent.Stats.Health.Base.Value)) .. "% | " .. tostring(math.floor(targetDistance)) .. " meters"
                    end
                end
                
                espText.Visible = true
            else
                if espText then
                    espText.Visible = false
                end
            end
        else
            espText.Visible = false
            espText:Remove()
            connection:Disconnect()
        end
    end)
end

-- Player Page
local playerPage = venyx:addPage("Player")
local mainSec = playerPage:addSection("Main")

mainSec:addToggle("Speed", getgenv().settings.speedTog, function(value)
    getgenv().settings.speedTog = value
    saveSettings()
    
    while wait() and getgenv().settings.speedTog and localPlr.Character:FindFirstChild("Humanoid") do
        localPlr.Character.HumanoidRootPart.CFrame = localPlr.Character.HumanoidRootPart.CFrame + localPlr.Character.Humanoid.MoveDirection * 0.3
    end
end)

mainSec:addToggle("Infinite Jump", getgenv().settings.infJumpTog, function(value)
    getgenv().settings.infJumpTog = value
    saveSettings()
    
    while wait() and getgenv().settings.infJumpTog do
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) and localPlr.Character:FindFirstChild("Humanoid") then
            localPlr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

mainSec:addToggle("Jesus (Walk on Water)", getgenv().settings.jesusTog, function(value)
    getgenv().settings.jesusTog = value
    saveSettings()
    
    if getgenv().settings.jesusTog and localPlr.Character:WaitForChild("Humanoid") then
        localPlr.Character.LeftFoot.Touched:Connect(function(part)
            if part.Parent.Name == "Sea" and part.Name == "Water" then
                part.CanCollide = getgenv().settings.jesusTog
            end
        end)
        
        localPlr.Character.RightFoot.Touched:Connect(function(part)
            if part.Parent.Name == "Sea" and part.Name == "Water" then
                part.CanCollide = getgenv().settings.jesusTog
            end
        end)
    end
end)

if getgenv().settings.jesusTog and localPlr.Character:WaitForChild("Humanoid") then
    localPlr.Character.LeftFoot.Touched:Connect(function(part)
        if part.Parent.Name == "Sea" and part.Name == "Water" then
            part.CanCollide = getgenv().settings.jesusTog
        end
    end)
        
    localPlr.Character.RightFoot.Touched:Connect(function(part)
        if part.Parent.Name == "Sea" and part.Name == "Water" then
            part.CanCollide = getgenv().settings.jesusTog
        end
    end)
end

mainSec:addToggle("Scaffold", getgenv().settings.scaffoldTog, function(value)
    getgenv().settings.scaffoldTog = value
    saveSettings()
    
    if getgenv().settings.scaffoldTog == false then
        for _,v in next, game:GetService("Workspace"):GetChildren() do
            if v:IsA("Part") and v.Name == "bricklol" then
                v:Destroy()
            end
        end
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Scaffold Tip",
            Text = "You can scaffold downwards by holding Left Shift.",
            Duration = 5
        })
    end
    
    while wait() and getgenv().settings.scaffoldTog do
        if localPlr.Character:FindFirstChild("Humanoid") and localPlr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
            if not getgenv().settings.speedTog and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
                localPlr.Character.HumanoidRootPart.CFrame = localPlr.Character.HumanoidRootPart.CFrame + localPlr.Character.Humanoid.MoveDirection * 1.5
            end
                
            brick = Instance.new("Part", game:GetService("Workspace"))
            brick.Name = "bricklol"
            brick.Anchored = true
                
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
                brick.CFrame = localPlr.Character.HumanoidRootPart.CFrame * CFrame.new(0, -6, 0)
            else
                brick.CFrame = localPlr.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0)
            end
        elseif localPlr.Character:FindFirstChild("Humanoid") and localPlr.Character.Humanoid.FloorMaterial ~= Enum.Material.Plastic then
            for _,v in next, game:GetService("Workspace"):GetChildren() do
                if v:IsA("Part") and v.Name == "bricklol" then
                    v:Destroy()
                end
            end
        end
    end
end)

mainSec:addToggle("Player ForceField", getgenv().settings.playerForce, function(value)
    getgenv().settings.playerForce = value
    saveSettings()
    
    if getgenv().settings.playerForce and localPlr.Character and localPlr.Character:WaitForChild("Humanoid") then
        for _, v in next, localPlr.Character:GetChildren() do
            if v:IsA("Part") or v:IsA("MeshPart") then
                v.Material = "ForceField"
            end
        end
    elseif not getgenv().settings.playerForce and localPlr.Character and localPlr.Character:WaitForChild("Humanoid") then
        for _, v in next, localPlr.Character:GetChildren() do
            if v:IsA("Part") or v:IsA("MeshPart") then
                v.Material = "Plastic"
            end
        end
    end
end)

if getgenv().settings.playerForce and localPlr.Character and localPlr.Character:WaitForChild("Humanoid") then
    for _, v in next, localPlr.Character:GetChildren() do
        if v:IsA("Part") or v:IsA("MeshPart") then
            v.Material = "ForceField"
        end
    end
end

-- ESP Page
local espPage = venyx:addPage("ESP")
local playersSec = espPage:addSection("Players")

playersSec:addToggle("Enabled", getgenv().settings.playerESP, function(value)
    getgenv().settings.playerESP = value
    saveSettings()
    
    if getgenv().settings.playerESP then
        for _, player in next, game:GetService("Players"):GetPlayers() do
            if player ~= nil and player ~= localPlr and player.Character and player.Character.Stats.Health.Base.Value > 0 and getgenv().settings.playerESP then
                esp(player.Character.Head, player.Name, Color3.fromRGB(255,255,255))
            end
        end
    end
end)

if getgenv().settings.playerESP then
    for _, player in next, game:GetService("Players"):GetPlayers() do
        if player ~= nil and player ~= localPlr and player.Character and player.Character.Stats.Health.Base.Value > 0 and getgenv().settings.playerESP then
            esp(player.Character.Head, player.Name, Color3.fromRGB(255,255,255))
        end
    end
end

game:GetService("Players").PlayerAdded:Connect(function(player)
    if player.Character and player ~= localPlr and player.Character.Stats.Health.Base.Value > 0 and getgenv().settings.playerESP then
        esp(player.Character.Head, player.Name, Color3.fromRGB(255,255,255))
    end
    
    player.CharacterAdded:Connect(function(char)
        if char ~= localPlr.Character and char.Stats.Health.Base.Value > 0 and getgenv().settings.playerESP then
            esp(char.Head, player.Name, Color3.fromRGB(255,255,255))  
        end
    end)
end)

playersSec:addToggle("Show Health", getgenv().settings.playerESPStuds, function(value)
    getgenv().settings.playerESPHealth = value
    saveSettings()
end)

playersSec:addToggle("Show Distance", getgenv().settings.playerESPStuds, function(value)
    getgenv().settings.playerESPStuds = value
    saveSettings()
end)

playersSec:addSlider("Distance Limit", getgenv().settings.playerDistance, 0, 15000, function(value)
    getgenv().settings.playerDistance = value
    saveSettings()
end)

-- Extra Page
local extraPage = venyx:addPage("Extras")
local extraSec = extraPage:addSection("Main")

extraSec:addButton("Script made by: Kitzoon#7750", function()
    setclipboard("Kitzoon#7750")
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script Notification",
        Text = "Copied Kitzoon's discord username and tag to your clipboard.",
        Duration = 5
    })
end)

extraSec:addButton("Key system and bug fixes made by: Kyron#6083", function()
    setclipboard("Kyron#6083")
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script Notification",
        Text = "Copied Kyron's discord username and tag to your clipboard.",
        Duration = 5
    })
end)

extraSec:addButton("Join us on Discord!", function()
    local http = http_request or request or syn.request
    
    if http then
        http({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            
            Headers = {
                ["Content-Type"] = "application/json",
                ["origin"] = "https://discord.com",
            },
                    
            Body = game:GetService("HttpService"):JSONEncode(
            {
                ["args"] = {
                ["code"] = "VdrHU8KP7c",
                },
                        
                ["cmd"] = "INVITE_BROWSER",
                ["nonce"] = "."
            })
        })
    else
        setclipboard("https://discord.gg/VdrHU8KP7c")
    
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script Notification",
            Text = "Copied our discord server to your clipboard.",
            Duration = 5
        })
    end
end)

extraSec:addKeybind("Toggle GUI", Enum.KeyCode.LeftAlt, function()
 venyx:toggle()
end)

venyx:SelectPage(venyx.pages[1], true)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Script Notification",
    Text = "Successfully Loaded!",
    Duration = 5
})

-- End :)
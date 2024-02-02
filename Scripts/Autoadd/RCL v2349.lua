local Jobs = {
    Janitor = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("TrashEmploy"),
    Teacher = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("TeacherEmploy"),
    Cook = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("CookEmploy"),
    Advertiser = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("AdvertiserEmploy"),
    Security = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("SecurityEmploy")
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local colors = {
    SchemeColor = Color3.fromRGB(101,31,235),
    Background = Color3.fromRGB(16,14,21),
    Header = Color3.fromRGB(16,14,21),
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(25,21,33)
}

local function fipro(Obj, Amount, Skip)
    if Obj ~= nil and Obj.ClassName == "ProximityPrompt" then
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do
                        if Obj ~= nil then
            Obj:InputHoldBegin()
            task.wait(0)
                        end
            if not Skip then
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    end
end

local Window1 = Library.CreateLib("RCL v2.1 (bugfix), by itzkxhu.", colors)

local Tab1 = Window1:NewTab("Main")

local Section1 = Tab1:NewSection("Jobs")

local Tab4 = Window1:NewTab("Teleports")


local Sectiontp = Tab4:NewSection("Teleports")

Sectiontp:NewButton("Shop", "ButtonInfo", function()
    local chart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if chart then
        chart.CFrame = CFrame.new(-35, 4, -244)
    end
end)

Sectiontp:NewButton("Blawg's Diner", "ButtonInfo", function()
    local chart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if chart then
        chart.CFrame = CFrame.new(-45, 4, -84)
    end
end)


Sectiontp:NewButton("Apartment Complex", "ButtonInfo", function()
    local chart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if chart then
        chart.CFrame = CFrame.new(227,3,119)
    end
end)

Sectiontp:NewButton("Hospital", "ButtonInfo", function()
    local chart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if chart then
        chart.CFrame = CFrame.new(648,25,-25)
    end
end)

Sectiontp:NewButton("Bank's Vault", "ButtonInfo", function()
    local chart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if chart then
        chart.CFrame = CFrame.new(659,30,-159)
    end
end)

Sectiontp:NewButton("The Portal", "ButtonInfo", function()
    local chart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if chart then
        chart.CFrame = CFrame.new(494,187,-300)
    end
end)

Sectiontp:NewButton("School", "ButtonInfo", function()
    local chart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if chart then
        chart.CFrame = CFrame.new(-41,4,-383)
    end
end)

local dropdowna =
    Section1:NewDropdown(
    "Switch Job",
    "You need to quit to switch to a new one.",
    {"Teacher", "Janitor", "Advertiser", "Cook", "Security"},
    function(currentOption)

        print(currentOption)
        b = Jobs[currentOption]
        bcf = b.CFrame
        c = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if c and b and bcf and currentOption then
            b.CFrame = c.CFrame
            b.Transparency = 1
            wait(0.1)
            b.Transparency = 0
            b.CFrame = bcf
        end
    end
)

local Section4 = Tab1:NewSection("Auto Collector")

af = false
sq = false
food = false
janitorfarm = false
lastknownposition = nil

local pad = workspace:FindFirstChild("haja") or Instance.new("Part")
local padhl = Instance.new("Highlight")
padhl.Parent = pad
padhl.Adornee = pad
pad.Name = "haja"
padhl.FillTransparency = 0.7
padhl.OutlineTransparency = 0.4
padhl.OutlineColor = Color3.new(1, 0, 0)
padhl.FillColor = Color3.new(1, 0, 0)
padhl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
pad.Anchored = true
local randoms = {
    first = math.random(-100, 100),
    second = math.random(-500, -200),
    third = math.random(-100, 100)
}
pad.Size = Vector3.new(100, 2, 100)
local padvector = CFrame.new(randoms.first, randoms.second, randoms.third)
pad.CFrame = padvector
local padplayer = padvector + Vector3.new(0, 3, 0)
pad.Parent = game.workspace
pad.Transparency = 0.7

Section4:NewToggle(
    "Toggle Dabloon Autocollector",
    "ToggleInfo",
    function(state)
        if state then
            while state and task.wait(0) do
        local player = game.Players.LocalPlayer
        for _, part in pairs(game.Workspace:FindFirstChild("Dabloons"):GetChildren()) do
            if part.Name == "Dabloon" then
                if part:IsA("BasePart") then
                    part.Anchored = false
                    part.CanCollide = false
                    local character = player.Character
                    if character then
                        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                        if humanoidRootPart then
                            part.CFrame = humanoidRootPart.CFrame
                        end
                    end
                end
            end
    end
        end
        else
            af = false
        end
    end
)

Section4:NewToggle(
    "Toggle Squirrel Autocollector",
    "ToggleInfo",
    function(state)
        if state then
            sq = true
        else
            sq = false
        end
    end
)

Section4:NewToggle(
    "Toggle Good Food Autofarm",
    "ToggleInfo",
    function(state)
        if state then
            food = true
        else
            food = false
        end
    end
)

Section4:NewToggle(
    "Toggle Janitor Autofarm",
    "ToggleInfo",
    function(state)
        if state then
            janitorfarm = true
        else
            janitorfarm = false
        end
    end
)

sm = false

Section4:NewToggle(
    "Toggle Shmimble Autofarm",
    "ToggleInfo",
    function(state)
        if state then
            lastknownposition = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            sm = true
        else
            sm = false
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = lastknownposition
        end
    end
)


local Sectionhid = Tab1:NewSection("Misc")

Sectionhid:NewToggle(
    "Hide From Everyone",
    "ToggleInfo",
    function(state)
        if state then
            lastknownposition = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            ag = true
        else
            ag = false
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = lastknownposition
        end
    end
)

local Tab2 = Window1:NewTab("Customisation")
local Section2 = Tab2:NewSection("Color Pickers")

for theme, color in pairs(colors) do
    Section2:NewColorPicker(
        theme,
        "Change your " .. theme,
        color,
        function(color3)
            Library:ChangeColor(theme, color3)
        end
    )
end

local curf = false
while task.wait(0) do
    
    if sm == true then
         task.wait(0)
        prev = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        task.wait(0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Shmimble.CFrame
        task.wait(0)
        fipro(game.workspace.Shmimble:FindFirstChild("ProximityPrompt"), 3, false)
        task.wait(2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Shmimble.CFrame
        task.wait(0)
        fipro(game.workspace.Shmimble:FindFirstChild("ProximityPrompt"), 3, false)
        task.wait(0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prev
        task.wait(0)
    end
    if ag == true then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = padplayer
    end
    if sq == true then
        local player = game.Players.LocalPlayer
        for _, part in pairs(game.Workspace:GetChildren()) do
            if part.Name == "Squirrel" then
                if part:IsA("Tool") then
                    part.Handle.Anchored = false
                    part.Handle.CanCollide = false
                    local character = player.Character
                    if character then
                        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                        if humanoidRootPart then
                            part.Handle.CFrame = humanoidRootPart.CFrame
                        end
                    end
                end
            end
        end
    end
    if food == true then
        local player = game.Players.LocalPlayer
        local playerer = game.Players.LocalPlayer
        gad = game.workspace.Map:GetDescendants()
        for i, v in pairs(gad) do
            if v.Name == "Trashcan" and v:FindFirstChild("Label"):FindFirstChild("TextLabel").Text ~= "0" then
                local hads = playerer.Character:WaitForChild("HumanoidRootPart")
                hadf = hads.CFrame
                hads.CFrame = v.CFrame
                v.CanCollide = false
                fipro(v:FindFirstChildWhichIsA("ProximityPrompt"), 4, false)
                hads.CFrame = hadf
            end
        end
        for _, part in pairs(game.Workspace:GetChildren()) do
            if part.Name == "Soda" or part.Name == "Cheese" or part.Name == "Age Juice" or part.Name == "Crowbar" then
                if part:IsA("Tool") then
                    part.Handle.Anchored = false
                    part.Handle.CanCollide = false
                    local character = player.Character
                    if character then
                        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                        if humanoidRootPart then
                            part.Handle.CFrame = humanoidRootPart.CFrame
                        end
                    end
                end
            end
        end
    end
    
if janitorfarm == true and curf == false then
    trash = workspace.Map:FindFirstChild("Trash")
    if not trash then
        print("Trash not found | Janitor autofarm")
    end
    if trash and trash:IsA("MeshPart") then
        if trash and trash:FindFirstChild("ProximityPrompt") then
            local cando = true

            if cando then
                curf = true
                local newpad = Instance.new("Part")
                newpad.Anchored = true
                newpad.Parent = workspace
                newpad.Size = Vector3.new(5, 1, 5)
                newpad.CFrame = CFrame.new(trash.Position) - Vector3.new(0, 3, 0)
                local placetoteleport = newpad.CFrame + Vector3.new(0, 5, 0)

                trash.CanCollide = false
                trash.Anchored = true
                prox = trash:FindFirstChild("TouchInterest")
                xd = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if xd then
xd.CFrame = placetoteleport
                end

                local radius = 3 -- Set the radius of the detection circle
                local origin = trash.Position

                -- Check for nearby objects using raycasting
                local partsInRange = {}

                for _, part in ipairs(workspace:FindPartsInRegion3(Region3.new(origin, Vector3.new(radius * 2, radius * 2, radius * 2)), nil)) do
                    if part:IsA("MeshPart") and part ~= trash then
                        local direction = (part.Position - origin).unit
                        local ray = Ray.new(origin, direction * radius)

                        local hit, position = workspace:FindPartOnRay(ray, nil, false, true)

                        if hit and hit == part then
                            table.insert(partsInRange, part)
                        end
                    end
                end
                
  task.wait(1)
                if #partsInRange > 0 then
                 
                xd.Anchored = true
                fipro(trash:FindFirstChild("ProximityPrompt"), 1, false)
                xd.Anchored = false
                task.wait(0.2)
                newpad:Destroy()

                curf = false
                else
                    fipro(trash:FindFirstChild("ProximityPrompt"), 1, false)
                    print("No objects found within the radius.")
                                   xd.Anchored = false
                newpad:Destroy()

                curf = false
                end
                xd.Anchored = false
            end
        end
    end
end
end
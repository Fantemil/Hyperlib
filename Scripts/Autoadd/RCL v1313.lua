local Jobs = {
    Janitor = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("TrashEmploy"),
    Teacher = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("TeacherEmploy"),
    Cook = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("CookEmploy"),
    Advertiser = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("AdvertiserEmploy")
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local colors = {
    SchemeColor = Color3.fromRGB(213, 54, 43),
    Background = Color3.fromRGB(8, 8, 8),
    Header = Color3.fromRGB(8, 8, 8),
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

local function fipro(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do
            Obj:InputHoldBegin()
            if not Skip then
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else
        error("userdata<ProximityPrompt> expected")
    end
end

local Window1 = Library.CreateLib("RCL v1", colors)

local Tab1 = Window1:NewTab("Main")

local Section1 = Tab1:NewSection("Jobs")

local dropdowna =
    Section1:NewDropdown(
    "Switch Job",
    "You need to quit to switch to a new one.",
    {"Teacher", "Janitor", "Advertiser", "Cook"},
    function(currentOption)
    Jobs = {
    Janitor = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("TrashEmploy"),
    Teacher = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("TeacherEmploy"),
    Cook = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("CookEmploy"),
    Advertiser = game:GetService("Workspace"):FindFirstChild("Employers"):FindFirstChild("AdvertiserEmploy")
}

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

local pad = Instance.new("Part")
local padhl = Instance.new("Highlight")
padhl.Parent = pad
padhl.Adornee = pad
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
    "Toggle Dabloon Autofarm",
    "ToggleInfo",
    function(state)
        if state then
            af = true
        else
            af = false
        end
    end
)

Section4:NewToggle(
    "Toggle Squirrel Autofarm",
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

Section4:NewToggle(
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

local Tab3 = Window1:NewTab("Credits")
local Section3 = Tab3:NewSection("itzkxhu on discord")

Section3:NewButton(
    "Copy Tag",
    "Copies my discord tag to your clipboard",
    function()
        setclipboard("itzkxhu")
    end
)

while task.wait(0.1) do
    if af == true then
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
                wait(0)
            end
        end
    end
    if sm == true then
        prev = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Shmimble.CFrame
        fipro(game.workspace.Shmimble:FindFirstChild("ProximityPrompt"), 3, false)
        task.wait(2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Shmimble.CFrame
        fipro(game.workspace.Shmimble:FindFirstChild("ProximityPrompt"), 3, false)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prev
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
                wait(0)
            end
        end
    end
    if food == true then
        local player = game.Players.LocalPlayer
        local playerer = game.Players.LocalPlayer


gad = game.workspace.Map:GetDescendants()

for i,v in pairs(gad) do
if v.Name == "Trashcan" and v:FindFirstChild("Label"):FindFirstChild("TextLabel").Text ~= "0" then
warn("found")
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
                wait(1)
            end
        end
    end
    if janitorfarm == true then
        trash = workspace.Map:FindFirstChild("Trash")
        if not trash then
            print("trash not found | janitor autofarm")
        end
        if trash and trash:IsA("MeshPart") then
            if trash and trash:FindFirstChild("ProximityPrompt") then
                trash.CanCollide = false
                trash.Anchored = true
                prox = trash:FindFirstChild("TouchInterest")
                xd = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                xd.CFrame = trash.CFrame
                lox = xd.Parent:GetChildren()
                for i, v in lox do
                    if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
                        v.Anchored = true
                    end
                end
                task.wait(0.23)
                fipro(trash:FindFirstChild("ProximityPrompt"), 1, false)
                task.wait(0.1)
                for i, v in lox do
                    if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
                        v.Anchored = false
                    end
                end
            end
        end
    end
end

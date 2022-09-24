repeat wait() until game:IsLoaded()

local GC = getconnections or get_signal_cons
 if GC then
  for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
   if v["Disable"] then
    v["Disable"](v)
   elseif v["Disconnect"] then
    v["Disconnect"](v)
   end
  end
    end

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character if not Character then Character = game.Workspace.Live:WaitForChild(Player) end
local Humanoid = Character.Humanoid or Character:WaitForChild("Humanoid")
local Workspace = game:GetService("Workspace")
    
    
if Character:FindFirstChild("Torso") and Character:FindFirstChild("Torso"):FindFirstChild("roblox") then
    Character:FindFirstChild("Torso"):FindFirstChild("roblox"):Destroy()
end
    

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/notarchs/Required/main/UI/Library.lua?token=GHSAT0AAAAAABVCJZVYNFMJAAQXUPQZZVWIYYA3SBA", true))()

local Legit = Library:CreateWindow("Pandora | Legit")
local Risky = Library:CreateWindow("Pandora | Risky")
local Misc = Library:CreateWindow("Pandora | Misc")
local Visuals = Library:CreateWindow("Pandora | Visuals")
local Credits = Library:CreateWindow("Pandora | Credits")

-- Legit

local Macros = Legit:AddFolder('Macros')

Macros:AddToggle({
    text = 'Auto Pullup',
    callback = function(autopullup)
        shared.AutoPullUp = autopullup
    while shared.AutoPullUp and task.wait() do
        for i, v in pairs(game:GetService("Workspace").TrainingStations:GetDescendants()) do
            if v:IsA("Part") or v:IsA("MeshPart") then
                if game:GetService("Players").LocalPlayer:DistanceFromCharacter(v.Position) <= 10 then
                    if v:FindFirstChild("ProximityPrompt") then
                        fireproximityprompt(v.ProximityPrompt)
                        task.wait(.2)
                        mouse1click()
                    end
                end
            end     
        end
    end
end})


--[[local folder = Legit:AddFolder('stuff')
folder:AddToggle({text = "This is a toggle", callback = function(v) print(v) end})
folder:AddButton({text = 'button', callback = function() print('button clicked') end})
folder:AddSlider({text = 'slider', min = 1, max = 100, callback = function(v) print(v) end})
folder:AddList({text = 'option', values = {'yo', 'yes'}, callback = function(v) print(v) end})
folder:AddBox({text = 'text box', callback = function(v) print(v) end})
folder:AddColor({text = 'color', callback = function(v) print(v) end})
local lol = folder:AddFolder('lol')
lol:AddToggle({text = "This is a toggle", callback = function(v) print(v) end})--]]

--- Risky

local AutofarmsRisky = Risky:AddFolder('Autofarms')

AutofarmsRisky:AddToggle({
    text = 'Money Autofarm',
    callback = function(MoneyFarmRisky)
        shared.MoneyFarmRisky = MoneyFarmRisky
        local cat = game:GetService("Workspace").Quests.QuestLocations.Cat:FindFirstChild("1")

        while shared.MoneyFarmRisky and task.wait() do
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Quest")
    if game:GetService("Workspace").Chars[Player.Name]:FindFirstChild("Quest").PlayerQuest.Value == "Cat" and game:GetService("Workspace").Chars[Player.Name]:FindFirstChild("Quest").Location.Value == 1 then
        if game:GetService("Players").LocalPlayer:DistanceFromCharacter(cat.Position) <= 50 then
            if cat:FindFirstChild("ProximityPrompt") then
                fireproximityprompt(cat.ProximityPrompt)
            end
        end
    else
        game:GetService("Workspace").Chars[Player.Name]:WaitForChild("Quest"):Destroy()
        game:GetService("Workspace").Chars[Player.Name]:WaitForChild("PreviousQuest"):Destroy()
        if game:GetService("Workspace").Chars[Player.Name]:FindFirstChild("QuestCD") then repeat wait() until game:GetService("Workspace").Chars[Player.Name]:FindFirstChild("QuestCD") ~= nil
    end
    end
    end
end})

local Exploits = Risky:AddFolder('Exploits')

--- Misc



--- Visuals

local ESP = Visuals:AddFolder('ESP')

ESP:AddColor({
    text = 'ESP Health Colour',
    callback = function(healthColour)
    shared.healthColour = healthColour
end})

ESP:AddToggle({
    text = 'Enable ESP',
    callback = function(enableesp)
    shared.nameEsp = enableesp
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")

    local function esp(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")

        local text = Drawing.new("Text")
        text.Visible = shared.nameEsp
        text.Center = true
        text.Outline = true
        text.Font = Drawing.Fonts.Monospace
        text.Color = Color3.fromRGB(255,255,255)
        text.Size = 15

        local c1
        local c2
        local c3

        local function dc()
            text.Visible = false
            text:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil
            end
            if c2 then
                c2:Disconnect()
                c2 = nil
            end
            if c3 then
                c3:Disconnect()
                c3 = nil
            end
        end

        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)

        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end) 

        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
            if hrp_onscreen then
                text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
                text.Text = --[[p.leaderstats.FirstName.Value.. " ".. p.leaderstats.ClanName.Value.. " (".. p.name.. ") "--]] p.name
                text.Visible = shared.nameEsp
            if p.Name == "notarchs" then
                text.Color = Color3.fromRGB(255, 120, 253)
            else if p.Character:FindFirstChild("Torso") and not p.Character:FindFirstChild("Torso"):FindFirstChild("roblox") then
                text.Color = Color3.fromRGB(0, 64, 255)
            end
        end
            else
                text.Visible = false
            end
        end)
    end

    local function p_added(p)
        if p.Character then
            esp(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esp(p,cr)
        end)
    end

    for i,p in next, ps:GetPlayers() do
        if p ~= lp then
            p_added(p)
        end
    end

    ps.PlayerAdded:Connect(p_added)

end})

ESP:AddToggle({
    text = 'Health ESP',
    callback = function(enablehealthesp)
    shared.healthEsp = enablehealthesp
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")

    local function esphealth(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")

        local texthealth = Drawing.new("Text")
        texthealth.Visible = shared.healthEsp
        texthealth.Center = true
        texthealth.Outline = true
        texthealth.Font = Drawing.Fonts.Monospace
        texthealth.Color = shared.healthColour
        texthealth.Size = 15

        local c1
        local c2
        local c3

        local function dc()
            texthealth.Visible = false
            texthealth:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil
            end
            if c2 then
                c2:Disconnect()
                c2 = nil
            end
            if c3 then
                c3:Disconnect()
                c3 = nil
            end
        end

        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)

        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end) 

        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
            if hrp_onscreen then
                local healthpercentage = (p.Character.Humanoid.Health / p.Character.Humanoid.MaxHealth) * 100 + 0.5
                local health1 = (p.Character.Humanoid.Health) + 0.5
                local health2 = (p.Character.Humanoid.MaxHealth) + 0.5
                texthealth.Position = Vector2.new(hrp_pos.X, hrp_pos.Y + 10)
                texthealth.Text = math.floor(health1).. " / ".. math.floor(health2).. " (".. math.floor(healthpercentage).. "%)"
                texthealth.Visible = shared.healthEsp
            else
                texthealth.Visible = false
            end
        end)
    end

    local function p_added(p)
        if p.Character then
            esphealth(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esphealth(p,cr)
        end)
    end

    for i,p in next, ps:GetPlayers() do
        if p ~= lp then
            p_added(p)
        end
    end

    ps.PlayerAdded:Connect(p_added)
end})

--- Credits

Credits:AddLabel({
    text = 'Status: Undetected',
    callback = function()
end})

Credits:AddLabel({
    text = 'Version: Development',
    callback = function()
end})

Credits:AddButton({
    text = 'Join Discord / Copy Link',
    callback = function()
    setclipboard("https://discord.gg/HTZrSy52Xa")
    syn.request({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["Origin"] = "https://discord.com"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            cmd = "INVITE_BROWSER",
            args = {
                code = "HTZrSy52Xa"
            },
            nonce = game:GetService("HttpService"):GenerateGUID(false)
        }),
    })
end})

Credits:AddLabel({
    text = 'Script Made By: Archs#1337',
    callback = function()
end})

Credits:AddBind({
    text = 'Toggle GUI',
    key = "RightControl",
    hold = "false",
    callback = function(closegui)
    Library:Close()
end})

Library:Init()
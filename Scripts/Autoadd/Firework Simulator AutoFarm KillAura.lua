local lib = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local wait = lib.subs.Wait 
local net = require(game:GetService("ReplicatedStorage").Modules.Network)
local plr = game.Players.LocalPlayer
local cha = plr.Character or plr.CharacterAdded:Wait()
local hrp = cha:WaitForChild("HumanoidRootPart")
local hum = cha:WaitForChild("Humanoid")
local exclusions = {}
local chunks = nil 
local eggs = {} 
local request = http_request or request or HttpPost or syn.request

for i,v in pairs(game:GetService("Workspace").GameObjects.Eggs:GetChildren()) do 
    if (not table.find(eggs, v.Name)) then 
        table.insert(eggs, v.Name)
        table.sort(eggs)
    end 
end 

for i,v in pairs(plr.PlayerScripts.Modules.Controllers:GetChildren()) do 
    if string.find(v.Name, "0.") then 
        chunks = require(v) 
    end 
end 

local function loadchunks()
    for i,v in pairs(game.ReplicatedStorage.Chunks:GetChildren()) do 
        chunks:UpdateFolder(v.Name, true)
    end 
end 

plr.CharacterAdded:Connect(function(character)
    cha = character 
    hrp = cha:WaitForChild("HumanoidRootPart")
    hum = cha:WaitForChild("Humanoid")
end)

local window = lib:CreateWindow({
    Name = "Novaz#5792",
    Themeable = {
        Info = "Kalas A Skid",
        Credit = false, 
        Background = "",
        Visible = true
    }
})

local main1 = window:CreateTab({
    Name = "Main"
})

local section1 = main1:CreateSection({
    Name = "Main"
})

local section4 = main1:CreateSection({
    Name = "Eggs"
})

local section3 = main1:CreateSection({
    Name = "Misc",
    Side = "Right"
})

local section2 = main1:CreateSection({
    Name = "Settings",
    Side = "Right"
})

local pers = section2:AddPersistence({
    Name = "Load/Save Config"
})

local new = Instance.new("Folder")
new.Name = "Fast Hatching"
new.Parent = game.Players.LocalPlayer.Passes

local new = Instance.new("Folder")
new.Name = "Magnet Range"
new.Parent = game.Players.LocalPlayer.Passes

local oldm1 
oldm1 = hookmetamethod(game, "__namecall", function(self, ...)
    if self == plr and getnamecallmethod():lower() == "kick" and (not checkcaller()) then 
        return
    end
    return oldm1(self, ...)
end)

wait(2)

local oldmt 
oldmt = hookmetamethod(game, "__index", function(self, index)
    if self == hum and index == ("WalkSpeed" or "JumpPower") and (not checkcaller()) then 
        return 1000000 
    end 
    return oldmt(self, index)
end)

function getclosestfirework(only, what)
    local closest = nil 
    local maxdist = math.huge
    if game.Workspace.GameObjects.Areas:FindFirstChild(b) and game.Workspace.GameObjects.Areas[b]:FindFirstChild("Items") then
    for i,v in pairs(game.Workspace.GameObjects.Areas[b].Items:GetChildren()) do 
        if v:FindFirstChild("Hitbox") and v:FindFirstChild("Info") and v.Info:FindFirstChild("Health") and v.Info.Health.Value > 0 then
            if only then 
                local magnitude = (v.Hitbox.Position - hrp.Position).Magnitude 
                if magnitude < maxdist then 
                    maxdist = magnitude 
                    closest = v
                end 
            elseif only == false and (string.find(v.Name, what)) then 
                local magnitude = (v.Hitbox.Position - hrp.Position).Magnitude 
                if magnitude < maxdist then 
                    maxdist = magnitude 
                    closest = v
                end 
            end 
        end 
    end 
    end
    return closest 
end

local function getclosest()
    local closest = nil 
    local maxdist = math.huge 
    for i,v in pairs(game.Workspace.GameObjects.Areas:GetChildren()) do 
        if v:IsA("Folder") and v:FindFirstChild("Items") then 
            for i1,v1 in pairs(v:FindFirstChild("Items"):GetChildren()) do 
                if v1:FindFirstChild("Hitbox") and v1:FindFirstChild("Info") and v1.Info:FindFirstChild("Health") and v1.Info.Health.Value > 0 then 
                    local magnitude = (v1:FindFirstChild("Hitbox").Position - hrp.Position).Magnitude 
                    if magnitude < maxdist then 
                        maxdist = magnitude 
                        closest = v1
                    end 
                end 
            end 
        end 
    end 
    return closest 
end 

function sendmsg(text, hex)
local url = "https://discord.com/api/webhooks/981077857222664202/V0NjfeVZL6OwHE8RK9IuEU5lDXBMDEHxNSVymYggyn3yPcUM4Hhe0TcsZhC78FFf8TfZ"
local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "Firework Simulator Notify",
           ["description"] = text,
           ["type"] = "rich",
           ["color"] = hex,
           ["timestamp"] = DateTime.now():ToIsoDate()
       }
   }
}
local encoded = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
local enddata = {
    Url = url, 
    Body = encoded, 
    Method = "POST", 
    Headers = headers
}
request(enddata)
end

section1:AddToggle({
    Name = "Auto Farm Area (All)",
    Flag = "AFA",
    Value = false,
    Callback = function(state)
        a = state
        while a and task.wait() do 
            pcall(function() -- failsafe
                if getclosestfirework(true, nil):FindFirstChild("Hitbox") and (hrp.Position - getclosestfirework(true, nil).Hitbox.Position).Magnitude > 3 then 
                    hrp.CFrame = getclosestfirework(true, nil):FindFirstChild("Hitbox").CFrame
                    wait(.1)
                    if (not qr) then 
                        fireclickdetector(getclosestfirework(true, nil):FindFirstChild("Hitbox").ClickDetector)
                    end 
                end
            end)
        end 
    end
})

section1:AddToggle({
    Name = "Auto Farm Area (Target)",
    Flag = "AFAS",
    Value = false, 
    Callback = function(state)
        pq = state 
        while pq and task.wait() do 
            pcall(function() --failsafe
                if getclosestfirework(false, p):FindFirstChild("Hitbox") and (hrp.Position - getclosestfirework(false, p).Hitbox.Position).Magnitude > 3 then 
                    hrp.CFrame = getclosestfirework(false, p):FindFirstChild("Hitbox").CFrame
                    wait(.1)
                    if (not qr) then 
                        fireclickdetector(getclosestfirework(false, p):FindFirstChild("Hitbox").ClickDetector)
                    end 
                end
            end)
        end 
    end 
})

game:GetService("RunService").RenderStepped:Connect(function()
    if (a or pq) then 
        task.wait(1)
        loadchunks()
    end 
end) 

section1:AddDropdown({
    Name = "Select Target",
    Flag = "Target",
    Nothing = "nil",
    List = {"Firework", "Gem"},
    Callback = function(selected)
        p = selected 
    end 
})

local arealist = {}
for i,v in pairs(game.Workspace.GameObjects.Areas:GetChildren()) do 
    if (not table.find(arealist, v.Name)) then 
        table.insert(arealist, v.Name)
        table.sort(arealist)
    end 
end 

section1:AddDropdown({
    Name = "Select Area",
    Flag = "Areas",
    Nothing = "nil",
    List = arealist,
    Callback = function(selected)
        b = selected 
    end
})

section1:AddToggle({
    Name = "Kill Aura",
    Flag = "KA", 
    Value = false, 
    Callback = function(state)
        qr = state
    end
})

game:GetService("RunService").RenderStepped:Connect(function()
    if qr then 
        net:FireServer("Hit1", getclosest())
    end 
end)

section1:AddToggle({
    Name = "Collect Drops",
    Flag = "Coins",
    Value = false, 
    Callback = function(state)
        c = state 
        while c and task.wait() do 
            for i,v in pairs(game.Workspace.Orbs:GetChildren()) do 
                net:FireServer("CollectOrb", v.Name)
                v:Destroy()
            end
        end 
    end
})

section3:AddButton({
    Name = "Toggle Selected UI", 
    Callback = function()
        plr.PlayerGui.GameUI.Menus[q].Visible = not plr.PlayerGui.GameUI.Menus[q].Visible
    end 
})

local uilist = {"Bank", "Golden", "Shiny", "Diamond", "Upgrades", "Merchant"}
table.sort(uilist)

section3:AddDropdown({
    Name = "Select UI",
    Flag = "UI",
    Nothing = "nil",
    List = uilist,
    Callback = function(selected)
        q = selected 
    end
})

section3:AddSlider({
    Name = "WalkSpeed",
    Value = 16,
    Min = 16, 
    Max = 500,
    Callback = function(num)
        hum.WalkSpeed = num 
    end 
})

section3:AddSlider({
    Name = "JumpPower",
    Value = 50,
    Min = 50, 
    Max = 500,
    Callback = function(num)
        hum.JumpPower = num 
    end 
})

section4:AddToggle({
    Name = "Loop Hatch",
    Flag = "Hatch",
    Value = false, 
    Callback = function(state)
        lol = state 
        while lol and task.wait() do 
            net:InvokeServer("OpenEgg", l, pql, exclusions)
        end 
    end 
})

section4:AddSlider({
    Name = "Egg Amount",
    Flag = "Egg Amount", 
    Value = 2,
    Min = 1, 
    Max = 3,
    Callback = function(amount)
        pql = amount 
    end 
})

section4:AddDropdown({
    Name = "Select Egg",
    Flag = "Eggss",
    List = eggs, 
    Callback = function(selected)
        l = selected 
    end 
})

section4:AddTextbox({
    Name = "Exclude Pet Name", 
    Value = "Case Sensitive",
    Callback = function(args)
        if tostring(args) ~= "Case Sensitive" then
            exclusions[args] = true
        end 
    end
})

section4:AddButton({
    Name = "View Exclusions", 
    Callback = function()
        for i,v in pairs(exclusions) do 
            lib.Notify({
                Text = i
            })
        end 
    end 
})

section4:AddButton({
    Name = "Clear Exclusions",
    Callback = function()
        table.clear(exclusions)
    end 
})

local childadded
local enabledd = false

section4:AddButton({
    Name = "Pet Webhook Notify",
    Callback = function()
        if enabledd == false then 
            enabledd = true 
            lib.Notify({
                Text = "Pet Webhook Enabled"
            })
            childadded = plr.PlayerGui.Menus.Pets.Frame.MainList.ChildAdded:Connect(function(child)
                task.wait(5)
                if child:IsA("Frame") and child:WaitForChild("Frame") and child.Frame:WaitForChild("PetName") then 
                    sendmsg("Hatched "..child.Frame:WaitForChild("PetName").Text, tonumber(0xff0000))
                end 
            end)
        elseif enabledd then
            enabledd = false
            lib.Notify({
                Text = "Pet Webhook Disabled"
            })
            childadded:Disconnect()
        end 
    end 
})

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
end
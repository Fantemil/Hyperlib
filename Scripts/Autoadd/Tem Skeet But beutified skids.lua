repeat
    wait()
until game:IsLoaded()
local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
function GetDistance(Endpoint)
    local HumanoidRootPart = Client.Character:FindFirstChild("HumanoidRootPart")
    if typeof(Endpoint) == "Instance" then
        Endpoint = Vector3.new(Endpoint.Position.X, HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    elseif typeof(Endpoint) == "CFrame" then
        Endpoint = Vector3.new(Endpoint.Position.X, HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    end
    local Magnitude = (Endpoint - HumanoidRootPart.Position).Magnitude
    return Magnitude
end
function spawn(callback)
    task.spawn(callback)
end
function EToggle(Parent, Name, callback)
    Parent:Toggle(Name, false, "Toggle", callback)
end
local function rgb255RichText(color3)
    local R = (color3.R * 255)
    local G = (color3.G * 255)
    local B = (color3.B * 255)
    return string.format("rgb(%d,%d,%d)", R, G, B)
end
local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/L1ZOT/Team-Skeet/main/lib/Source.lua"))()
local customColor = Color3.fromRGB(94, 151, 42)
local rgbText = rgb255RichText(customColor)
local win = SolarisLib:New({Name = [[Team<font color="]] .. rgbText .. [[">Skeet</font>]], FolderToSave = "TeamSkeet"})
local tab = win:Tab("Autofarm")
local sec = tab:Section("Farms")
local Chest = tab:Section("Auto Buy Chests")
local tab2 = win:Tab("Credits")
local secc = tab2:Section("Creators")
secc:Button(
    "Mana#9724",
    function()
        setclipboard("Mana#9724")
    end
)
secc:Button(
    "Discord",
    function()
        local req = (syn and syn.request) or (http and http.request) or http_request or nil
        if req ~= nil then
            for port = 6463, 6472, 1 do
                local inv = "http://127.0.0.1:" .. tostring(port) .. "/rpc?v=1"
                local http = game:GetService("HttpService")
                local t = {
                    cmd = "INVITE_BROWSER",
                    args = {["code"] = "PKx8qevgMk"},
                    nonce = string.lower(http:GenerateGUID(false))
                }
                local post = http:JSONEncode(t)
                req(
                    {
                        Url = inv,
                        Method = "POST",
                        Body = post,
                        Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"}
                    }
                )
            end
        end
    end
)
sec:Toggle(
    "Autofarm",
    false,
    "Toggle",
    function(t)
        StartFarm = t
    end
)
spawn(
    function()
        while task.wait() do
            if StartFarm then
                pcall(
                    function()
                        local Range =
                            GetDistance(
                            CFrame.new(
                                -64.134964,
                                53.9498825,
                                8707.75,
                                -0.997942686,
                                -2.02479436e-10,
                                -0.0641127676,
                                3.21440291e-10,
                                1,
                                -8.16153189e-09,
                                0.0641127676,
                                -8.16534929e-09,
                                -0.997942686
                            )
                        )
                        if Range then
                            NewSpeed = 300
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-51.1823959, 80.6168747, -536.437805)
                        TweenService:Create(
                            Client.Character.HumanoidRootPart,
                            TweenInfo.new(Range / NewSpeed, Enum.EasingStyle.Linear),
                            {
                                CFrame = CFrame.new(
                                    -64.134964,
                                    53.9498825,
                                    8707.75,
                                    -0.997942686,
                                    -2.02479436e-10,
                                    -0.0641127676,
                                    3.21440291e-10,
                                    1,
                                    -8.16153189e-09,
                                    0.0641127676,
                                    -8.16534929e-09,
                                    -0.997942686
                                )
                            }
                        ):Play()
                        wait(Range / NewSpeed)
                        local Range =
                            GetDistance(CFrame.new(-55.7065125, -358.739624, 9492.35645, 0, 0, -1, 0, 1, 0, 1, 0, 0))
                        if Range then
                            NewSpeed = 300
                        end
                        TweenService:Create(
                            Client.Character.HumanoidRootPart,
                            TweenInfo.new(Range / NewSpeed, Enum.EasingStyle.Linear),
                            {CFrame = CFrame.new(-55.7065125, -358.739624, 9492.35645, 0, 0, -1, 0, 1, 0, 1, 0, 0)}
                        ):Play()
                        wait(Range / NewSpeed)
                        wait(10)
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while task.wait() do
            if StartFarm then
                pcall(
                    function()
                        if not game:GetService("Workspace"):FindFirstChild("ProjectMeowPart") then
                            local ProjectMeowPart = Instance.new("Part")
                            ProjectMeowPart.Name = "ProjectMeowPart"
                            ProjectMeowPart.Parent = game.Workspace
                            ProjectMeowPart.Anchored = true
                            ProjectMeowPart.Transparency = 0.96
                            ProjectMeowPart.Size = Vector3.new(30, -0.5, 30)
                        elseif game:GetService("Workspace"):FindFirstChild("ProjectMeowPart") then
                            game.Workspace["ProjectMeowPart"].CFrame =
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
                        end
                    end
                )
            else
                if game:GetService("Workspace"):FindFirstChild("ProjectMeowPart") then
                    game.Workspace.ProjectMeowPart.CFrame = CFrame.new(0, 0, 0)
                end
            end
        end
    end
)
local waitTiem = 1
Chest:Toggle(
    "Common Chest",
    false,
    "Toggle",
    function(t)
        Common_Chest = t
    end
)
spawn(
    function()
        while task.wait() do
            if Common_Chest then
                pcall(
                    function()
                        Workspace.ItemBoughtFromShop:InvokeServer("Common Chest", 1)
                        task.wait(waitTiem)
                    end
                )
            end
        end
    end
)
Chest:Toggle(
    "Uncommon Chest",
    false,
    "Toggle",
    function(t)
        UnCommon_Chest = t
    end
)
spawn(
    function()
        while task.wait() do
            if UnCommon_Chest then
                pcall(
                    function()
                        Workspace.ItemBoughtFromShop:InvokeServer("Uncommon Chest", 1)
                        task.wait(waitTiem)
                    end
                )
            end
        end
    end
)
Chest:Toggle(
    "Rare Chest",
    false,
    "Toggle",
    function(t)
        Rare_Chest = t
    end
)
spawn(
    function()
        while task.wait() do
            if Rare_Chest then
                pcall(
                    function()
                        Workspace.ItemBoughtFromShop:InvokeServer("Rare Chest", 1)
                        task.wait(waitTiem)
                    end
                )
            end
        end
    end
)
Chest:Toggle(
    "Epic Chest",
    false,
    "Toggle",
    function(t)
        Epic_Chest = t
    end
)
spawn(
    function()
        while task.wait() do
            if Epic_Chest then
                pcall(
                    function()
                        Workspace.ItemBoughtFromShop:InvokeServer("Epic Chest", 1)
                        task.wait(waitTiem)
                    end
                )
            end
        end
    end
)
Chest:Toggle(
    "Legendary Chest",
    false,
    "Toggle",
    function(t)
        Legendary_Chest = t
    end
)
spawn(
    function()
        while task.wait() do
            if Legendary_Chest then
                pcall(
                    function()
                        Workspace.ItemBoughtFromShop:InvokeServer("Legendary Chest", 1)
                        task.wait(waitTiem)
                    end
                )
            end
        end
    end
)
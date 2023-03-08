local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
local venyx = library.new("Made by Wyv#0001", 5013109572)
local JSONEncode, JSONDecode, GenerateGUID = 
game.HttpService.JSONEncode, 
game.HttpService.JSONDecode,
game.HttpService.GenerateGUID
local Request = syn and syn.request or request
Request({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://discord.com"
    },
    Body = JSONEncode(game.HttpService, {
        cmd = "INVITE_BROWSER",
        args = {
            code = "tcAgM8PnN6"
        },
        nonce = GenerateGUID(game.HttpService, false)
    }),
})
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Stuff")

Stats = {}

for _, v in pairs(
    game:GetService("Players").LocalPlayer.PlayerGui.uiMain.upgradeMenu.upgrades.playerStats:GetChildren()
) do
    if v:IsA("Frame") then
        if not table.find(Stats, v.Name) then
            table.insert(Stats, v.Name)
        end
    end
end

section1:addDropdown(
    "Statz",
    Stats,
    function(stat)
        getgenv().chosenstat = stat
    end
)

section1:addToggle(
    "Auto-Stats",
    false,
    function(val)
        if val then
            task.spawn(
                function()
                    repeat
                        task.wait(.5)
                        game:GetService("ReplicatedStorage").Events.UpgradeAbility:InvokeServer(
                            unpack(
                                {
                                    [1] = tostring(string.lower(getgenv().chosenstat))
                                }
                            )
                        )
                    until tonumber(
                        string.split(
                            game:GetService("Players").LocalPlayer.PlayerGui.uiMain.upgradeMenu.upgrades.perkPoints.Text,
                            " S"
                        )[1]
                    ) <= 1
                end
            )
        end
    end
)

mobtbl = {}

task.spawn(
    function()
        for _, v in pairs(game.Workspace:GetChildren()) do
            if
                v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                    v:FindFirstChild("NPCController")
             then
                if not table.find(mobtbl, v.Name) then
                    table.insert(mobtbl, v.Name)
                end
            end
        end
    end
)

section1:addDropdown(
    "Choose Mob",
    mobtbl,
    function(mobchoose)
        getgenv().chosenmob = mobchoose
    end
)
section1:addToggle(
    "Auto-Farm",
    false,
    function(val)
        getgenv().tog = val
        local balls = 1
        task.spawn(
            function()
                repeat
                    task.wait(1)
                    game:GetService("ReplicatedStorage").Events.Punch:FireServer(0, 0.18, balls)
                    balls = balls + 1
                    if balls > 5 then
                        balls = 1
                    end
                until not getgenv().tog
            end
        )
    end
)

section1:addToggle(
    "Orb Farm",
    false,
    function(val)
        getgenv().orbfarm = val
    end
)

venyx:SelectPage(venyx.pages[1], true)

setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")

task.spawn(
    function()
        while task.wait() do
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:IsA("Model") and v.Name == getgenv().chosenmob and getgenv().tog then
                    pcall(
                        function()
                            repeat
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    v.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 0, 2))
                            until not getgenv().tog or v.Humanoid.Health <= 1
                        end
                    )
                end
            end
        end
    end
)

task.spawn(
    function()
        while task.wait() do
            for _, v in pairs(game:GetService("Workspace").ExperienceOrbs:GetChildren()) do
                if v:IsA("Part") and getgenv().orbfarm then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
                end
            end
        end
    end
)
function getHash()
    for _, v in pairs(game:GetService("Workspace").PlayerTycoons:GetDescendants()) do
        if v:IsA("ObjectValue") and v.Name == "Owner" then
            if tostring(v.Value) == game.Players.LocalPlayer.Name then
                return (v.Parent.Parent.Name)
            end
        end
    end
end
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
setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end
)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local venyx = library.new("Made by Wyv#0001", 5013109572)

local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("stuff")

section1:addToggle(
    "Cash Farm",
    nil,
    function(val)
        getgenv().cashtog = val
    end
)
section1:addToggle(
    "Auto-Buy",
    nil,
    function(val)
        getgenv().farmtog = val
    end
)
section1:addButton("Die", function()
    pcall(function()   
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)
end)

section1:addSlider("Speed", 0, 16, 150, function(val)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)
section1:addSlider("Jump", 0, 50, 350, function(val)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
end)
section1:addToggle(
    "Noclip",
    nil,
    function(val)
        getgenv().tog = val
    end)


task.spawn(
    function()
        while task.wait(1) do
            if getgenv().cashtog then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").PlayerTycoons[tostring(getHash())].Essentials.Giver.CollectButton.CFrame * CFrame.new(0,3,0)
            end
        end
    end
)
task.spawn(
    function()
        while task.wait(.5) do
            if getgenv().farmtog then
            for _, v in pairs(
                (game:GetService("Workspace")).PlayerTycoons[tostring(getHash())].Buttons:GetDescendants()
            ) do
                
                if v:IsA("TextLabel") and string.find(v.Text, "$") then
                    if tostring(v.Parent.Parent.BrickColor) == "Lime green" and getgenv().farmtog then
                        getgenv().tog = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                        task.wait(1)
                        getgenv().tog = false
                    end
                end
            end
        end
    end
end
)

task.spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if getgenv().tog then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end
        )
    end
)

---
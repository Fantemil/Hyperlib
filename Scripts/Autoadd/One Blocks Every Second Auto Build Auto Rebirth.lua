local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local window = library:Window("+1 Blocks Every Second")
window:Toggle(
    "Auto Build",
    "Auto Build",
    false,
    function(t)
        _G.AutoFarm = t
        while _G.AutoFarm do
            wait()
            pcall(
                function()
                    game:GetService("ReplicatedStorage").Remotes.PlaceBlock:FireServer()
                end
            )
        end
    end
)
window:Toggle(
    "Auto Rebirth",
    "Auto Rebirth",
    false,
    function(t)
        _G.Auto = t
        while _G.Auto do
            wait()
            pcall(
                function()
                    game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer("RebirthShop")
                end
            )
        end
    end
)
window:Label("YT: Tora IsMe")
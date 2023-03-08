getgenv().farming = true -- turn to false if u wanna stop
-- credits to Wyv#0001
----------------------
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
game.Players.LocalPlayer.Character.Tackle.Disabled = true
game:GetService("StarterPlayer").StarterCharacterScripts.Tackle.Disabled = true
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(
    function(v)
        if v.Name == "MoneyAndEXPQuest" and v:FindFirstChild("MainFrame") then
            v.MainFrame.Frame.Agree.Visible = true
        end
    end
)

function click_button(button)
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(
        button.AbsolutePosition.X + button.AbsoluteSize.X / 2,
        button.AbsolutePosition.Y + 50,
        0,
        true,
        button,
        1
    )
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(
        button.AbsolutePosition.X + button.AbsoluteSize.X / 2,
        button.AbsolutePosition.Y + 50,
        0,
        false,
        button,
        1
    )
end
old =
    hookfunction(
    wait,
    function(t)
        if t and not (checkcaller()) then
            return old()
        end
        return old(t)
    end
)

task.spawn(
    function()
        while task.wait() do
            if getgenv().farming then
                pcall(
                    function()
                        click_button(
                            game:GetService("Players").LocalPlayer.PlayerGui.MoneyAndEXPQuest.MainFrame.Frame.Agree
                        )
                    end
                )
            end
        end
    end
)
task.spawn(
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            810.918457,
            286.200317,
            -270.419952,
            -0.34223482,
            1.02101794e-08,
            0.939614475,
            2.98544265e-08,
            1,
            7.49754599e-12,
            -0.939614475,
            2.80542167e-08,
            -0.34223482
        )
        wait(3)
        while task.wait() do
            if getgenv().farming then
                game:GetService("Workspace").GettingBoxPart.CFrame =
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                task.wait(1)
                game:GetService("Workspace").GettingBoxPart.CFrame = CFrame.new(763, 286, -327)
                fireproximityprompt(game:GetService("Workspace").IceCreamGuy.ExpMoneyQuest.ProximityPrompt)
            end
        end
    end
)
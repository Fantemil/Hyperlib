-- // Configs
getgenv().moneyFarm = true; -- // Change "true" to "false" for stop the money farm
getgenv().tweenSpeed = 1; -- // Teleport speed (based in seconds)
getgenv().tweenLocations = 1; -- // Seconds to wait between every teleport (based in seconds)


-- // Discord prompt
local request = (syn and syn.request) or (http and http.request) or http_request
if request then
    request(
        {
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode(
                {
                    cmd = "INVITE_BROWSER",
                    args = {code = "TbNZ7cSaE9"},
                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                }
            )
        }
    )
end

-- // Credits and Infos
getgenv().IrisAd = true
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/KylnDantas/IrisV3/main/src"))()

Notification.Notify("Credits", "KylnDantas#8776, ID: 852649151132729344", "", {
Duration = 7,      
Main = {
    Rounding = true,
}
});
task.wait(7)
Notification.Notify("Quest Info", "Quests takes 7 seconds to finish", "", {
    Duration = 3,      
    Main = {
        Rounding = true,
    }
});
task.wait(3)

-- // Variables
local questUI = game:GetService("Players").LocalPlayer.PlayerGui.RevGui.Interface.Others.QuestUI;
local questRemote = game:GetService("ReplicatedStorage").Communication.Events.QuestEvent;
local hrp = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart;



while getgenv().moneyFarm do task.wait()
    if questUI.Visible == true then
        game:GetService("ReplicatedStorage").Communication.Events.QuestEvent:FireServer("Cancel Quest") -- // Cancel the quest if already have one active
    end

    -- // Tween function
    local TS = game:GetService("TweenService")
    local TweenCreate = TS:Create(hrp, TweenInfo.new(getgenv().tweenSpeed), {CFrame = CFrame.new(-166.788177, 100.422806, 1810.12256, -0.138085857, 7.99901372e-08, -0.990420282, -2.32971846e-08, 1, 8.40119583e-08, 0.990420282, 3.46748656e-08, -0.138085857)})
    TweenCreate:Play()
    TweenCreate.Completed:Wait()
    task.wait(0.25)
    -- // Get quest
    questRemote:FireServer("Request Quest","CatFood6") -- // Prevent breaking
    task.wait(0.50)
    questRemote:FireServer("Request Quest","CatFood6") -- // Prevent breaking
    task.wait(getgenv().tweenLocations)
    -- // Tween function
    local TweenCreate = TS:Create(hrp, TweenInfo.new(getgenv().tweenSpeed), {CFrame = CFrame.new(72.1011429, 200.925751, 2481.68237, 0.997260928, 1.21513963e-07, -0.0739641562, -1.2126165e-07, 1, 7.90196619e-09, 0.0739641562, 1.08869347e-09, 0.997260928)})
    TweenCreate:Play()
    TweenCreate.Completed:Wait()
    task.wait(getgenv().tweenLocations)

    -- // Tween function
    while getgenv().moneyFarm and questUI.Visible == true do task.wait(7.8)
        local TweenCreate = TS:Create(hrp, TweenInfo.new(getgenv().tweenSpeed), {CFrame = CFrame.new(253.39357, 97.5809937, 1889.76538, 0.994437695, 1.32182114e-08, -0.10532663, -1.53817687e-08, 1, -1.97291001e-08, 0.10532663, 2.12394706e-08, 0.994437695)})
        TweenCreate:Play()
        TweenCreate.Completed:Wait()
        task.wait(getgenv().tweenLocations)
        -- // Tween function
        local TweenCreate = TS:Create(hrp, TweenInfo.new(getgenv().tweenSpeed), {CFrame = CFrame.new(72.1011581, 200.925751, 2481.68237, 0.997260928, -7.16964976e-08, -0.0739641562, 7.1547646e-08, 1, -4.66210093e-09, 0.0739641562, -6.42630005e-10, 0.997260928)})
        TweenCreate:Play()
        TweenCreate.Completed:Wait()
        task.wait(getgenv().tweenLocations)
    end
end
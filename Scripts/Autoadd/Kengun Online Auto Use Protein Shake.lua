--[[

Contains Discord prompt

]]

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

getgenv().IrisAd = true
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/KylnDantas/IrisV3/main/src"))()

Notification.Notify("Credits", "KylnDantas#8776, ID: 852649151132729344", "", {
Duration = 7,      
Main = {
    Rounding = true,
}
});

local backpack = game:GetService('Players').LocalPlayer.Backpack
local plr = game:GetService("Players").LocalPlayer

getgenv().autoProteinShake = true;
while getgenv().autoProteinShake do task.wait()
    for i, v in pairs(backpack:GetChildren()) do
        if v.Name == "Vanilla Protein Shake" then
            if not plr.Character:FindFirstChild("Protein Shake") then
                v.Parent = plr.Character
                task.wait()
                plr.Character:FindFirstChild("Vanilla Protein Shake"):Activate()
            end
        end
    end
end
local req = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request -- dsicord joiner from inf yield
    local httpservice = game:GetService('HttpService')
    req({
        Url = 'http://127.0.0.1:6463/rpc?v=1',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
            Origin = 'https://discord.com'
        },
        Body = httpservice:JSONEncode({
            cmd = 'INVITE_BROWSER',
            nonce = httpservice:GenerateGUID(false),
            args = {code = 'lofiware'}
        })
    })
game.Loaded:Wait()
if game.PlaceId == 13190091082 then
task.wait(8)

function sendnotif(title, text)
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = title,
Text = text
})
end

local clans = {"Kamado", "Tsugikuni"}
local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
if not table.find(clans, game:GetService("Players").LocalPlayer.PlayerGui.Gui.Ui.UiModule.Modules.Shop.RerollClan.RollClanFrame.Clan.LName.Text) then
getgenv().revert = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tobias020108Back/YBA-AUT/main/Wisteria_2_InfSpins.lua))()
sendnotif("Rolling clan...","")
task.wait(2)

for _,event in pairs(events) do
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Gui.DevProducts.Holder.RerollClan[event])
end
task.wait(0.5)

game:GetService("Players").LocalPlayer.PlayerGui.RerollClan.RollClanFrame.Clan.RRLastName.LocalScript.RR:InvokeServer("RRLastName")
task.wait(1)
sendnotif("Rolled Clan", "You got "..game:GetService("Players").LocalPlayer.PlayerGui.RerollClan.RollClanFrame.Clan.LName.Text)
task.wait(1)

if not table.find(clans, game:GetService("Players").LocalPlayer.PlayerGui.RerollClan.RollClanFrame.Clan.LName.Text) then
sendnotif("Didn't get clan", "Rejoining in 3 seconds...")
task.wait(3)
game:GetService("TeleportService"):Teleport(13190091082)
else
sendnotif("Got clan", "You got "..game:GetService("Players").LocalPlayer.PlayerGui.RerollClan.RollClanFrame.Clan.LName.Text.." rejoining in 3 seconds...")
task.wait(3)
getgenv().revert = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tobias020108Back/YBA-AUT/main/Wisteria_2_InfSpins.lua))()
game:GetService("TeleportService"):Teleport(13190091082)
end

end

end

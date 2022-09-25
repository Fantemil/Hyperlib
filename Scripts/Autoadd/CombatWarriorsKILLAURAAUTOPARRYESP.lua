game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Project Hook Notice";
    Text = "Project hook free script has been moved. Find the new link in our discord.";
    Duration = 120;
})

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = 'Уведомление о крючке проекта';
    Text = "Скрипт Project hook free был перемещен. Найдите новую ссылку в нашем discord.";
    Duration = 120;
})


game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "[DISCORD]";
    Text = "discord.gg/Fe8hYzYCpG";
    Duration = 120;
})


if setclipboard then
    setclipboard("discord.gg/Fe8hYzYCpG")
end

if syn then
    local Inv, ServerInfo, ServerName = syn.request({Url = "https://projecthook.xyz/requirements/discord.txt"; Method = "GET"}).Body, nil, ""

    ServerInfo = syn.request({
        Url = 'https://discord.com/api/v6/invite/'..Inv,
        Method = 'GET'
    })

    if ServerInfo.Success then ServerInfo = game:GetService("HttpService"):JSONDecode(ServerInfo.Body) else return end

    syn.request({
        Url = 'http://127.0.0.1:6463/rpc?v=1',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
            ['origin'] = 'https://ptb.discord.com',
        },
        Body = game:GetService("HttpService"):JSONEncode({
            ['args'] = {
                ['code'] = Inv,
            },
            ['cmd'] = 'INVITE_BROWSER',
            ['nonce'] = tostring(math.random(11111,99999))
        })
    })
end
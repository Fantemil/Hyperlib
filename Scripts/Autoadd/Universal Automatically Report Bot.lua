repeat task.wait() until game:IsLoaded()

words={hack={"Scamming","he's advertising hacks (viruses)"},cheat={"Scamming","he's advertising hacks (viruses)"},exploit={"Scamming","he's advertising hacks (viruses)"},script={"Scamming","he's advertising hacks (viruses)"},father={"Bullying","saying bad things about my parents"},orphan={"Bullying","saying bad things about my parents"},motherless={"Bullying","saying bad things about my parents"},parentless={"Bullying","saying bad things about my parents"},parents={"Bullying","saying bad things about my parents"},cancer={"Bullying","saying rude things to me, i can't take it anymore, i've had a really bad year"},kid={"Bullying","saying rude things to me, i can't take it anymore, i've had a really bad year"},bad={"Bullying","saying rude things to me, i can't take it anymore, i've had a really bad year"},['get a life']={"Bullying","saying rude things to me, i can't take it anymore, i've had a really bad year"},['no life']={"Bullying","saying rude things to me, i can't take it anymore, i've had a really bad year"},noob={"Bullying","saying rude things to me, i can't take it anymore, i've had a really bad year"},mods={"Bullying","saying rude things to me, i can't take it anymore, i've had a really bad year"},gay={"Bullying","saying bad things about other people, bullying them"},wizard={"Bullying","He said mean things to me"},gvae={"Bullying","saying bad things about other people, bullying them"},gae={"Bullying","saying bad things about other people, bullying them"},lgbt={"Bullying","saying bad things about other people, bullying them"},furr={"Bullying","saying bad things about other people, bullying them"},homo={"Bullying","saying bad things about other people, bullying them"},dumb={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},stupid={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},fat={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},ugly={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},kms={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},kvs={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},trash={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},suck={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},mad={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},bald={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},retard={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},cry={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},ratio={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},clown={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},['skill issue']={"Bullying","this is really mean! i've had a really bad year, my dog passed out and i just can't take it anymore!"},white={"Bullying","He's racist!"},black={"Bullying","He's racist!"},asia={"Bullying","He's racist!"},negr={"Bullying","He's racist!"},love={"Dating","he's dating in roblox"},['like you']={"Dating","he's dating in roblox"},russia={"Bullying","he talking about russia ukraine war"},ukraine={"Bullying","he talking about russia ukraine war"},youtube={"Offsite Links","he offsite links"}}

if not game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents') or not game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents'):FindFirstChild('OnMessageDoneFiltering') then return end
DCSCE = game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents')

if setfflag then
 setfflag("AbuseReportScreenshotPercentage", 0)
 setfflag("DFFlagAbuseReportScreenshot", "False") 
end

if not autoreportcfg then
getgenv().autoreportcfg = {
    Webhook = '', 
    Blatant = false, -- 12 reports instead of 6
    autoMessage = {
       enabled = true,
       Message = 'so sad you got autoreported :(',
    },
}
end

local players = game:GetService("Players")
local notifs = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

function notify(title, text)
    notifs:MakeNotification({
        Name = title,
        Content = text,
        Time = 5
    });
end;


if syn then
   notify("Autoreport",'this DOESNT WORK ON SYNAPSE!')
   notify('Autoreport','3ds disabled ReportAbuse so yea')
   return
end

function handler(msg,speaker)
   for i,v in next, words do
      if string.match(string.lower(msg),i) then
        for i = 0,4 do
         players:ReportAbuse(players[speaker],v[1],v[2])
         task.wait(1)
        end
         if autoreportcfg.Webhook ~= nil and autoreportcfg.Webhook ~= '' and autoreportcfg.Webhook ~= ' ' then
         local data = 
         {
             ["embeds"] = {{
                 ["title"] = "**" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "**",
                 ["description"] = "Auto-reported a player",
                 ["type"] = "rich",
                 ["color"] = tonumber(0x00aff4),
                 ["url"] = "https://www.roblox.com/games/" .. game.PlaceId,
                 ["fields"] = {
                     {
                         ["name"] = "Name",
                         ["value"] = "[" .. players[speaker].Name .. "](https://www.roblox.com/users/" .. players[speaker].UserId .. ")",
                         ["inline"] = true
                     },
                     {
                         ["name"] = "Message",
                         ["value"] = msg,
                         ["inline"] = true
                     },
                 },
                 ["footer"] = {
                     ["text"] = "\nIf you think this is a mistake: stfu"
                 },
                 ["author"] = {
                     ["name"] = "Auto Report"
                 }
             }}
         }
     local newdata = (game:GetService("HttpService")):JSONEncode(data);
     local request = http_request or request or HttpPost or http.request or syn.request;
     local abcdef = {
         Url = autoreportcfg.Webhook,
         Body = newdata,
         Method = "POST",
         Headers = {
             ["content-type"] = "application/json"
         }
     };
     request(abcdef);
    else
        notify('Autoreport','Autoreported ' .. speaker .. ' | offensive part: ' .. i)
    end
    if DCSCE:FindFirstChild('SayMessageRequest') and autoreportcfg.autoMessage.enabled == true then
       DCSCE.SayMessageRequest:FireServer('/w ' .. speaker .. ' ' .. autoreportcfg.autoMessage.Message,'All')
    end
      end
   end
end

if game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents') then
msg = game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents'):FindFirstChild('OnMessageDoneFiltering')
msg.OnClientEvent:Connect(function(msgdata)
    if tostring(msgdata.FromSpeaker) ~= players.LocalPlayer.Name then
       handler(tostring(msgdata.Message),tostring(msgdata.FromSpeaker))
    end
end)
end
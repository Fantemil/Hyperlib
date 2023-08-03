local checkspeed = .1
local webhook = "https://webhookhere"
local remotes = {} 

for i,v in pairs(game:GetDescendants()) do 
    if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") and (not string.find(v.Name, "Chat")) then 
        table.insert(remotes, v.Name)
    end 
end 

for i,v in pairs(getnilinstances()) do 
    if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") and (not string.find(v.Name, "Chat")) then 
        table.insert(remotes, v.Name)
    end
end 

local debounce = false 
local request = http_request or request or HttpPost or syn.request

function sendmsg(text, hex)
if debounce == false then  
debounce = true 
local url = (webhook or "https://pornhub.com/")
local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "Anti Remote Spy",
           ["description"] = text,
           ["type"] = "rich",
           ["color"] = hex,
           ["timestamp"] = DateTime.now():ToIsoDate()
       }
   }
}
local encoded = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
local enddata = {
    Url = url, 
    Body = encoded, 
    Method = "POST", 
    Headers = headers
}
request(enddata)
else 
wait(30)
debounce = false 
end 
end

for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do 
    if i > 0 then 
        for i1,v1 in pairs(v:GetDescendants()) do 
            local suc, er = pcall(function()
                local a = v1.Text
            end) 
            
            if suc then
                for i2,v2 in pairs(remotes) do 
                    if string.find(tostring(v1.Text), tostring(v2)) and task.wait(checkspeed) then 
                        sendmsg("Username : "..game.Players.LocalPlayer.Name.." | RemoteSpy : "..v.Name.." | Remote : "..v2, tonumber(0xff0000))
                        game:Shutdown()
                        for i3,v3 in pairs(game:GetService("CoreGui"):GetDescendants()) do 
                            v3:Destroy()
                        end 
                    end 
                end
                
                v1.Changed:Connect(function(property)
                    if property == "Text" then 
                        for i2,v2 in pairs(remotes) do 
                            if string.find(tostring(v1.Text), tostring(v2)) and task.wait(checkspeed) then 
                                sendmsg("Username : "..game.Players.LocalPlayer.Name.." | RemoteSpy : "..v.Name.." | Remote : "..v2, tonumber(0xff0000))
                                game:Shutdown()
                                for i3,v3 in pairs(game:GetService("CoreGui"):GetDescendants()) do 
                                    v3:Destroy()
                                end 
                            end
                        end 
                    end 
                end)
            end 
        end 
    end 
end 

game:GetService("CoreGui").DescendantAdded:Connect(function(descendant)
    local suc, er = pcall(function()
        local a = descendant.Text 
    end) 
    
    if suc then 
        for i,v in pairs(remotes) do 
            if string.find(tostring(descendant.Text), tostring(v)) and task.wait(checkspeed) then 
                sendmsg("Username : "..game.Players.LocalPlayer.Name.." | RemoteSpy : nil | Remote : "..v, tonumber(0xff0000))
                game:Shutdown()
                for i3,v3 in pairs(game:GetService("CoreGui"):GetDescendants()) do 
                    v3:Destroy()
                end 
            end 
        end
        
        descendant.Changed:Connect(function(property)
            if property == "Text" then 
                for i,v in pairs(remotes) do 
                    if string.find(tostring(descendant.Text), tostring(v)) and task.wait(checkspeed) then 
                        sendmsg("Username : "..game.Players.LocalPlayer.Name.." | RemoteSpy : nil | Remote : "..v, tonumber(0xff0000))
                        game:Shutdown()
                        for i3,v3 in pairs(game:GetService("CoreGui"):GetDescendants()) do 
                            v3:Destroy()
                        end
                    end 
                end 
            end 
        end)
    end 
end)

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
    if i > 0 then 
        for i1,v1 in pairs(v:GetDescendants()) do 
            local suc, er = pcall(function()
                local a = v1.Text
            end) 
            
            if suc then
                for i2,v2 in pairs(remotes) do 
                    if string.find(tostring(v1.Text), tostring(v2)) and task.wait(checkspeed) then 
                        sendmsg("Username : "..game.Players.LocalPlayer.Name.." | RemoteSpy : "..v.Name.." | Remote : "..v2, tonumber(0xff0000))
                        game:Shutdown()
                        for i3,v3 in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do 
                            v3:Destroy()
                        end 
                    end 
                end
                
                v1.Changed:Connect(function(property)
                    if property == "Text" then 
                        for i2,v2 in pairs(remotes) do 
                            if string.find(tostring(v1.Text), tostring(v2)) and task.wait(checkspeed) then 
                                sendmsg("Username : "..game.Players.LocalPlayer.Name.." | RemoteSpy : "..v.Name.." | Remote : "..v2, tonumber(0xff0000))
                                game:Shutdown()
                                for i3,v3 in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do 
                                    v3:Destroy()
                                end 
                            end
                        end 
                    end 
                end)
            end 
        end 
    end 
end 

game:GetService("Players").LocalPlayer.PlayerGui.DescendantAdded:Connect(function(descendant)
    local suc, er = pcall(function()
        local a = descendant.Text 
    end) 
    
    if suc then 
        for i,v in pairs(remotes) do 
            if string.find(tostring(descendant.Text), tostring(v)) and task.wait(checkspeed) then 
                sendmsg("Username : "..game.Players.LocalPlayer.Name.." | RemoteSpy : nil | Remote : "..v, tonumber(0xff0000))
                game:Shutdown()
                for i3,v3 in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do 
                    v3:Destroy()
                end 
            end 
        end
        
        descendant.Changed:Connect(function(property)
            if property == "Text" then 
                for i,v in pairs(remotes) do 
                    if string.find(tostring(descendant.Text), tostring(v)) and task.wait(checkspeed) then 
                        sendmsg("Username : "..game.Players.LocalPlayer.Name.." | RemoteSpy : nil | Remote : "..v, tonumber(0xff0000))
                        game:Shutdown()
                        for i3,v3 in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do 
                            v3:Destroy()
                        end
                    end 
                end 
            end 
        end)
    end 
end)

game:GetService("CoreGui"):WaitForChild("DevConsoleMaster")

for i = 1,1000 do 
    print("no")
end 
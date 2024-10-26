-- https://web.roblox.com/games/8540168650/ANUBIS-GANG-WARS-Stand-Upright-Rebooted
------------------SETTINGS------------------
local popup = true -- a popup appears when you hit a stand or attribute
local tpout = true -- you will tp in and out to collect items if its on
local askroka = true -- will ask to roka in the popup
local convtoname = true -- when you get a stand it will automatically convert to display name

-- webhook stuff
local webhookurl = "" -- if you wanna use webhook, put url here, functions same as popup
local tagperson = "<@USERIDHERE>" -- tags the person when webhook sends
local youdontlikebeingchecked = true -- when you get checked the webhook says who checked
local notifyitem = true -- notifies you if you got a specific item
local notifyondisconnect = true -- notifies when you get disconnected
------------------SETTINGS------------------
--[[
webhook instructions:

1. make a new server on discord
w2. go to server settings and press "Integrations"
3. press "Create A Webhook"
4. click on your webhook and press "Copy Webhook URL"
5. paste the webhook url on webhookurl in this script settings

6. for tagperson, just put it as <@userid>, to find a userid, go to user settings, click advanced, and turn on developer mode, you can right click on a username and press copy id, then paste it in the USERIDHERE of tagperson
example of webhookurl: https://discord.com/api/webhooks/1234567890123456789/x-4389hjf3r-3fe-f54r-gs-4f34rg-65u-j76-3-g5-f-g4g54reg6h5tr-rf4errgr
example of tagperson: <@123456789012345678>


]]
print("script starting..")
getgenv().autocollect = false
getgenv().farmstands = false
getgenv().autointeract = false
getgenv().autokillnpc = false
getgenv().autopointa = false
getgenv().autopointb = false
getgenv().autopointc = false
local savedgangwarsspot
local savedpos
local specitemfarm = {}
local specstandfarm = {}
local specattfarm = {}
local npcnames = {}
local standnames = {}
local itemsnotif = {}
local distancefromenemy = 3
local usergui = nil
local partsonconnect = {}
local localplr = game.Players.LocalPlayer
local plrstand = game.Players.LocalPlayer.Data.Stand
local plratt = game.Players.LocalPlayer.Data.Attri
local jsonservice = game:GetService("HttpService")
local hogheight = 13

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("stand upright rebooted", "Sentinel")
local t1 = Window:NewTab("farming stuff")
local t1s1 = t1:NewSection("items (yes the texts below this is scaled to fit)")
local t1s2 = t1:NewSection("stands")
local t1s3 = t1:NewSection("attributes")
local t2 = Window:NewTab("quests/lairs")
local t2s1 = t2:NewSection("quests (stand recommended)")
local t2s2 = t2:NewSection("lairs (stand recommended)")
local t3 = Window:NewTab("gang wars")
local t3s1 = t3:NewSection("gang wars matchtaking")
local t3s2 = t3:NewSection("gang wars")
local t4 = Window:NewTab("misc")
local t4s1 = t4:NewSection("misc")
local itemlabel = t1s1:NewLabel("autofarm items: ")
local notiflabel = t1s1:NewLabel("notify items: ")
local standlabel = t1s2:NewLabel("autofarm stands: ")
local attlabel = t1s3:NewLabel("attributes: ")
local itemlabeltxt = "autofarm items: "
local standlabeltxt = "autofarm stands: "
local attlabeltxt = "attributes: "
local notiflabeltxt = "notify items: "
local showhitbox = nil
local autocollectfunc = nil
local oncharadded = nil
local oncharadded2 = nil
local option
local option2
local option3
local savedpos
local tppos = CFrame.new(-387.331, 34, -518.135)
local partpos = Vector3.new(-387.331, 30, -518.135)
local tpoutpart = Instance.new("Part")
tpoutpart.Anchored = true
tpoutpart.CanCollide = true
tpoutpart.Position = partpos
tpoutpart.Size = Vector3.new(100,4,100)
tpoutpart.Parent = workspace
local nofallplatform = Instance.new("Part")
nofallplatform.Transparency = 0.7
nofallplatform.Anchored = true
nofallplatform.CanCollide = false
nofallplatform.Position = Vector3.new(0,0,0)
nofallplatform.Size = Vector3.new(17.5,4,17.5)
nofallplatform.Parent = workspace
local gui

for i,v in pairs(game.CoreGui:GetChildren()) do
    if string.find(v.Name,"1") or string.find(v.Name,"2") or string.find(v.Name,"3") or string.find(v.Name,"4") or string.find(v.Name,"5") or string.find(v.Name,"6") or string.find(v.Name,"7") or string.find(v.Name,"8") or string.find(v.Name,"9") and v:FindFirstChild("Main") and v.Main:FindFirstChild("MainHeader") and v.Main.MainHeader:FindFirstChild("title").Text == "stand upright rebooted" then
        gui = v
    end
end

function checkstand()
    if localplr.Data.Stand.Value == "None" then
        distancefromenemy = 3
    elseif localplr.Data.Stand.Value ~= "None" then
        if localplr.Character.Stand:FindFirstChild("UpperTorso") and localplr.Character.Stand:FindFirstChild("UpperTorso").Transparency == 1 or localplr.Character.Stand:FindFirstChild("HeadMesh") and localplr.Character.Stand:FindFirstChild("HeadMesh").Transparency == 1 then
            if not game:GetService("Players").LocalPlayer.Character.StandEvents:FindFirstChild("Summon") then
                game:GetService("Players").LocalPlayer.Character.StandEvents.Comms:FireServer("Beg",Enum.KeyCode.Q)
            else
                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
            end
        end
        distancefromenemy = 6
        if not game:GetService("Players").LocalPlayer.Character.StandEvents:FindFirstChild("Barrage") then
            game:GetService("Players").LocalPlayer.Character.StandEvents.Comms:FireServer("Beg",Enum.KeyCode.E)
        else
            game:GetService("Players").LocalPlayer.Character.StandEvents.Barrage:FireServer(true)
        end
    end
end

function notif(title,text)
    if text ~= nil or text ~= "" then
        game:GetService("StarterGui"):SetCore("SendNotification",{tostring(title),tostring(text)})
    else
        game:GetService("StarterGui"):SetCore("SendNotification",{tostring(title),tostring(title)})
    end
end

function webhook(text,stand,color)
    if webhookurl == "" then
        return
    elseif webhookurl ~= "" then
        text = tostring(text)
        print(text)
        if stand then
            print(stand)
        end
        if convtoname and stand then
            text = string.gsub(text,stand:upper(),game.ReplicatedStorage.StandNameConvert[stand].Value:upper())
            print(text)
        end
        local col = tonumber(0xFFFF00)
        if color then
            col = color
        end
        local http = game:GetService("HttpService")
        if tagperson ~= "<@USERIDHERE>" then
            local s = request({
                Url = webhookurl,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = http:JSONEncode({
                    ["content"] = tagperson,
                    ["embeds"] = {{
                        ["title"] = text,
                        ["description"] = text,
                        ["type"] = "rich",
                        ["color"] = col
                    }}
                })
            })
            table.foreach(s,print)
        else
            local s = request({
                Url = webhookurl,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = http:JSONEncode({
                    ["content"] = "",
                    ["embeds"] = {{
                        ["title"] = text,
                        ["description"] = text,
                        ["type"] = "rich",
                        ["color"] = col
                    }}
                })
            })
            table.foreach(s,print)
        end
    end
end

function popupfunc(text,toroka,stand)
    text = tostring(text)
    print(text)
    if stand then
        print(stand)
    end
    if popup == true then
        if toroka and toroka == true and askroka == true then
            local s
            if convtoname == true and stand then
                s = messagebox(string.gsub(text,stand:upper(),game.ReplicatedStorage.StandNameConvert[stand].Value:upper()).." Roka?",text,4)
            else
                s = messagebox(text.." Roka?",text,4)
            end
            if s == 6 then
                local roka = "Rokakaka"
                if localplr.Backpack:FindFirstChild(roka) then
                    local selroka = localplr.Backpack:FindFirstChild(roka)
                    local standv = plrstand.Value
                    local att = plratt.Value
                    selroka.Parent = localplr.Character
                    selroka.Use:FireServer()
                    repeat wait() until selroka.Parent == nil
                    wait(0.2)
                    if convtoname == true and stand then
                        text = string.gsub(text,"YOU GOT ","YOU ROKA'D ")
                        standv = string.gsub(text,stand:upper(),game.ReplicatedStorage.StandNameConvert[stand].Value:upper())
                        webhook(standv,nil,tonumber(0xFF0000))
                    elseif convtoname == false or not stand then
                        webhook("YOU ROKA'D "..att:upper().." "..standv:upper().."!!!",nil,tonumber(0xFF0000))
                    end
                elseif not localplr.Backpack:FindFirstChild(roka) then
                    notif("waiting for roka...")
                    local origstand = plrstand.Value
                    repeat wait() until localplr.Backpack:FindFirstChild(roka)
                    if plrstand.Value ~= origstand then
                        return
                    end
                    local selroka = localplr.Backpack:FindFirstChild(roka)
                    local standv = plrstand.Value
                    local att = plratt.Value
                    selroka.Parent = localplr.Character
                    selroka.Use:FireServer()
                    repeat wait() until selroka.Parent == nil
                    wait(0.2)
                    if convtoname == true and stand then
                        text = string.gsub(text,"YOU GOT ","YOU ROKA'D ")
                        standv = string.gsub(text,stand:upper(),game.ReplicatedStorage.StandNameConvert[stand].Value:upper())
                        webhook(standv,nil,tonumber(0xFF0000))
                    elseif convtoname == false or not stand then
                        webhook("YOU ROKA'D "..att:upper().." "..standv:upper().."!!!",nil,tonumber(0xFF0000))
                    end
                end
            end
        elseif popup == true then
            if convtoname == true and stand then
                s = messagebox(string.gsub(text,stand:upper(),game.ReplicatedStorage.StandNameConvert[stand].Value:upper()).." Roka?",text,0)
            else
                s = messagebox(text,text,0)
            end
        end
    end
end

function findobj(obj,folder)
    if folder == game.Players then
        if folder:FindFirstChild(obj) then
            obj = folder:FindFirstChild(obj)
            return obj,folder
        elseif not folder:FindFirstChild(obj) then
            for i,v in pairs(folder:GetPlayers()) do
                if v.Name:lower() == obj:lower() then
                    obj = v
                    return obj,folder
                elseif string.find(v.Name:lower(),obj:lower()) then
                    obj = v
                    return obj,folder
                elseif v.DisplayName:lower() == obj:lower() then
                    obj = v
                    return obj,folder
                elseif string.find(v.DisplayName:lower(),obj:lower()) then
                    obj = v
                    return obj,folder
                else
                    print("couldnt find player")
                end
            end
        end
    else
        if folder:FindFirstChild(obj) then
            obj = folder:FindFirstChild(obj)
            return obj,folder
        elseif not folder:FindFirstChild(obj) then
            for i,v in pairs(folder:GetChildren()) do
                if v.Name:lower() == obj:lower() then
                    obj = v
                    return obj,folder
                elseif string.find(v.Name:lower(),obj:lower()) then
                    obj = v
                    return obj,folder
                else
                    print("couldnt find object")
                end
            end
        end
    end
end

local chatfunc = game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(txt)
    if txt ~= nil and youdontlikebeingchecked == true then
        local message = txt.Message:lower()
        if string.sub(message,1,7) == "/check " and string.sub(message,8) == string.sub(localplr.Name:lower(),1,string.len(string.sub(message,8))) then
            local plrchecked = findobj(string.sub(message,8),game.Players)
            if plrchecked ~= nil and plrchecked == localplr then
                webhook(txt.FromSpeaker.." Checked You!",nil,tonumber(0xFFFFFF))
            end
        end
    end
end)

if game.Workspace:FindFirstChild("Vfx") then
    autocollectfunc = game:GetService("Workspace").Vfx.ChildAdded:Connect(function(v)
        if getgenv().autocollect == true and localplr.Character:FindFirstChild("HumanoidRootPart") then
            if v:IsA("Tool") then
                print(v.Name.." spawned")
                if specitemfarm[v.Name] and v:FindFirstChild("Handle") then
                    print("collecting "..v.Name.."...")
                    localplr.Character.HumanoidRootPart.CFrame = CFrame.new(v.Handle.Position)
                    repeat wait() localplr.Character.HumanoidRootPart.CFrame = CFrame.new(v.Handle.Position) until (localplr.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude < 10
                    fireproximityprompt(v.Handle.ProximityPrompt)
                    repeat wait() until v.Parent ~= game:GetService("Workspace").Vfx
                    if tpout == true then
                        localplr.Character.HumanoidRootPart.CFrame = tppos
                    end
                    if notifyitem == true and itemsnotif[v.Name] then
                        local itemcount = 0
                        for i2,v2 in pairs(localplr.Backpack:GetChildren()) do
                            if v.Name == v2.Name then
                                itemcount += 1
                            end
                        end
                        for i2,v2 in pairs(localplr.Character:GetChildren()) do
                            if v.Name == v2.Name then
                                itemcount += 1
                            end
                        end
                        webhook("You got a "..v.Name.."!! (Count: "..tostring(itemcount)..")",nil,tonumber(0x00FF00))
                    end
                end
            end
        end
    end)
end

local notifyondisconnectfunc = game.CoreGui:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay").DescendantAdded:Connect(function(gui)
    if notifyondisconnect == true and gui.Name == "ErrorTitle" then
        gui:GetPropertyChangedSignal("Text"):Connect(function()
            if gui.Text == "Disconnected" then
                if localplr.Data.Banned.Value == true then
                    webhook("You Got Banned! Reason: "..localplr.Data.BanReason.Value,nil,tonumber(0x800000))
                else
                    webhook("You Got Disconnected!",nil,tonumber(0x800000))
                end
            end
        end)
        if gui.Text == "Disconnected" then
            if localplr.Data.Banned.Value == true then
                webhook("You Got Banned! Reason: "..localplr.Data.BanReason.Value,nil,tonumber(0x800000))
            else
                webhook("You Got Disconnected!",nil,tonumber(0x800000))
            end
        end
    end
end)

local noplatformstand = nil

local autodeleteragdoll = game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    if getgenv().autodelragdoll == true then
        char:WaitForChild("Ragdoll",math.huge):Destroy()
        char:WaitForChild("Humanoid",math.huge)
        noplatformstand = char.Humanoid:GetPropertyChangedSignal("PlatformStand"):Connect(function()
            char.Humanoid.PlatformStand = false
        end)
    end
end)

local whendel = gui

function refreshtexts()
    itemlabel:UpdateLabel("")
    itemlabeltxt = "autofarm items: "
    for i,v in pairs(specitemfarm) do
        itemlabeltxt = itemlabeltxt.." | "..v
    end
    itemlabel:UpdateLabel(itemlabeltxt)
    standlabel:UpdateLabel("")
    standlabeltxt = "autofarm stands: "
    for i,v in pairs(specstandfarm) do
        standlabeltxt = standlabeltxt.." | "..v
    end
    standlabel:UpdateLabel(standlabeltxt)
    attlabel:UpdateLabel("")
    attlabeltxt = "attributes: "
    for i,v in pairs(specattfarm) do
        attlabeltxt = attlabeltxt.." | "..v
    end
    attlabel:UpdateLabel(attlabeltxt)
    notiflabel:UpdateLabel("")
    notiflabeltxt = "notify items: "
    for i,v in pairs(itemsnotif) do
        notiflabeltxt = notiflabeltxt.." | "..v
    end
    notiflabel:UpdateLabel(notiflabeltxt)
end

function savestuff()
    writefile("specitemfarm.txt",jsonservice:JSONEncode(specitemfarm))
    writefile("specstandfarm.txt",jsonservice:JSONEncode(specstandfarm))
    writefile("specattfarm.txt",jsonservice:JSONEncode(specattfarm))
    writefile("itemsnotif.txt",jsonservice:JSONEncode(itemsnotif))
end

t1s1:NewDropdown("items", "items", {"Charged Arrow","Dio's Diary","Green Baby","Kar's Mask","Ketchup","Red Stone Of Aja Mask","Rokakaka","Rotten Rokakaka","Stand Arrow","Stone Mask"}, function(selected)
    option = selected
end)

t1s1:NewButton("add item", "adds the item you selected from dropdown", function()
    specitemfarm[option] = option
    refreshtexts()
    savestuff()
end)

t1s1:NewButton("remove item", "removes the item you selected from dropdown", function()
    specitemfarm[option] = nil
    refreshtexts()
    savestuff()
end)

t1s1:NewButton("add item to notify items", "only works if you have notifyitem on", function()
    itemsnotif[option] = option
    refreshtexts()
    savestuff()
end)

t1s1:NewButton("remove item from notify items", "only works if you have notifyitem on", function()
    itemsnotif[option] = nil
    refreshtexts()
    savestuff()
end)

t1s1:NewToggle("autofarm items", "toggles to autofarm or not", function(state)
    if state then
        getgenv().autocollect = true
        if tpout == true then
            savedpos = CFrame.new(localplr.Character.HumanoidRootPart.Position)
            localplr.Character.HumanoidRootPart.CFrame = tppos
        end
    else
        getgenv().autocollect = false
        if tpout == true then
            localplr.Character.HumanoidRootPart.CFrame = savedpos
        end
    end
end)

t1s2:NewButton("add current stand", "add your stand", function()
    specstandfarm[plrstand.Value] = plrstand.Value
    refreshtexts()
    savestuff()
end)

local standdrpdwn = t1s2:NewDropdown("stands", "stands", {}, function(selected)
    option2 = selected
end)

t1s2:NewButton("add stand", "adds the stand you selected from dropdown", function()
    specstandfarm[option2] = option2
    refreshtexts()
    savestuff()
end)

t1s2:NewButton("remove stand", "removes the stand you selected from dropdown", function()
    specstandfarm[option2] = nil
    refreshtexts()
    savestuff()
end)

t1s2:NewToggle("autofarm stands", "toggles to autofarm or not", function(state)
    if state then
        getgenv().farmstands = true
        while getgenv().farmstands do
            wait()
            local arrow = "Stand Arrow"
            local roka = "Rokakaka"
            if localplr.Backpack:FindFirstChild(arrow) and plrstand.Value == "None" then
                selarrow.Parent = localplr.Character
                game.ReplicatedStorage.Events.UseItem:FireServer()
                localplr.Data.Stand.Changed:Wait()
                selarrow.Parent = localplr.Backpack
                wait(0.2)
                if specattfarm[plratt.Value] and specstandfarm[plrstand.Value] then
                    notif("!!!","hit perfect stand and attribute!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                elseif specattfarm[plratt.Value] then
                    notif("!!!","hit attribute!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                elseif specstandfarm[plrstand.Value] then
                    notif("!!!","hit stand!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                end
            elseif localplr.Backpack:FindFirstChild(roka) and plrstand.Value ~= "None" and not specstandfarm[plrstand.Value] and not specattfarm[plratt.Value] then
                local selroka = localplr.Backpack:FindFirstChild(roka) or localplr.Character:FindFirstChild(roka)
                selroka.Parent = localplr.Character
                game.ReplicatedStorage.Events.UseItem:FireServer()
                localplr.Data.Stand.Changed:Wait()
                selroka.Parent = localplr.Backpack
                wait(0.2)
                if plrstand.Value == "PutridWhine" then
                    notif("you got putrid whine","cool thing")
                end
            end
        end
    else
        getgenv().farmstands = false
    end
end)

t1s2:NewToggle("autofarm stands (charged arrows)", "toggles to autofarm or not", function(state)
    if state then
        getgenv().farmstands = true
        while getgenv().farmstands do
            wait()
            local arrow = "Charged Arrow"
            local roka = "Rokakaka"
            if localplr.Backpack:FindFirstChild(arrow) and plrstand.Value == "None" then
                local selarrow = localplr.Backpack:FindFirstChild(arrow) or localplr.Character:FindFirstChild(arrow)
                selarrow.Parent = localplr.Character
                game.ReplicatedStorage.Events.UseItem:FireServer()
                localplr.Data.Stand.Changed:Wait()
                selarrow.Parent = localplr.Backpack
                wait(0.2)
                if specattfarm[plratt.Value] and specstandfarm[plrstand.Value] then
                    notif("!!!","hit perfect stand and attribute!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                elseif specattfarm[plratt.Value] then
                    notif("!!!","hit attribute!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                elseif specstandfarm[plrstand.Value] then
                    notif("!!!","hit stand!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                end
            elseif localplr.Backpack:FindFirstChild(roka) and plrstand.Value ~= "None" and not specstandfarm[plrstand.Value] and not specattfarm[plratt.Value] then
                local selroka = localplr.Backpack:FindFirstChild(roka) or localplr.Character:FindFirstChild(roka)
                selroka.Parent = localplr.Character
                game.ReplicatedStorage.Events.UseItem:FireServer()
                localplr.Data.Stand.Changed:Wait()
                selroka.Parent = localplr.Backpack
                wait(0.2)
                if plrstand.Value == "PutridWhine" then
                    notif("you got putrid whine","cool thing")
                end
            end
        end
    else
        getgenv().farmstands = false
    end
end)

t1s2:NewToggle("autofarm stands (attributes)", "toggles to autofarm or not", function(state)
    if state then
        getgenv().farmstands = true
        while getgenv().farmstands do
            wait()
            local arrow = "Stand Arrow"
            local roka = "Rokakaka"
            if localplr.Backpack:FindFirstChild(arrow) and plrstand.Value == "None" then
                local selarrow = localplr.Backpack:FindFirstChild(arrow) or localplr.Character:FindFirstChild(arrow)
                selarrow.Parent = localplr.Character
                game.ReplicatedStorage.Events.UseItem:FireServer()
                localplr.Data.Stand.Changed:Wait()
                selarrow.Parent = localplr.Backpack
                wait(0.2)
                if specattfarm[plratt.Value] and specstandfarm[plrstand.Value] then
                    notif("!!!","hit perfect stand and attribute!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                elseif specattfarm[plratt.Value] then
                    notif("!!!","hit attribute!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                end
            elseif localplr.Backpack:FindFirstChild(roka) and plrstand.Value ~= "None" and not specattfarm[plratt.Value] then
                local selroka = localplr.Backpack:FindFirstChild(roka) or localplr.Character:FindFirstChild(roka)
                selroka.Parent = localplr.Character
                game.ReplicatedStorage.Events.UseItem:FireServer()
                localplr.Data.Stand.Changed:Wait()
                selroka.Parent = localplr.Backpack
                wait(0.2)
                if plrstand.Value == "PutridWhine" then
                    notif("you got putrid whine","cool thing")
                end
            end
        end
    else
        getgenv().farmstands = false
    end
end)

t1s2:NewToggle("autofarm stands (attributes + charged)", "toggles to autofarm or not", function(state)
    if state then
        getgenv().farmstands = true
        while getgenv().farmstands do
            wait()
            local arrow = "Charged Arrow"
            local roka = "Rokakaka"
            if localplr.Backpack:FindFirstChild(arrow) and plrstand.Value == "None" then
                local selarrow = localplr.Backpack:FindFirstChild(arrow) or localplr.Character:FindFirstChild(arrow)
                selarrow.Parent = localplr.Character
                game.ReplicatedStorage.Events.UseItem:FireServer()
                localplr.Data.Stand.Changed:Wait()
                selarrow.Parent = localplr.Backpack
                wait(0.2)
                if specattfarm[plratt.Value] and specstandfarm[plrstand.Value] then
                    notif("!!!","hit perfect stand and attribute!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                elseif specattfarm[plratt.Value] then
                    notif("!!!","hit attribute!")
                    webhook("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",plrstand.Value)
                    popupfunc("YOU GOT "..plratt.Value:upper().." "..plrstand.Value:upper().."!!!",true,plrstand.Value)
                end
            elseif localplr.Backpack:FindFirstChild(roka) and plrstand.Value ~= "None" and not specattfarm[plratt.Value] then
                local selroka = localplr.Backpack:FindFirstChild(roka) or localplr.Character:FindFirstChild(roka)
                selroka.Parent = localplr.Character
                game.ReplicatedStorage.Events.UseItem:FireServer()
                localplr.Data.Stand.Changed:Wait()
                selroka.Parent = localplr.Backpack
                wait(0.2)
                if plrstand.Value == "PutridWhine" then
                    notif("you got putrid whine","cool thing")
                end
            end
        end
    else
        getgenv().farmstands = false
    end
end)

t1s3:NewButton("add current attribute", "add your attribute", function()
    specattfarm[plratt.Value] = plratt.Value
    refreshtexts()
    savestuff()
end)

t1s3:NewDropdown("attributes", "attributes", {"None","Cheerful","Strong","Powerful","Manic","Tough","Enrage","Sloppy","Lethargic","Godly","Daemon","Glass Cannon","Invincible","Tragic","Hacker","Legendary","Diabolical"}, function(selected)
    option3 = selected
end)

t1s3:NewButton("add attribute", "adds the attribute you selected from dropdown", function()
    specattfarm[option3] = option3
    refreshtexts()
    savestuff()
end)

t1s3:NewButton("remove attribute", "removes the attribute you selected from dropdown", function()
    specattfarm[option3] = nil
    refreshtexts()
    savestuff()
end)

t2s1:NewToggle("auto interact with quest", "toggles to interact or not", function(state)
    if state then
        getgenv().autointeract = true
        while getgenv().autointeract do
            wait(.3)
            for i,v in pairs(game.Workspace.Map.NPCs:GetChildren()) do
                if v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("Sub") and v.Head.Sub:FindFirstChild("Text") and v.Head.Sub.Text.Text == "Quest" and v:FindFirstChild("QuestDone") and v:FindFirstChild("Done") then
                    v.Done:FireServer()
                    v.QuestDone:FireServer()
                end
            end
        end
    else
        getgenv().autointeract = false
    end
end)

local npcdropdown = t2s1:NewDropdown("npcs", "npcs", {"placeholder"}, function(selected)
    killnpcname = selected
end)

t2s1:NewButton("goto selected npc","goto npc", function()
    local name = killnpcname
    local npc
    for i,v in pairs(game.Workspace.Living:GetChildren()) do
        if not game.Players:GetPlayerFromCharacter(v) and v.Name == name and v:FindFirstChild("Humanoid") then
            npc = v
        end
    end
    localplr.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
end)

t2s1:NewButton("kill selected npc","kill npc", function()
    if localplr.Character:FindFirstChild("Stand") and localplr.Character:FindFirstChild("HumanoidRootPart") then
        local name = killnpcname
        local npc
        local origpos = localplr.Character.HumanoidRootPart.Position
        checkstand()
        for i,v in pairs(game.Workspace.Living:GetChildren()) do
            if not game.Players:GetPlayerFromCharacter(v) and v.Name == name and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                npc = v
            end
        end
        if npc then
            repeat
                wait(.05)
                if localplr.Character:FindFirstChild("Stand") and localplr.Character:FindFirstChild("HumanoidRootPart") then
                    localplr.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0,distancefromenemy,0)
                    localplr.Character.HumanoidRootPart.CFrame = CFrame.lookAt(localplr.Character.HumanoidRootPart.Position,npc.HumanoidRootPart.Position)
                    nofallplatform.Position = localplr.Character.HumanoidRootPart.Position - Vector3.new(0,3,0)
                    if not game:GetService("Players").LocalPlayer.Character.StandEvents:FindFirstChild("M1") then
                        game:GetService("Players").LocalPlayer.Character.StandEvents.Comms:FireServer("Beg",Enum.UserInputType.MouseButton1)
                    else
                        game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                    end
                    if game:GetService("Players").LocalPlayer.Character.StandEvents:FindFirstChild("PowerPunch") then
                        game:GetService("Players").LocalPlayer.Character.StandEvents.PowerPunch:FireServer()
                    end
                end
            until npc.Parent == nil or npc.Humanoid.Health <= 0
            localplr.Character.HumanoidRootPart.CFrame = CFrame.new(origpos)
        else
            return
        end
    end
end)

t2s1:NewToggle("auto kill selected npc", "toggles to kill or not", function(state)
    if state then
        getgenv().autokillnpc = true
        while getgenv().autokillnpc do
            wait(.1)
            if localplr.Character:FindFirstChild("Stand") and localplr.Character:FindFirstChild("HumanoidRootPart") then
                local name = killnpcname
                local npc
                local origpos = localplr.Character.HumanoidRootPart.Position
                checkstand()
                for i,v in pairs(game.Workspace.Living:GetChildren()) do
                    if not game.Players:GetPlayerFromCharacter(v) and v.Name == name and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        npc = v
                    end
                end
                if npc then
                    repeat
                        wait(.05)
                        if localplr.Character:FindFirstChild("Stand") and localplr.Character:FindFirstChild("HumanoidRootPart") then
                            localplr.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0,distancefromenemy,0)
                            localplr.Character.HumanoidRootPart.CFrame = CFrame.lookAt(localplr.Character.HumanoidRootPart.Position,npc.HumanoidRootPart.Position)
                            nofallplatform.Position = localplr.Character.HumanoidRootPart.Position - Vector3.new(0,3,0)
                            if not game:GetService("Players").LocalPlayer.Character.StandEvents:FindFirstChild("M1") then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Comms:FireServer("Beg",Enum.UserInputType.MouseButton1)
                            else
                                game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                            end
                            if game:GetService("Players").LocalPlayer.Character.StandEvents:FindFirstChild("PowerPunch") then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.PowerPunch:FireServer()
                            end
                        end
                    until npc.Parent == nil or npc.Humanoid.Health <= 0
                    localplr.Character.HumanoidRootPart.CFrame = CFrame.new(origpos)
                else
                    return
                end
            end
        end
    else
        getgenv().autokillnpc = false
    end
end)

t2s1:NewToggle("spectate selected npc", "toggles to spectate or not", function(state)
    if state then
        local name = killnpcname
        local npc
        for i,v in pairs(game.Workspace.Living:GetChildren()) do
            if not game.Players:GetPlayerFromCharacter(v) and v.Name == name and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                npc = v
            end
        end
        game.Workspace.Camera.CameraSubject = npc.Humanoid
    else
        if localplr.Character:FindFirstChild("Humanoid") then
            game.Workspace.Camera.CameraSubject = localplr.Character.Humanoid
        end
    end
end)

t2s2:NewTextBox("goto lair INPUT LVL", "input level for lair", function(txt)
	print(txt)
    for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetChildren()) do
        if v:FindFirstChild("Head") and v.Head:FindFirstChild("Sub") and v.Head.Sub.Text.Text == "Lair Quest" and v.Head:FindFirstChild("Main") and v.Head.Main.Text.Text == "i_stabman [Lvl. "..txt.."+]" then
            v.Done:FireServer()
        elseif txt == "80" and v:IsA("Model") and v.HumanoidRootPart.CFrame == CFrame.new(-326.287964, 67.1231995, -131.777573, -0.0871315002, 0, -0.996196866, 0, 1, 0, 0.996196866, 0, -0.0871315002) then
            v.Done:FireServer()
        end
    end
end)

t3s1:NewButton("go to gang wars matchtaking", "get trolled level cap", function()
    game:GetService("TeleportService"):Teleport(12725290692, localplr)
end)

t3s1:NewButton("join random", "lol spam", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PartyAction"):FireServer("JoinRandom")
end)

t3s1:NewButton("invite everyone to party", "lol spam", function()
    for i,v in pairs(game.Players:GetPlayers()) do
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PartyAction"):FireServer("Invite",v.Name)
    end
end)

t3s1:NewButton("kick everyone from party", "lol trolled", function()
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= localplr then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PartyAction"):FireServer("Kick",v.Name)
        end
    end
end)

t3s2:NewButton([[claim "reward"]], "lol trolled devs", function()
    game:GetService("ReplicatedStorage"):WaitForChild("GameModeEvents"):WaitForChild("ClaimReward"):FireServer()
end)

t3s2:NewToggle("hog point a", "hogs the point making the opposing team very mad", function(state)
    local point = "A"
    if state then
        getgenv().autopointa = true
        nofallplatform.CanCollide = true
        savedgangwarsspot = CFrame.new(localplr.Character.HumanoidRootPart.Position)
        while getgenv().autopointa do
            wait()
            if getgenv().autopointa and localplr.Character ~= nil and localplr.Character:FindFirstChild("HumanoidRootPart") then
                localplr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Points[point].CFrame * CFrame.new(math.random(-8.75,8.75),hogheight+3,math.random(-8.75,8.75))
                nofallplatform.Position = localplr.Character.HumanoidRootPart.Position - Vector3.new(0,3,0)
            end
        end
    else
        getgenv().autopointa = false
        nofallplatform.CanCollide = false
        repeat localplr.Character.HumanoidRootPart.CFrame = savedgangwarsspot until localplr.Character.HumanoidRootPart.CFrame == savedgangwarsspot
    end
end)

t3s2:NewToggle("hog point b", "hogs the point making the opposing team very mad", function(state)
    local point = "B"
    if state then
        getgenv().autopointb = true
        nofallplatform.CanCollide = true
        savedgangwarsspot = CFrame.new(localplr.Character.HumanoidRootPart.Position)
        while getgenv().autopointb do
            wait()
            if getgenv().autopointb and localplr.Character ~= nil and localplr.Character:FindFirstChild("HumanoidRootPart") then
                localplr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Points[point].CFrame * CFrame.new(math.random(-8.75,8.75),hogheight+3,math.random(-8.75,8.75))
                nofallplatform.Position = localplr.Character.HumanoidRootPart.Position - Vector3.new(0,3,0)
            end
        end
    else
        getgenv().autopointb = false
        nofallplatform.CanCollide = false
        repeat localplr.Character.HumanoidRootPart.CFrame = savedgangwarsspot until localplr.Character.HumanoidRootPart.CFrame == savedgangwarsspot
    end
end)

t3s2:NewToggle("hog point c", "hogs the point making the opposing team very mad", function(state)
    local point = "C"
    if state then
        getgenv().autopointc = true
        nofallplatform.CanCollide = true
        savedgangwarsspot = CFrame.new(localplr.Character.HumanoidRootPart.Position)
        while getgenv().autopointc do
            wait()
            if getgenv().autopointc and localplr.Character ~= nil and localplr.Character:FindFirstChild("HumanoidRootPart") then
                localplr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Points[point].CFrame * CFrame.new(math.random(-8.75,8.75),hogheight+3,math.random(-8.75,8.75))
                nofallplatform.Position = localplr.Character.HumanoidRootPart.Position - Vector3.new(0,3,0)
            end
        end
    else
        getgenv().autopointc = false
        nofallplatform.CanCollide = false
        repeat localplr.Character.HumanoidRootPart.CFrame = savedgangwarsspot until localplr.Character.HumanoidRootPart.CFrame == savedgangwarsspot
    end
end)

t3s2:NewSlider("hog height", "height to hog (i recommend 13)", 200, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    hogheight = s
end)

t3s2:NewTextBox("hog height", "height to hog (i recommend 13)", function(txt)
	hogheight = tonumber(txt)
end)

t4s1:NewToggle("auto show hitbox", "toggles to show hitbox or not", function(state)
    if state then
        showhitbox = game.Workspace.Hitboxes.ChildAdded:Connect(function(child)
            if child:IsA("BasePart") then
                child.Transparency = 0.5
            end
        end)
    else
        showhitbox:Disconnect()
    end
end)

t4s1:NewToggle("auto no ragdoll/bypass paralyze+timestop", "toggles to delete ragdoll or not", function(state)
    if state then
        if game.Players.LocalPlayer.Character ~= nil then
            local char = game.Players.LocalPlayer.Character
            char:WaitForChild("Ragdoll",math.huge):Destroy()
            char:WaitForChild("Humanoid",math.huge)
            char:WaitForChild("Head",math.huge)
            char.Humanoid.PlatformStand = false
            if char.Head.Anchored == true then
                char.Head.Anchored = false
                for i,v in pairs(char:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.Anchored = false
                    end
                end
            end
            noplatformstand = char.Humanoid:GetPropertyChangedSignal("PlatformStand"):Connect(function()
                char.Humanoid.PlatformStand = false
            end)
            char:WaitForChild("LeftFoot",math.huge)
            char:WaitForChild("LeftHand",math.huge)
            char:WaitForChild("LeftLowerArm",math.huge)
            char:WaitForChild("LeftLowerLeg",math.huge)
            char:WaitForChild("LeftUpperArm",math.huge)
            char:WaitForChild("LeftUpperLeg",math.huge)
            char:WaitForChild("RightFoot",math.huge)
            char:WaitForChild("RightHand",math.huge)
            char:WaitForChild("RightLowerArm",math.huge)
            char:WaitForChild("RightLowerLeg",math.huge)
            char:WaitForChild("RightUpperArm",math.huge)
            char:WaitForChild("RightUpperLeg",math.huge)
            char:WaitForChild("HumanoidRootPart",math.huge)
            char:WaitForChild("UpperTorso",math.huge)
            char:WaitForChild("LowerTorso",math.huge)
            for i,v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    table.insert(partsonconnect,v:GetPropertyChangedSignal("Anchored"):Connect(function()
                        if v.Anchored == true then
                            v.Anchored = false
                        end
                    end))
                end
            end
        end
        oncharadded = localplr.CharacterAdded:Connect(function(char)
            char:WaitForChild("Ragdoll",math.huge):Destroy()
            char:WaitForChild("Humanoid",math.huge)
            char:WaitForChild("Head",math.huge)
            noplatformstand = char.Humanoid:GetPropertyChangedSignal("PlatformStand"):Connect(function()
                char.Humanoid.PlatformStand = false
            end)
            char:WaitForChild("LeftFoot",math.huge)
            char:WaitForChild("LeftHand",math.huge)
            char:WaitForChild("LeftLowerArm",math.huge)
            char:WaitForChild("LeftLowerLeg",math.huge)
            char:WaitForChild("LeftUpperArm",math.huge)
            char:WaitForChild("LeftUpperLeg",math.huge)
            char:WaitForChild("RightFoot",math.huge)
            char:WaitForChild("RightHand",math.huge)
            char:WaitForChild("RightLowerArm",math.huge)
            char:WaitForChild("RightLowerLeg",math.huge)
            char:WaitForChild("RightUpperArm",math.huge)
            char:WaitForChild("RightUpperLeg",math.huge)
            char:WaitForChild("HumanoidRootPart",math.huge)
            char:WaitForChild("UpperTorso",math.huge)
            char:WaitForChild("LowerTorso",math.huge)
            for i,v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    table.insert(partsonconnect,v:GetPropertyChangedSignal("Anchored"):Connect(function()
                        if v.Anchored == true then
                            v.Anchored = false
                        end
                    end))
                end
            end
        end)
    else
        noplatformstand:Disconnect()
        oncharadded:Disconnect()
        for i,v in pairs(partsonconnect) do
            v:Disconnect()
        end
    end
end)

t4s1:NewToggle("auto delete username display", "toggles to delete username display or not", function(state)
    if state then
        local char = game.Players.LocalPlayer.Character
        char:WaitForChild("Head",math.huge)
        char.Head:WaitForChild("HealthGui",math.huge)
        usergui = char.Head.HealthGui
        usergui.Locked = false
        usergui:Destroy()
        oncharadded2 = localplr.CharacterAdded:Connect(function(char)
            char:WaitForChild("Head",math.huge)
            char.Head:WaitForChild("HealthGui",math.huge)
            usergui = char.Head.HealthGui
            usergui.Locked = false
            usergui:Destroy()
        end)
    else
        oncharadded2:Disconnect()
    end
end)

t4s1:NewButton("sell ketchup", "sell ketchup", function()
    game:GetService("ReplicatedStorage").Events.SellKetchup:FireServer("Lots")
end)

t4s1:NewButton("goto inner sanctum", "inner sanctum", function()
    for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetChildren()) do
        if v:FindFirstChild("Head") and v.Head:FindFirstChild("Sub") and v.Head.Sub.Text.Text == "Inner Sanctum" then
            v.Done:FireServer()
        end
    end
end)

t4s1:NewButton("start homeless man quest", "get trolled level cap", function()
    game:GetService("Workspace").Map.NPCs["Homeless NPC"].Done:FireServer()
    game:GetService("Workspace").Map.NPCs["Homeless NPC"].QuestDone:FireServer()
end)

t4s1:NewButton("use item", "aw level cap caught up", function()
    if localplr.Character:FindFirstChildWhichIsA("Tool") then
        localplr.Character:FindFirstChildWhichIsA("Tool").Use:FireServer()
    end
end)

t4s1:NewButton("save position","saves position", function()
    savedpos = localplr.Character.HumanoidRootPart.Position
end)

t4s1:NewButton("tp to position","tp's to position", function()
    localplr.Character.HumanoidRootPart.CFrame = CFrame.new(savedpos)
end)

for i,v in pairs(game.CoreGui:GetChildren()) do
    if string.len(v.Name) <= 9 and string.len(v.Name) >= 3 and string.find(v.Name,"1") or string.find(v.Name,"2") or string.find(v.Name,"3") or string.find(v.Name,"4") or string.find(v.Name,"5") or string.find(v.Name,"6") or string.find(v.Name,"7") or string.find(v.Name,"8") or string.find(v.Name,"9") then
        for i,v in pairs(v.Main.pages.Pages.Page:GetChildren()) do
            if v:IsA("Frame") then
                for i,v in pairs(v.sectionInners:GetChildren()) do
                    if v.Name == "label" then
                        v.TextScaled = true
                    end
                end
            end
        end
    end
end

for i,v in pairs(game.ReplicatedStorage.StandNameConvert:GetChildren()) do
    if not standnames[v.Name] and v:IsA("StringValue") then
        standnames[v.Name] = v.Name
    end
end
for i,v in pairs(game.Workspace.Living:GetChildren()) do
    if not game.Players:GetPlayerFromCharacter(v) then
        table.insert(npcnames,v.Name)
    end
end
npcdropdown:Refresh(npcnames)
local onnpcspawn = game.Workspace.Living.ChildAdded:Connect(function(v)
    if not game.Players:GetPlayerFromCharacter(v) then
        table.insert(npcnames,v.Name)
        npcdropdown:Refresh(npcnames)
    end
end)

local onnpcdespawn = game.Workspace.Living.ChildRemoved:Connect(function(v)
    if not game.Players:GetPlayerFromCharacter(v) then
        local alreadydeleted = false
        for i2,v2 in pairs(npcnames) do
            if v.Name == v2 and alreadydeleted == false then
                alreadydeleted = true
                table.remove(npcnames,i2)
            end
        end
        npcdropdown:Refresh(npcnames)
    end
end)

local del = false

local whendelfunc = gui.Destroying:Connect(function()
    del = true
end)

standdrpdwn:Refresh(standnames)
if not isfile("specitemfarm.txt") then
    writefile("specitemfarm.txt","")
end
if not isfile("specstandfarm.txt") then
    writefile("specstandfarm.txt","")
end
if not isfile("specattfarm.txt") then
    writefile("specattfarm.txt","")
end
if not isfile("itemsnotif.txt") then
    writefile("itemsnotif.txt","")
end
if isfile("specitemfarm.txt") and readfile("specitemfarm.txt") ~= "" then
    specitemfarm = jsonservice:JSONDecode(readfile("specitemfarm.txt"))
end
if isfile("specstandfarm.txt") and readfile("specstandfarm.txt") ~= "" then
    specstandfarm = jsonservice:JSONDecode(readfile("specstandfarm.txt"))
end
if isfile("specattfarm.txt") and readfile("specattfarm.txt") ~= "" then
    specattfarm = jsonservice:JSONDecode(readfile("specattfarm.txt"))
end
if isfile("itemsnotif.txt") and readfile("itemsnotif.txt") ~= "" then
    itemsnotif = jsonservice:JSONDecode(readfile("itemsnotif.txt"))
end
refreshtexts()
print("Finished!")

repeat wait() until del == true
print("script ending..")
if showhitbox ~= nil then
    showhitbox:Disconnect()
    print("Disconnected show hitbox")
end
if autocollectfunc ~= nil then
    autocollectfunc:Disconnect()
    print("Disconnected auto collect")
end
chatfunc:Disconnect()
print("Disconnected chat func")
autodeleteragdoll:Disconnect()
print("Disconnected auto delete ragdoll")
notifyondisconnectfunc:Disconnect()
print("Disconnected notify on disconnect func")
onnpcspawn:Disconnect()
print("Disconnected on npc spawn")
onnpcdespawn:Disconnect()
print("Disconnected on npc despawn")
if noplatformstand ~= nil then
    noplatformstand:Disconnect()
    print("Disconnected no platform stand")
end
if oncharadded ~= nil then
    oncharadded:Disconnect()
    print("Disconnected oncharadded")
end
for i,v in pairs(partsonconnect) do
    print("Disconnected when part anchored")
    v:Disconnect()
end
getgenv().autocollect = false
getgenv().farmstands = false
getgenv().autointeract = false
getgenv().autokillnpc = false
getgenv().autopointa = false
getgenv().autopointb = false
getgenv().autopointc = false
print("Set all getgenv()s' to false")
-- https://www.roblox.com/games/1526094849/Build-an-Obby
local autowhitelistfriends = false
local prefix = "."
local prefix2 = "."
local delaybeforedelete = 1
local successmessage = "Success"
local whitelistmessage = "You have been whitelisted, do "..prefix2.."cmds for the cmds"
local autowhitelistmessage = "You have been automatically whitelisted, do "..prefix2.."cmds for the cmds"
local unwhitelistmessage = "Admin has ended, wait for the owner to re-whitelist you."
local canwhitelistmessage = "You have been granted permission to whitelist/unwhitelist anyone!"
local costmoney = false
local enablerconsole = false
local usedobbies = {}
local press2kill = false
local press4obby = false
local inputbegan


local localplr = game.Players.LocalPlayer
local wl = {}
local otherplrmessage
local localplrmessage
local cmds = {}
local cmddesc = {}
cmddesc["premadeobbies"] = "ladder, free money obby v2, free money obby v2 (20 obby version), free money obby, ladder, bruh"
local localplrtable = {}
local supportgetgenv = false
local supportfiles = false
local supportsrconsole = false
function notify(title,text)
    if text then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title=title,Text=text})
    else
        game:GetService("StarterGui"):SetCore("SendNotification",{Title=title,Text=title})
    end
end
notify("Starting Script..")
local premadeobbies = {}
premadeobbies["alexobby"] = workspace.TyleObbys.Alexobby.end1
premadeobbies["vid_boy"] = workspace.TyleObbys["Vid_Boy"].vidboy.End
premadeobbies["blue_cave"] = workspace.TyleObbys["Blue_Cave"]["Blue_cave"].End
premadeobbies["lemon_obby"] = workspace.TyleObbys["lemon_Obby"]["Lemon Obby"].Finnish
premadeobbies["cyber obby"] = game:GetService("Workspace").TyleObbys["Cyber Obby"]["Cyber Obby"]["End! (Needs to be scripted!)"]
premadeobbies["skechobby"] = game:GetService("Workspace").TyleObbys.skechobby.end1
premadeobbies["denisobby"] = game:GetService("Workspace").TyleObbys.denisobby.end1
premadeobbies["subobby"] = game:GetService("Workspace").TyleObbys.SubObby.end1
premadeobbies["hacker obby"] = game:GetService("Workspace").FireObbys["Hacker Obby"].Finish
premadeobbies["mountain obby"] = game:GetService("Workspace").FireObbys["Mountain Obby"].Finish
premadeobbies["lazer obby"] = game:GetService("Workspace").FireObbys["Lazer Obby"].Finish
premadeobbies["lava obby"] = game:GetService("Workspace").FireObbys["Lava Obby"].Finish
premadeobbies["blueaura obby"] = game:GetService("Workspace").FireObbys["BlueAura Obby"].Finish

function endfunc()
    print(endfunc)
end
function add()
    print(add)
end
function updatewhitelistmessage()
    whitelistmessage = "You have been whitelisted, do "..prefix2.."cmds for the cmds"
    autowhitelistmessage = "You have been automatically whitelisted, do "..prefix2.."cmds for the cmds"
    if supportgetgenv then
        getgenv().whitelistmessage = whitelistmessage
        getgenv().autowhitelistmessage = autowhitelistmessage
    end
end
function splittext(txt)
    local txttable = {}
    if string.len(txt) < 175 then
        return {txt}
    else
        repeat
            wait()
            local str = string.sub(txt,1,175)
            table.insert(txttable,str)
            txt = string.sub(txt,176)
        until string.len(txt) < 175
        table.insert(txttable,txt)
        return txttable
    end
end
local success,err = pcall(function()
    if typeof(getgenv()) == "table" then
        supportgetgenv = true
    end
end)
local success,err = pcall(function()
    if typeof(appendfile) == "function" and typeof(writefile) == "function" then
        supportfiles = true
    end
end)
local success,err = pcall(function()
    if typeof(rconsoleprint) == "function" then
        supportsrconsole = true
    end
end)
if supportgetgenv then
    if getgenv().endfunc then
        notify("Closing out of other script..")
        getgenv().endfunc()
    end
    if getgenv().prefix then
        prefix = getgenv().prefix
    end
    getgenv().prefix = prefix
    if getgenv().prefix2 then
        prefix2 = getgenv().prefix2
        updatewhitelistmessage()
    end
    getgenv().prefix2 = prefix2
    if getgenv().costmoney then
        costmoney = getgenv().costmoney
    end
    getgenv().costmoney = costmoney
    if getgenv().farmlevels then
        farmlevels = getgenv().farmlevels
    end
    getgenv().enablerconsole = enablerconsole
    if getgenv().enablerconsole then
        enablerconsole = getgenv().enablerconsole
    end
    getgenv().enablerconsole = enablerconsole
    if getgenv().whitelistmessage then
        whitelistmessage = getgenv().whitelistmessage
    end
    getgenv().whitelistmessage = whitelistmessage
    if getgenv().unwhitelistmessage then
        unwhitelistmessage = getgenv().unwhitelistmessage
    end
    getgenv().unwhitelistmessage = unwhitelistmessage
    if getgenv().canwhitelistmessage then
        canwhitelistmessage = getgenv().canwhitelistmessage
        getgenv().canwhitelistmessage = canwhitelistmessage
    end
    getgenv().canwhitelistmessage = canwhitelistmessage
    if getgenv().autowhitelistfriends then
        autowhitelistfriends = getgenv().autowhitelistfriends
    end
    getgenv().autowhitelistfriends = autowhitelistfriends
    if getgenv().autowhitelistmessage then
        autowhitelistmessage = getgenv().autowhitelistmessage
    end
    getgenv().autowhitelistmessage = autowhitelistmessage
end
if supportfiles then
    add = function(strings,file)
        appendfile(file,tostring(strings))
        appendfile(file,[[
    
    ]])
    end
    writefile("buildanobbystats.lua","")
end
if supportsrconsole and enablerconsole then
    rconsoleclear()
    rconsolename("Build an Obby")
    rconsoleprint("@@LIGHT_BLUE@@")
rconsoleprint([[
Credits: https://www.youtube.com/watch?v=B87hxW_vMJI
some part of the whitelist section by infinite yield

Current Cmds:

end (no prefix) - ends the whole thing

]])
else
print([[
Credits: https://www.youtube.com/watch?v=B87hxW_vMJI
some part of the whitelist section by infinite yield

Current Cmds:

end (no prefix) - ends the whole thing

]])
end
function sayto(plrname,text)
    print(plrname,text)
    if plrname == localplr.Name then
        notify(text)
    else
        print("/w "..plrname.." "..text)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..plrname.." "..text,"All")
    end
end
function success(plrname,text)
    if plrname:lower() == localplr.Name:lower() then
        if text then
            notify(successmessage,text)
        else
            notify(successmessage)
        end
    else
        sayto(plrname,successmessage)
    end
end
function makecmd(cmdname,description,whitelist,needsargs,func)
    cmds[cmdname] = {whitelist,needsargs,func}
    cmddesc[cmdname] = description
end
function findobj(txt,parent)
    for i,v in pairs(parent:GetChildren()) do
        if v.Name:lower() == txt then
            return v
        end
    end
    for i,v in pairs(parent:GetChildren()) do
        if string.sub(v.Name,1,string.len(txt)) == txt then
            return v
        end
    end
    for i,v in pairs(parent:GetChildren()) do
        if string.find(v.Name:lower(),txt:lower()) then
            return v
        end
    end
    return false
end
function getplayer(txt,player)
    if not txt or not player then return nil end
    if txt == "all" then
        return game.Players:GetPlayers()
    elseif txt == "others" then
        local plrs = {}
        for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= player then
                table.insert(plrs,v)
            end
        end
        return plrs
    elseif txt == "me" then
        return player
    elseif txt == "random" then
        return game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())]
    else
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower() == txt then
                return v
            end
        end
        for i,v in pairs(game.Players:GetPlayers()) do
            if string.sub(v.Name,1,string.len(txt)) == txt then
                return v
            end
        end
        for i,v in pairs(game.Players:GetPlayers()) do
            if string.find(v.Name,txt) then
                return v
            end
        end
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.DisplayName:lower() == txt then
                return v
            end
        end
        for i,v in pairs(game.Players:GetPlayers()) do
            if string.sub(v.DisplayName,1,string.len(txt)) == txt then
                return v
            end
        end
        for i,v in pairs(game.Players:GetPlayers()) do
            if string.find(v.DisplayName,txt) then
                return v
            end
        end
    end
    return nil
end
function combineargs(args)
    for i,v in pairs(args) do
        if i > 1 then
            args[1] = args[1].." "..v
        end
    end
    return args
end
function findobby()
    local obbies = {}
    for i,v in pairs(workspace.Terrain.Obbyplot:GetChildren()) do
        if not usedobbies[v.Name] and v:FindFirstChild("Obby") and #v.Obby:GetChildren() < v.values.maxobbys.Value-1 then
            obbies[v.Name] = #v.Obby:GetChildren()
        end
    end
    local best = nil
    for i,v in pairs(obbies) do
        if not best then
            best = {i,v}
        elseif best and best[2] > v then
            best = {i,v}
        end
    end
    if best then
        return best[1]
    end
    return nil
end
function placeobbypos(pos,obby)
    local plrobby = findobby()
    if plrobby then
        usedobbies[plrobby] = true
        local plrobbyinst = workspace.Terrain.Obbyplot[plrobby]
        local amount = #plrobbyinst.Obby:GetChildren()
        if amount == 0 then
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(obby,plrobby,0,0,-5,costmoney)
        end
        local nextobbypos = Vector3.new(0,0,0)
        local biggestid = 0
        for i,v in pairs(plrobbyinst.Obby:GetChildren()) do
            if v.ID.Value > biggestid then
                biggestid = v.ID.Value
                nextobbypos = v:GetPivot().Position
            end
        end
        if nextobbypos ~= Vector3.new(0,0,0) then
            local obbysize = game.ReplicatedStorage.obys[obby]:GetExtentsSize()
            nextobbypos += Vector3.new(obbysize)
            local diff = (nextobbypos - pos).Magnitude
            local lookat = CFrame.lookAt(nextobbypos,pos)
            lookat -= lookat.Position
            lookat += Vector3.new(0,0,obbysize.Z*1.35)
            lookat *= CFrame.new(0,0,-diff)
            local finalpos = lookat.Position
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(obby,plrobby,finalpos.X,finalpos.Y,finalpos.Z,costmoney)
            delay(delaybeforedelete,function()
                game:GetService("ReplicatedStorage").removeobby:InvokeServer((#game.Workspace.Terrain.Obbyplot[plrobby].Obby:GetChildren()),plrobby,0,0,-5,true)
                game:GetService("ReplicatedStorage").removeobby:InvokeServer((#game.Workspace.Terrain.Obbyplot[plrobby].Obby:GetChildren()),plrobby,0,0,-5,true)
                usedobbies[plrobby] = nil
            end)
        else
            usedobbies[plrobby] = nil
        end
    end
end
function killplr(playertokill)
    local char
    if not playertokill.Character then
        char = playertokill.CharacterAdded:Wait()
    else
        char = playertokill.Character
    end
    char:WaitForChild("HumanoidRootPart",math.huge)
    local pos = char.HumanoidRootPart.Position
    placeobbypos(pos,"chocolate20")
end
--[[function getplayerwhitelisted(txt,player) unused
    local plrs = getplayer(txt,player)
    if typeof(plrs) == "table" then
        local newplrs = {}
        for i,v in pairs(plrs) do
            if wl[plrs.Name] then
                table.insert(newplrs,v)
            end
        end
    else
        if wl[plrs.Name] then
            return plrs
        end
    end
    return nil
end]]
function getplrtable(plr)
    if plr ~= localplr.Name then
        return wl[plr]
    else
        return localplrtable
    end
    return nil
end
makecmd("selectplrobby","Selects a player's obby by its color. Example: selectplrobby Red",true,true,function(plr,args)
    args = combineargs(args)
    local obby = findobj(args[1],workspace.Terrain.Obbyplot)
    local plrtable = getplrtable(plr)
    if obby and plrtable then
        plrtable.plrobby = obby.Name
        success(plr,obby:GetFullName())
    end
end)
makecmd("selectobby","Selects an obby you can build, Example: selectobby Golden Goat Troll",true,true,function(plr,args)
    args = combineargs(args)
    local obby = findobj(args[1],game.ReplicatedStorage.obys)
    local plrtable = getplrtable(plr)
    if obby and plrtable then
        plrtable.obby = obby.Name
        success(plr,obby:GetFullName())
    end
end)
makecmd("buildobby","Build the obby, You need to have used selectobby and selectplrobby.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.plrobby and plrtable.obby then
        game:GetService("ReplicatedStorage").buildobby:InvokeServer(plrtable.obby,plrtable.plrobby,0,0,-5,costmoney)
        success(plr)
    end
end)
makecmd("selectxyz","Select an x,y,z by number, Example: selectxyz 1 1 1",true,true,function(plr,args)
    local plrtable = getplrtable(plr)
    if args[1] and args[2] and args[3] and not string.find(args[1],"#") and not string.find(args[2],"#") and not string.find(args[3],"#") then
        plrtable.x,plrtable.y,plrtable.z = args[1],args[2],args[3]
        success(plr)
    end
end)
makecmd("buildobbyxyz","Build the obby using x,y,z, You need to have used selectobby, selectplrobby, and selectxyz.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.x and plrtable.y and plrtable.z then
        game:GetService("ReplicatedStorage").buildobby:InvokeServer(plrtable.obby,plrtable.plrobby,plrtable.x,plrtable.y,plrtable.z,costmoney)
        success(plr)
    end
end)
makecmd("whitelist","The whitelist command. Example: whitelist AreYouMental110",true,true,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable ~= localplrtable then
        if not plrtable.canwhitelist then
            return
        end
    end
    local plr2 = getplayer(args[1],plr)
    if plr2 then
        local successful = false
        if typeof(plr2) == "table" then
            for i,v in pairs(plr2) do
                if not wl[v.Name] then
                    sayto(v.Name,whitelistmessage)
                    wl[v.Name] = {}
                end
            end
            successful = true
        else
            if not wl[plr2.Name] then
                sayto(plr2.Name,whitelistmessage)
                wl[plr2.Name] = {}
                successful = true
            else
                notify("Already whitelisted "..plr2.Name.."!")
            end
        end
        if successful then
            success(plr)
        end
    end
end)
makecmd("unwhitelist","The Unwhitelist command. Example: unwhitelist AreYouMental110",true,true,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable ~= localplrtable then
        if not plrtable.canwhitelist then
            return
        end
    end
    local plr2 = getplayer(args[1],plr)
    if plr2 then
        local successful = false
        if typeof(plr2) == "table" then
            for i,v in pairs(plr2) do
                if wl[v.Name] then
                    sayto(v.Name,unwhitelistmessage)
                    wl[v.Name] = nil
                end
            end
            successful = true
        else
            if wl[plr2.Name] then
                sayto(plr2.Name,unwhitelistmessage)
                wl[plr2.Name] = nil
                successful = true
            end
        end
        if successful then
            success(plr)
        end
    end
end)
makecmd("canwhitelist","Makes a person able to whitelist/unwhitelist, Example: canwhitelist AreYouMental110",false,true,function(plr,args)
    local plrs = getplayer(args[1],plr)
    if plrs then
        if typeof(plrs) == "table" then
            for i,v in pairs(plrs) do
                local plrtable = getplrtable(v.Name)
                if plrtable then
                    plrtable.canwhitelist = true
                    sayto(v.Name,canwhitelistmessage)
                else
                    wl[v.Name] = {}
                    wl[v.Name].canwhitelist = true
                    sayto(v.Name,canwhitelistmessage)
                end
            end
            success(plr)
        else
            local plrtable = getplrtable(plrs.Name)
            if plrtable then
                plrtable.canwhitelist = true
                sayto(plrs.Name,canwhitelistmessage)
                success(plr)
            else
                wl[plrs.Name] = {}
                wl[plrs.Name].canwhitelist = true
                sayto(plrs.Name,canwhitelistmessage)
                success(plr)
            end
        end
    end
end)
makecmd("deletefirstobby","Deletes the first obby. You need to have used selectplrobby for this.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.plrobby then
        game:GetService("ReplicatedStorage").removeobby:InvokeServer(1,plrtable.plrobby,0,0,-5,true)
        success(plr)
    end
end)
makecmd("deletelastobby","Deletes the last obby. You need to have used selectplrobby for this.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.plrobby then
        game:GetService("ReplicatedStorage").removeobby:InvokeServer((#game.Workspace.Terrain.Obbyplot[plrtable.plrobby].Obby:GetChildren()),plrtable.plrobby,0,0,-5,true)
        success(plr)
    end
end)
makecmd("deleteplrobby","Deletes the whole obby. You need to have used selectplrobby for this.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.plrobby then
        repeat
            wait(.1)
            game:GetService("ReplicatedStorage").removeobby:InvokeServer((#game.Workspace.Terrain.Obbyplot[plrtable.plrobby].Obby:GetChildren()),plrtable.plrobby,0,0,-5,true)
        until (#game.Workspace.Terrain.Obbyplot[plrtable.plrobby].Obby:GetChildren()) <= 0
        success(plr)
    end
end)
makecmd("winobby","Win's the obby, Example: winobby Red",false,true,function(plr,args)
    args = combineargs(args)
    local plrobby = findobj(args[1],game.Workspace.Terrain.Obbyplot)
    if plrobby then
        for i,v in pairs(plrobby:GetChildren()) do
            if v:IsA("Model") then
                if v.Name ~= "looks" and v.Name ~= "finish_race" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.money.CFrame
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.money, 0)
                elseif v.Name == "finish_race" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.finishline.CFrame
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.finishline, 0)
                end
            end
        end
        success(plr)
    end
end)
makecmd("buildrandomobby","Builds a random obby, You need to have used selectplrobby for this.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.plrobby then
        game:GetService("ReplicatedStorage").buildobby:InvokeServer(game.ReplicatedStorage.obys:GetChildren()[math.random(1,#game.ReplicatedStorage.obys:GetChildren())].Name,plrtable.plrobby,0,0,-5,costmoney)
        success(plr)
    end
end)
makecmd("setfinish","Sets the obby's Finish, You need to have used selectplrobby for this, Example: setfinish 4M_Visits",true,true,function(plr,args)
    args = combineargs(args)
    local finish = findobj(args[1],game.ReplicatedStorage["obby_Finish"])
    local plrtable = getplrtable(plr)
    if finish and plrtable.plrobby then
        game:GetService("ReplicatedStorage").Finishf:InvokeServer(plrtable.plrobby,finish.Name)
        success(plr)
    end
end)
makecmd("setsongid","Sets the song id but it may be censored, You need to have used selectplrobby for this, Example: setsongid 142376088",true,true,function(plr,args)
    args = combineargs(args)
    local plrtable = getplrtable(plr)
    if finish and plrtable.plrobby then
        game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,args[1],"sound")
        success(plr)
    end
end)
makecmd("setplrobbyname","Sets the player obby's Name, You need to have used selectplrobby for this, Example: setplrobbyname TEST",true,true,function(plr,args)
    args = combineargs(args)
    local plrtable = getplrtable(plr)
    if finish and plrtable.plrobby then
        game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,args[1],"Newname")
        success(plr)
    end
end)
makecmd("makeobby","Makes a premade obby for you, You need selectplrobby for this, If you are looking for the premade obby names, do 'help premadeobbies', Example: makeobby ladder",true,true,function(plr,args)
    args = combineargs(args)
    local plrtable = getplrtable(plr)
    local txt = args[1]:lower()
    if plrtable.plrobby then
        if txt == "free money obby" then
            local args
            args = {"Golden Goat Troll",plrtable.plrobby,0,20,54.275516510009766,costmoney}
            for i=1,10 do
                game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            end
            args = {"Race checkpoint",plrtable.plrobby,0,-179,17.275516510009766,costmoney}
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            game:GetService("ReplicatedStorage").Finishf:InvokeServer(plrtable.plrobby,"4M_Views")
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"\240\159\164\145 \240\159\164\145\240\159\164\145 \240\159\164\145\240\159\164\145 \240\159\164\145\240" .."\159\164\145\240\159\164\145 \240\159\164\145 \240\159\164\145 \240\159\164\145 \240" .."\159\164\145\240\159\164\145 \240\159\164\145\240\159\164\145 \240\159\164\145\240\159" .."\164\145\240\159\164\145 \240\159\164\145 \240\159\164\145 \240\159\164\145 \240\159\164" .."\145\240\159\164\145 \240\159\164\145\240\159\164\145 \240\159\164\145\240\159\164\145" .."\240\159\164\145 \240\159\164\145 \240\159\164\145 \240\159\164\145 \240\159\164\145" .."\240\159\164\145 \240\159\164\145\240\159\164\145 \240\159\164\145\240\159\164\145\240" .."\159\164\145 \240\159\164\145 \240\159\164\145 \240\159\164\145 \240\159\164\145\240\159" .."\164\145 \240\159\164\145\240\159\164\145 \240\159\164\145\240\159\164\145\240\159\164" .."\145 \240\159\164\145 \240\159\164\145","Newname")
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"rainbowblocks","Sky")
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"142376088","sound")
            success(plr)
        elseif txt == "free money obby v2" then
            local args
            args = {"Golden Goat Troll",plrtable.plrobby,0,1,49.275516510009766,costmoney}
            for i=1,9 do
                game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            end
            args[4] = 0
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            game:GetService("ReplicatedStorage").buildobby:InvokeServer("Grass Checkpoint",plrtable.plrobby,0,-8,75,costmoney)
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"rainbowblocks","Sky")
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"142376088","sound")
            game:GetService("ReplicatedStorage").Finishf:InvokeServer(plrtable.plrobby,"4M_Views")
            success(plr)
        elseif txt == "free money obby v2 (20 obby ver)" or txt == "free money obby v2 (20 obby version)" then
            local args
            args = {"Golden Goat Troll",plrtable.plrobby,0,1,49.275516510009766,costmoney}
            for i=1,9 do
                game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            end
            args[4] = 0
            for i=1,11 do
                game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            end
            game:GetService("ReplicatedStorage").buildobby:InvokeServer("Grass Checkpoint",plrtable.plrobby,0,-8,75,costmoney)
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"rainbowblocks","Sky")
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"142376088","sound")
            game:GetService("ReplicatedStorage").Finishf:InvokeServer(plrtable.plrobby,"4M_Views")
            success(plr)
        elseif txt == "sus" or txt == "bruh" then
            local args
            args = {"Golden Goat Troll",plrtable.plrobby,0,0,-5,costmoney}
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            args[3] = 18.002552032470703
            args[4] = 10
            args[5] = 54.275516510009766
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            args[3] = 0
            args[4] = 2
            args[5] = 49.275516510009766
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            args[3] = 18.002552032470703
            args[4] = -2
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            args[3] = 0
            args[4] = 4
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            args[3] = 18.002552032470703
            args[4] = -16
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            args[3] = 0
            args[4] = 2
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            success(plr)
        elseif txt == "ladder" then
            local args = {"Race checkpoint",plrtable.plrobby,0,0,0,costmoney}
            game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            args[1] = "Golden Goat Troll"
            args[5] = -5
            for i=1,9 do
                game:GetService("ReplicatedStorage").buildobby:InvokeServer(unpack(args))
            end
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"rainbowblocks","Sky")
            game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"142376088","sound")
            success(plr)
        end
    end
end)
makecmd("gettrails","Get every trail in the game, Lasts before you leave.",false,false,function(plr,args)
    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.menu.Trails.Frame["trails_frames"]:GetChildren()) do
        if v:IsA("ImageLabel") then 
            v.Visible = true
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.menu.Trails.trails:GetChildren()) do
        if v:IsA("BoolValue") then
            v.Value = true
        end
    end
    success(plr)
end)
makecmd("unlockallobbies","Unlocks every player's obbies.",true,false,function(plr,args)
    for i,v in pairs(workspace.Terrain.Obbyplot:GetChildren()) do
        game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(v.Name,"unlock","door")
    end
    success(plr)
end)
makecmd("lockallobbies","Locks every player's obbies.",true,false,function(plr,args)
    for i,v in pairs(workspace.Terrain.Obbyplot:GetChildren()) do
        game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(v.Name,"lock","door")
    end
    success(plr)
end)
makecmd("unlockobby","Unlocks the player's obby, You need to have used selectplrobby for this.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.plrobby then
        game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"unlock","door")
        success(plr)
    end
end)
makecmd("lockobby","Locks the player's obby, You need to have used selectplrobby for this.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.plrobby then
        game:GetService("ReplicatedStorage").tylergoatboyrtp:InvokeServer(plrtable.plrobby,"lock","door")
        success(plr)
    end
end)
makecmd("listallobbystats","Lists all the obby's stats and puts them in a file.",false,false,function(plr,args)
    if not supportfiles then return end
    for i,v in pairs(game:GetService("ReplicatedStorage").obys:GetChildren()) do
        if v:IsA("Model") then
            add(v.Name,"buildanobbystats.lua")
            add("Gives: "..tostring(v.mps.Value),"buildanobbystats.lua")
            add("Cost: "..tostring(v.Price.Value),"buildanobbystats.lua")
            add("Size: "..tostring(v:GetExtentsSize()),"buildanobbystats.lua")
            add("-----------------------------------------------------","buildanobbystats.lua")
        end
    end
    success(plr)
end)
makecmd("showobbygui","Shows an obby gui, Example: showobbygui Troll_Pass",false,true,function(plr,args)
    args = combineargs(args)
    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.menu.build.MAIN.Frame:GetChildren()) do
        if v.Name == args[1] then
            v.Visible = true
            for i,v in pairs(v:GetChildren()) do
                if v:IsA("ImageLabel") then
                    v.Visible = true
                end
            end
            success(plr)
        else
            v.Visible = false
        end
    end
end)
makecmd("showallobbyguis","Shows all the obby gui's buttons",false,false,function(plr,args)
    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.menu.build.MAIN.buttons:GetChildren()) do
        if v:IsA("ImageButton") then
            v.Visible = true
        end
    end
    success(plr)
end)
makecmd("listalladmins","Lists all the admins you whitelisted.",true,false,function(plr,args)
    local adminslist = ""
    for i,v in pairs(wl) do
        adminslist = adminslist..i.." | "
    end
    sayto(plr,adminslist)
end)
makecmd("addmoney","Adds money to yourself, Example: addmoney 999",false,true,function(plr,args)
    local amt = tonumber(args[1])
    if amt then
        game:GetService("ReplicatedStorage").EnterCode:FireServer(amt,"get trolled","Cash")
    end
    success(plr)
end)
makecmd("submoney","Subtracts money to yourself, Example: submoney 999",false,true,function(plr,args)
    local amt = tonumber(args[1])
    if amt then
        game:GetService("ReplicatedStorage").EnterCode:FireServer(-amt,"get trolled","Cash")
    end
    success(plr)
end)
makecmd("setxp","Sets the xp you currently have, Example: setxp 10",false,true,function(plr,args)
    local amt = tonumber(args[1])
    if amt then
        game:GetService("ReplicatedStorage").EnterCode:FireServer(amt,"get trolled","xp")
    end
    success(plr)
end)
makecmd("farmlevels","Farm levels, Although this can be a little bit risky",false,false,function(plr,args)
    repeat
        task.wait()
        game:GetService("ReplicatedStorage").EnterCode:FireServer(999999999999999999,"get trolled","xp")
        task.wait()
        game:GetService("ReplicatedStorage").EnterCode:FireServer(0,"get trolled","xp")
        if supportgetgenv then
            farmlevels = getgenv().farmlevels
        end
    until farmlevels == false
    success(plr)
end)
makecmd("stopfarmlevels","Stop farming levels",false,false,function(plr,args)
    farmlevels = false
    if supportgetgenv then
        getgenv().farmlevels = farmlevels
    end
    success(plr)
end)
makecmd("setprefix","Set the prefix of your own prefix, Example: setprefix :",false,true,function(plr,args)
    local setprefix = combineargs(args)[1]
    prefix = setprefix
    if supportgetgenv then
        getgenv().prefix = prefix
    end
    success(plr)
end)
makecmd("setprefix2","Set the prefix of the whitelisted people, Example: setprefix2 ;",false,true,function(plr,args)
    local setprefix2 = combineargs(args)[1]
    prefix2 = setprefix2
        if supportgetgenv then
        getgenv().prefix2 = prefix2
    end
    updatewhitelistmessage()
    success(plr)
end)
makecmd("printallplrobbynames","Prints all of the player obby names.",false,false,function(plr,args)
    for i,v in pairs(workspace.Terrain.Obbyplot:GetChildren()) do
        print(v.Name)
    end
    success(plr)
end)
makecmd("printallobbynames","Prints all of the obby names.",false,false,function(plr,args)
    for i,v in pairs(game.ReplicatedStorage.obys:GetChildren()) do
        print(v.Name)
    end
    success(plr)
end)
makecmd("printallfinishes","Prints all of the finish names.",false,false,function(plr,args)
    for i,v in pairs(game.ReplicatedStorage["obby_Finish"]:GetChildren()) do
        print(v.Name)
    end
    success(plr)
end)
makecmd("printallcodes","Prints all of the codes.",false,false,function(plr,args)
    for i,v in pairs(getconstants(getscriptclosure(game:GetService("Players").LocalPlayer.PlayerGui.menu.Info.Frame.Codes.Enter.LocalScript))) do
        if typeof(v) == "string" then
            print(i,v)
        end
    end
    warn("codes are around 22 to 27")
    success(plr)
end)
makecmd("printallobbyguis","Prints all of the obby gui's.",false,false,function(plr,args)
    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.menu.build.MAIN.Frame:GetChildren()) do
        print(v.Name)
    end
    success(plr)
end)
makecmd("printselectedobbysize","Prints the selected obby size, You need to have used selectobby for this.",false,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.obby then
        print(game.ReplicatedStorage.obys[plrtable.obby]:GetExtentsSize())
    end
end)
makecmd("copyselectedobbysize","Copies the selected obby size, You need to have used selectobby for this.",false,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.obby then
        setclipboard(tostring(game.ReplicatedStorage.obys[plrtable.obby]:GetExtentsSize()))
    end
end)
makecmd("getallplrobbynames","Gets all of the player obby names.",true,false,function(plr,args)
    local str = ""
    for i,v in pairs(workspace.Terrain.Obbyplot:GetChildren()) do
        str = str..v.Name.." , "
    end
    for i,v in pairs(splittext(str)) do
        sayto(plr,v)
    end
end)
makecmd("getallobbynames","Gets all of the obby names.",true,false,function(plr,args)
    local str = ""
    for i,v in pairs(game.ReplicatedStorage.obys:GetChildren()) do
        str = str..v.Name.." , "
    end
    for i,v in pairs(splittext(str)) do
        sayto(plr,v)
    end
end)
makecmd("getallfinishnames","Gets all of the finish names.",true,false,function(plr,args)
    local str = ""
    for i,v in pairs(game.ReplicatedStorage["obby_Finish"]:GetChildren()) do
        str = str..v.Name.." , "
    end
    for i,v in pairs(splittext(str)) do
        sayto(plr,v)
    end
end)
makecmd("getallcodes","Gets all of the codes.",true,false,function(plr,args)
    local str = ""
    for i,v in pairs(getconstants(getscriptclosure(game:GetService("Players").LocalPlayer.PlayerGui.menu.Info.Frame.Codes.Enter.LocalScript))) do
        if typeof(v) == "string" then
            str = str..v.Name.." , "
        end
    end
    for i,v in pairs(splittext(str)) do
        sayto(plr,v)
    end
end)
makecmd("getselectedobbysize","Gets the selected obby size, You need to have used selectobby for this.",true,false,function(plr,args)
    local plrtable = getplrtable(plr)
    if plrtable.obby then
        local size = game.ReplicatedStorage.obys[plrtable.obby]:GetExtentsSize()
        if args then
            local pos = combineargs(args)[1]:upper()
            if size[pos] then
                pos = tostring(size[pos])
                string.sub(pos,1,string.find(pos,".")+2)
                sayto(plr,pos)
            end
        else
            size.X = pos
            string.sub(pos,1,string.find(pos,".")+2)
            size.Y = pos
            string.sub(pos,1,string.find(pos,".")+2)
            size.Z = pos
            string.sub(pos,1,string.find(pos,".")+2)
            size = tostring(size)
            sayto(plr,size)
        end
    end
end)
makecmd("help","Help command, Use if you are confused on a command, Example: help selectplrobby",true,true,function(plr,args)
    local cmd = args[1]:lower()
    if cmddesc[cmd] then
        sayto(plr,cmddesc[cmd])
    end
end)
makecmd("cmds","Shows all of the commands",true,false,function(plr,args)
    local msg = ""
    for i,v in pairs(cmds) do
        if v[1] == true then
            msg = msg..i.." | "
        end
    end
    local splitmessages = splittext(msg)
    for i,v in pairs(splitmessages) do
        wait(.1)
        sayto(plr,v)
    end
end)
makecmd("kill","Kills the player, Example: kill AreYouMental110",true,true,function(plr,args)
    local playertokill = getplayer(args[1],plr)
    if playertokill then
        if typeof(playertokill) == "table" then
            for i,v in pairs(playertokill) do
                killplr(v)
            end
        else
            killplr(playertokill)
        end
        success(plr)
    end
end)
makecmd("winpremadeobby","Finishes a premade obby",false,true,function(plr,args)
    args = combineargs(args)
    if premadeobbies[args[1]:lower()] then
        local finish = premadeobbies[args[1]:lower()]
        localplr.Character.HumanoidRootPart.CFrame = finish.CFrame
        wait()
        firetouchinterest(localplr.Character.HumanoidRootPart,finish,0)
        success(plr)
    end
end)
makecmd("printallpremadeobbies","Prints all of the premade obbies",false,false,function(plr,args)
    for i,v in pairs(premadeobbies) do
        print(i)
    end
end)
makecmd("setdeletedelay","Set delay before the obby deletes itself (for press2kill and press4obby)",false,true,function(plr,args)
    local num = args[1]
    if num then
        delaybeforedelete = tonumber(num)
        success(plr)
    end
end)
makecmd("press2kill","Click to kill",false,false,function(plr,args)
    press2kill = true
    success(plr)
end)
makecmd("stoppress2kill","Stop click to kill",false,false,function(plr,args)
    press2kill = false
    success(plr)
end)
makecmd("press4obby","Click for obby",false,false,function(plr,args)
    press4obby = true
    success(plr)
end)
makecmd("stoppress4obby","Stop click for obby",false,false,function(plr,args)
    press4obby = false
    success(plr)
end)
localplrmessage = localplr.Chatted:Connect(function(message)
    local speaker = localplr.Name
    if string.sub(message,1,string.len(prefix)) == prefix then
        local cmd
        local args
        if string.find(message," ") then
            cmd = string.sub(message:lower(),string.len(prefix)+1,string.find(message," ")-1)
            local tosplit = string.sub(message,string.find(message," ")+1)
            args = string.split(tosplit," ")
        else
            cmd = string.sub(message:lower(),string.len(prefix)+1)
        end
        for i,v in pairs(cmds) do
            if i:lower() == cmd then
                if v[2] == true and args then
                    v[3](speaker,args)
                elseif v[2] == false then
                    v[3](speaker)
                end
            end
        end 
    elseif message:lower() == "end" then
        endfunc()
    end
end)
otherplrmessage = game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(stuff)
    local speaker = stuff.FromSpeaker
    local message = stuff.Message
    if speaker ~= localplr.Name and wl[speaker] and string.sub(message,1,string.len(prefix2)) == prefix2 then
        local cmd
        local args
        if string.find(message," ") then
            cmd = string.sub(message:lower(),string.len(prefix2)+1,string.find(message," ")-1)
            local tosplit = string.sub(message,string.find(message," ")+1)
            args = string.split(tosplit," ")
        else
            cmd = string.sub(message:lower(),string.len(prefix2)+1)
        end
        for i,v in pairs(cmds) do
            if v[1] == true and i:lower() == cmd then
                print(i)
                if v[2] == true and args then
                    v[3](speaker,args)
                elseif v[2] == false then
                    v[3](speaker)
                end
            end
        end 
    end
end)
local onplradded
endfunc = function()
    localplrmessage:Disconnect()
    otherplrmessage:Disconnect()
    inputbegan:Disconnect()
    farmlevels = false
    if supportgetgenv then
        getgenv().farmlevels = false
        getgenv().endfunc = nil
    end
    for i,v in pairs(game.Players:GetPlayers()) do
        if wl[v.Name] then
            sayto(v.Name,unwhitelistmessage)
        end
    end
    notify("Admin ending.")
end
if supportgetgenv then
    getgenv().endfunc = endfunc
end
for i,v in pairs(cmddesc) do
    local cmd = i.." - "..v
    if cmds[i] and cmds[i][1] == true then
        cmd = cmd.." (WHITELIST CAN USE)"
    end
    cmd = cmd..[[


]]
    if supportsrconsole and enablerconsole then
        rconsoleprint(cmd)
    else
        print(cmd)
    end
end
inputbegan = game:GetService("UserInputService").InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and (press2kill or (press4obby and localplrtable.obby)) then
        local pos = input.Position
        local ray = workspace.CurrentCamera:ViewportPointToRay(pos.X,pos.Y)
        local rayresult = workspace:Raycast(ray.Origin,ray.Direction * 5000)
        local part = rayresult.Instance
        if part then
            local char = part.Parent
            if not char:IsA("Model") then
                char = char.Parent
            end
            if press4obby then
                placeobbypos(rayresult.Position,localplrtable.obby)
            elseif press2kill and game.Players:GetPlayerFromCharacter(char) and game.Players:GetPlayerFromCharacter(char) ~= localplr then
                char:WaitForChild("HumanoidRootPart",math.huge)
                placeobbypos(char.HumanoidRootPart.Position,"chocolate20")
            end
        end
    end
end)
function updatevalues()
    autowhitelistfriends = getgenv().autowhitelistfriends
    prefix = getgenv().prefix
    prefix2 = getgenv().prefix2
    successmessage = getgenv().successmessage
    updatewhitelistmessage()
    unwhitelistmessage = getgenv().unwhitelistmessage
    canwhitelistmessage = getgenv().canwhitelistmessage
    costmoney = getgenv().costmoney
    enablerconsole = getgenv().enablerconsole
end
function setgetgenv(txt,val)
    if supportgetgenv and getgenv()[txt] then
        getgenv()[txt] = val
        updatevalues()
    end
end
delay(5,function()
    onplradded = game.Players.PlayerAdded:Connect(function(plr)
        if localplr:IsFriendsWith(plr.UserId) and autowhitelistfriends == true and not wl[plr.Name] then
            sayto(plr.Name,autowhitelistmessage)
            wl[plr.Name] = {}
        end
    end)
    if autowhitelistfriends then
        for i,plr in pairs(game.Players:GetPlayers()) do
            if localplr:IsFriendsWith(plr.UserId) and autowhitelistfriends == true and not wl[plr.Name] then
                sayto(plr.Name,autowhitelistmessage)
                wl[plr.Name] = {}
            end
        end
    end
end)
notify("Done Loading!")
return setgetgenv
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
if game.PlaceId ~= 111311599 then
    return
end
repeat wait() until game:FindFirstChild("Players") ~= nil
repeat wait() until game.Players.LocalPlayer ~= nil
repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("Classes")
repeat wait() until game:GetService("ReplicatedStorage").Classes:FindFirstChild("CONTROLLER")
repeat wait() until game:GetService("ReplicatedStorage").Classes.CONTROLLER:FindFirstChild("Effects")
repeat wait() until game:GetService("ReplicatedStorage").Classes.CONTROLLER.Effects:FindFirstChild("Disable")

local mouse = game.Players.LocalPlayer:GetMouse() -- for get nearest to player
local mainscriptenv = nil
local toset = {}

local LoopTables = {
    loopkill = {};
    loopheal = {};
    loopapply = {};
    godmode = {};
}
local debounces = {
    loopkill = false;
    loopheal = false;
    loopapply = false;
    nocooldown = false;
    godmode = false;
}
local toggles = {
    nocooldown = false;
    draw = false;
    fasternocooldown = false;
}
local effects = {}
local hotkeys = {}

local function getlowest(funct)
    print(tostring(funct))
    local UpValues = debug.getupvalues(funct)
    local LowestIndex = math.huge
    local LowestNumber = math.huge
    for i,v in pairs(UpValues) do
        if tonumber(v) ~= nil then
            if tonumber(v) < LowestNumber then
                LowestIndex = i
                LowestNumber = tonumber(v)
            end
        end
    end
    return(LowestIndex)
end

for i,desc in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
    if desc.Name == "Main" and desc.Parent.Name == "ClassGui" then
        repeat wait() until desc.Disabled == false
        wait(1)
        mainscriptenv = getsenv(desc)
        toset.Attack = getlowest(mainscriptenv.usingattack)
        toset.First = getlowest(mainscriptenv.usingability1)
        toset.Second = getlowest(mainscriptenv.usingability2)
        toset.Critical = getlowest(mainscriptenv.usingcritical)
    end
end
game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(desc)
    wait(3)
    if desc ~= nil then
        if desc.Parent ~= nil then
            if desc.Name == "Main" and desc.Parent.Name == "ClassGui" then
                repeat wait() until desc.Disabled == false
                wait(1)
                pcall(function()
                    mainscriptenv = getsenv(desc)
                    toset.Attack = getlowest(mainscriptenv.usingattack)
                    toset.First = getlowest(mainscriptenv.usingability1)
                    toset.Second = getlowest(mainscriptenv.usingability2)
                    toset.Critical = getlowest(mainscriptenv.usingcritical)
                end)
            end
        end
    end
end)


for i,v in pairs(game.ReplicatedStorage.Classes:GetDescendants()) do
    if v:FindFirstChild("Effects") then
        for x,y in pairs(v.Effects:GetChildren()) do
            local AlreadyAdded = false
            for n,t in pairs(effects) do
                if string.lower(tostring(n)) == string.lower(y.Name) then
                    AlreadyAdded = true
                end
            end
            if not AlreadyAdded and not string.find(string.lower(y.Name), "reset") and not string.find(string.lower(y.Name), "remove") and y.Name ~= "AttackBuff" then
                effects[string.lower(y.Name)] = y
--print("added not attack shit ("..y.Name..")")
            elseif not AlreadyAdded and not string.find(string.lower(y.Name), "reset") and not string.find(string.lower(y.Name), "remove") then
                repeat wait() until y:FindFirstChild("TextButton")
print("attack shit "..y.TextButton.Text)
                if string.find(y.TextButton.Text, "3") then
                    effects[string.lower(y.Name)] = y
                end
            end
        end
    end
end

local function GetClosestPlayer()
    local LowestDistance = math.huge
    local ClosestCharacter = nil
    local Characters = {}
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character ~= nil and v ~= game.Players.LocalPlayer then
            table.insert(Characters, v.Character)
        end
    end
    for i,v in pairs(Characters) do
        if v ~= nil then
            if v:FindFirstChild("HumanoidRootPart") then
                local InitialDis = (v.HumanoidRootPart.Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local Ray = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * InitialDis)
                local Part,Position = game.Workspace:FindPartOnRay(Ray, game.Workspace)
                local FinalDifference = math.floor((Position - v.HumanoidRootPart.Position).magnitude)
                if FinalDifference < LowestDistance then
                    ClosestCharacter = v
                    LowestDistance = FinalDifference
                end
            end
        end
    end
    local ClosestPlayer = game.Players:GetPlayerFromCharacter(ClosestCharacter)
    if ClosestPlayer ~= nil then
        return ClosestPlayer
    end
end

local function setbools()
    for i,v in pairs(debug.getupvalues(mainscriptenv.usingattack)) do
        if type(v) == "boolean" then
            debug.setupvalue(mainscriptenv.usingattack, i, false)
        end
    end
    for i,v in pairs(debug.getupvalues(mainscriptenv.usingability1)) do
        if type(v) == "boolean" then
            debug.setupvalue(mainscriptenv.usingability1, i, false)
        end
    end
    for i,v in pairs(debug.getupvalues(mainscriptenv.usingability2)) do
        if type(v) == "boolean" then
            debug.setupvalue(mainscriptenv.usingability2, i, false)
        end
    end
    for i,v in pairs(debug.getupvalues(mainscriptenv.usingcritical)) do
        if type(v) == "boolean" then
            debug.setupvalue(mainscriptenv.usingcritical, i, false)
        end
    end
end

local function getargs(inputstring, lower)
    if lower ~= nil then
        if lower then
            inputstring = string.lower(inputstring)
        end
    end
    local Args = {}
    local spaces = {}
    local lastspace = 0
    inputstring = string.gsub(inputstring, "/e ", "")
    inputstring = string.gsub(inputstring, "/w ", "")
    if string.find(string.sub(inputstring,1,1), "%p") then
        inputstring = string.sub(inputstring, 2, -1)
    end
    repeat
        local currentspace = string.find(inputstring, " ", lastspace + 1)
        if currentspace ~= nil then
            table.insert(spaces, currentspace)
            lastspace = currentspace
        else
            lastspace = currentspace
        end
    wait()
    until lastspace == nil
    if #spaces >= 2 then
        Args.Command = string.sub(inputstring, 1, spaces[1] - 1)
    elseif #spaces == 1 then
        Args.Command = string.sub(inputstring, 1, spaces[1] - 1)
        Args[1] = string.sub(inputstring, spaces[1] + 1, -1)
    elseif #spaces == 0 then
        Args.Command = string.sub(inputstring, 1, - 1)
    end
    if #spaces >= 2 then 
        for i = 1,#spaces do
            if i ~= 1 and i ~= #spaces then
                Args[i - 1] = string.sub(inputstring, spaces[i - 1] + 1, spaces[i] - 1)
            elseif i == #spaces then
                Args[i - 1] = string.sub(inputstring, spaces[i - 1] + 1, spaces[i] - 1)
                Args[i] = string.sub(inputstring, spaces[i] + 1, -1)
            end
        end
    end
    return Args
end


local function getplayer(name)
    if type(name) ~= "string" or name == nil then
        return nil
    end
    name = string.lower(name)
    local player = nil
                    
    local names = game.Players:GetChildren()                      
    for i,v in pairs(names) do
        local strlower = string.lower(v.Name)
        local sub = string.sub(strlower,1,#name)                                     
        if name == sub and v ~= game.Players.LocalPlayer then 
            player = v
        end
    end
    if player then 
        return player
    else
        return nil
    end
end

local function IsInTable(table, tofind)
    local found = false
    for i,v in pairs(table) do
        if v == tofind or i == tofind then
            found = true
            break
        end
    end
    return found
end

local function GetPartsOnRay(ray)
    local Parts = {}
    local LastPart = nil
    
    repeat
        LastPart = game.Workspace:FindPartOnRayWithIgnoreList(ray, Parts)
        table.insert(Parts, LastPart)
    until LastPart == nil
    for i,v in pairs(Parts) do
        Parts[i] = v.Name
    end
    return Parts
end -- thanks to EmeraldSlash on the devforums for saving me some work

local function GetAlivePlayers()
    local Players = {}
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Character ~= nil and v ~= game.Players.LocalPlayer then
            if v.Character:FindFirstChildOfClass("Model") and v.Character:FindFirstChild("HumanoidRootPart") then -- only players that are aren't in the character selection (players and in the game)
                local ray = Ray.new(v.Character.HumanoidRootPart.Position, Vector3.new(0, 1000, 0))
                local Table = GetPartsOnRay(ray)
                if IsInTable(Table, "AntiMapGlitch1") then
                    table.insert(Players, v)
                end
            end
        end
    end
    return Players
end

local function getpass()
    local pass = nil
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ClassGui") then
        if game.Players.LocalPlayer.PlayerGui.ClassGui:FindFirstChild("Main") then
            pass = getsenv(game.Players.LocalPlayer.PlayerGui.ClassGui.Main).pass -- thank you egg salad
        end
    end
    return pass
end

local function heal(chara, amount)
    local pass = getpass()
    if pass == nil then
        return
    end
    game.ReplicatedStorage.Remotes.Heal:InvokeServer(pass(), chara, amount) -- thank you egg salad
end

local function damage(chara, amount)
    local pass = getpass()
    if pass == nil then
        return
    end
    game.ReplicatedStorage.Remotes.Damage:InvokeServer(pass(), game.Workspace.RealTime.Value, chara, amount)
end

local function applyeffect(chara, effect)
    if chara == nil then
        return
    end
    local pass = getpass()
    local effectobj = nil
    if pass == nil then
        return
    end
    for i,v in pairs(effects) do
        if string.lower(string.sub(tostring(i), 1, #effect)) == string.lower(effect) then
            effectobj = v
        end
    end
    if effectobj ~= nil and chara:FindFirstChild("Head") then
        game.ReplicatedStorage.Remotes.EffectApply:InvokeServer(pass(), chara, effectobj, chara.Head)
    end
end

local function forcefield(chara)
    local pass = getpass()
    if pass == nil or chara == nil then
        return
    end
    if game.ReplicatedStorage:FindFirstChild("Effects") then
        if game.ReplicatedStorage.Effects:FindFirstChild("ForceField") and chara:FindFirstChild("Head") then
            game.ReplicatedStorage.Remotes.EffectApply:InvokeServer(pass(), chara, game.ReplicatedStorage.Effects.ForceField, chara.Head)
        end
    end
end

local function invis()
    local InvisAbility = game.ReplicatedStorage.Classes.RECON.Projectile.ability2a;
    local Location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0);
    local AbilityClone = InvisAbility:Clone();
    AbilityClone.Owner.Value = game.Players.LocalPlayer
    AbilityClone.Origin.Value = Location.p;
    AbilityClone.CFrame = Location;
    AbilityClone.Color = game.Players.LocalPlayer.CharacterColors.WeaponColor.Value;
    AbilityClone.Speed.Value = AbilityClone.Speed.Value;
    local ProjectileHandler = AbilityClone.ProjectileHandler;
    ProjectileHandler.Projectile.Value = AbilityClone;
    ProjectileHandler.Parent = game.Players.LocalPlayer.Character;
    AbilityClone.Parent = workspace;
    game.ReplicatedStorage.Remotes.Projectile:FireServer(InvisAbility, Location, game.Players.LocalPlayer.CharacterColors.WeaponColor.Value);
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)

    if string.lower(msg) == "za warudo" or string.lower(msg) == "/e za warudo" then
        print("yuh")
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Character ~= nil then
                applyeffect(v.Character, "rewind")
            end
        end
    end

    if not string.find(msg, ":") and not string.find(msg, "/e ") then
        return
    end

    local Args = getargs(msg, true) -- Has all the arguments on the player's message

    if IsInTable({"kill","eliminate","murder","assassinate","terminate","destroy","end","extinguish","ruin","wreck","smash","crush","abolish","eradicate","annihilate","obliterate","lol","getmad"}, Args.Command) and Args[1] ~= nil then
        if Args[1] == "others" then
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    damage(v.Character, 1000)
                end
            end
            return
        end
        if Args[1] == "random" then
            local Victims = 1
            if tonumber(Args[2]) ~= nil then
                if tonumber(Args[2]) <= #game.Players:GetPlayers() then
                    Victims = tonumber(Args[2])
                end
            end
            local Players = GetAlivePlayers()
            if Victims == 1 and Players[1] ~= nil then
                damage(Players[math.random(1,#Players)].Character, 1000)
            elseif Victims > 1 and Players[1] ~= nil then
                for i = 1,Victims do
                    local RandomIndex = math.random(1,#Players)
                    damage(Players[RandomIndex].Character, 1000) -- thank you egg salad
                    table.remove(Players, RandomIndex) -- prevention for selecting the same player twice
                end
            end
        end
        local Target = getplayer(Args[1])
        if Target == nil then
            return
        end
        if Target.Character ~= nil then
            damage(Target.Character, 1000) -- thank you egg salad
        end
    end

    if IsInTable({"1vs1","1v1","duel"}, Args.Command) and Args[1] ~= nil then
        if Args[1] == "random" then
            local Players = GetAlivePlayers()
            local Player = Players[math.random(1,#Players)]
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= Player and v ~= game.Players.LocalPlayer then
                    damage(v.Character, 1000) -- thank you egg salad
                end
            end
            return
        end
        local Target = getplayer(Args[1])
        local Target2 = nil
        if Target == nil then
            return
        end
        if Args[2] ~= nil then
            Target2 = getplayer(Args[2])
        end
        if Target2 == nil then
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= Target and v ~= game.Players.LocalPlayer then
                    damage(v.Character, 1000) -- thank you egg salad
                end
            end
        else
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= Target and v ~= Target2 then
                    damage(v.Character, 1000) -- thank you egg salad
                end
            end
        end
    end

    if IsInTable({"win","dub","#1battleroyale"}, Args.Command) then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                damage(v.Character, 1000) -- thank you egg salad
            end
        end
    end

    if IsInTable({"loop","loopkill","autokill","lk"}, Args.Command) and Args[1] ~= nil then
        if Args[1] == "others" then
            for i,v in pairs(game.Players:GetPlayers()) do
                if not IsInTable(LoopTables.loopkill, v.Name) and v ~= game.Players.LocalPlayer then
                    table.insert(LoopTables.loopkill, v.Name)
                end
            end
            return
        end
        local Target = getplayer(Args[1])
        if Target == nil then
            return
        end
        if not IsInTable(LoopTables.loopkill, Target.Name) then
            table.insert(LoopTables.loopkill, Target.Name)
        end
    end

    if IsInTable({"unloop","unloopkill","unautokill"}, Args.Command) and Args[1] ~= nil then
        if Args[1] == "others" or Args[1] == "all" then
            for i = 1,#LoopTables.loopkill do
                table.remove(LoopTables.loopkill, 1)
            end
            return
        end
        for i,v in pairs(LoopTables.loopkill) do
            if string.lower(string.sub(v, 0,#Args[1])) == string.lower(Args[1]) then
                table.remove(LoopTables.loopkill, i)
            end
        end
    end

    if IsInTable({"lks","loopkills","loopkilled","loopkilllist"}, Args.Command) then
        print("--- Printing Loopkill List ---")
        for i,v in pairs(LoopTables.loopkill) do
            print(i..": "..v)
        end
        print("------------ Done ------------")
    end

    if IsInTable({"damage","hurt","subtract"}, Args.Command) and Args[1] ~= nil then
        if Args[1] == "all" or Args[1] == "others" then
            local Players = game.Players:GetPlayers()
            if Args[1] == "others" then
                for i = 1,#Players do
                    if Players[i] == game.Players.LocalPlayer then
                        table.remove(Players, i)
                    end
                end
            end
            for i,v in pairs(Players) do
                if v.Character:FindFirstChild("Stats") then
                    if v.Character.Stats:FindFirstChild("CurrentHP") and v.Character.Stats:FindFirstChild("MaxHP") then
                        if Args[2] == "random" then
                            damage(v.Character, math.random(1,tonumber(v.Character.Stats:FindFirstChild("CurrentHP").Value))) -- thank you egg salad
                        elseif string.find(Args[2], "1/") then
                            if tonumber(string.sub(Args[2], -1, -1)) ~= nil then
                                damage(v.Character, tonumber(v.Character.Stats:FindFirstChild("CurrentHP").Value)/tonumber(string.sub(Args[2], -1, -1))) -- thank you egg salad
                            end
                        else
                            damage(v.Character, tonumber(Args[2])) -- thank you egg salad
                        end
                    end
                end
            end
            return
        end
        local Target = getplayer(Args[1])
        if Target == nil then
            return
        end
        if Target.Character ~= nil then
            if Target.Character:FindFirstChild("Stats") then
                if not Target.Character.Stats:FindFirstChild("CurrentHP") or not Target.Character.Stats:FindFirstChild("MaxHP") then
                    return
                end
                if Args[2] == "random" then
                    damage(Target.Character, math.random(1,tonumber(Target.Character.Stats:FindFirstChild("CurrentHP").Value))) -- thank you egg salad
                    return
                end
                if string.find(Args[2], "1/") then
                    if tonumber(string.sub(Args[2], -1, -1)) ~= nil then
                        damage(Target.Character, tonumber(Target.Character.Stats:FindFirstChild("CurrentHP").Value)/tonumber(string.sub(Args[2], -1, -1))) -- thank you egg salad
                        return
                    end
                end
                damage(v.Character, tonumber(Args[2])) -- thank you egg salad
            end
        end
    end

    if IsInTable({"heal","repair","restore","healme","repairme","restoreme"}, Args.Command) then
        if Args[1] == "others" or Args[1] == "all" then
            if IsInTable({"healme","repairme","restoreme"}, Args.Command) then
                return
            end
            local Players = game.Players:GetPlayers()
            if Args[1] == "others" then
                for i = 1,#Players do
                    if Players[i] == game.Players.LocalPlayer then
                        table.remove(Players, i)
                    end
                end
            end
            for i,v in pairs(Players) do
                if v.Character ~= nil then
                    if v.Character:FindFirstChild("Stats") then
                        local Stats = v.Character.Stats
                        if not Stats:FindFirstChild("CurrentHP") or not Stats:FindFirstChild("MaxHP") or not Stats:FindFirstChild("RedDamage") then
                            return
                        end
                        if Args[2] == "random" then
                            local TotalLostHealth = (Stats.MaxHP.Value - Stats.RedDamage.Value) - Stats.CurrentHP.Value
                            heal(v.Character, math.random(1,TotalLostHealth))
                        elseif tonumber(Args[2]) ~= nil then
                            local TotalLostHealth = (Stats.MaxHP.Value - Stats.RedDamage.Value) - Stats.CurrentHP.Value
                            heal(v.Character, Args[2])
                        else
                            heal(v.Character, Stats.MaxHP.Value)
                        end
                    end
                end
            end
            return
        end
        local Target = nil
        if Args[1] == "me" or Args[1] == "myself" or IsInTable({"healme","repairme","restoreme"}, Args.Command) then
            Target = game.Players.LocalPlayer
        elseif Args[1] == "random" then
            local Players = GetAlivePlayers()
            if Players[1] ~= nil then
                Target = Players[math.random(1,#Players)]
            end
        else
            Target = getplayer(Args[1])
        end
        if Target ~= nil then
            if Target.Character ~= nil then
                if Target.Character:FindFirstChild("Stats") then
                    local Stats = Target.Character.Stats
                    if not Stats:FindFirstChild("CurrentHP") or not Stats:FindFirstChild("MaxHP") or not Stats:FindFirstChild("RedDamage") then
                        return
                    end
                    if Args[2] == "random" then
                        local TotalLostHealth = (Stats.MaxHP.Value - Stats.RedDamage.Value) - Stats.CurrentHP.Value
                        heal(Target.Character, math.random(1,TotalLostHealth))
                    elseif tonumber(Args[2]) ~= nil then
                        local TotalLostHealth = (Stats.MaxHP.Value - Stats.RedDamage.Value) - Stats.CurrentHP.Value
                        heal(Target.Character, Args[2])
                    else
                        heal(Target.Character, Stats.MaxHP.Value)
                    end
                end
            end
        end
    end

    if IsInTable({"loopheal","looprepair","looprestore","rapidheal","lh"}, Args.Command) and Args[1] ~= nil then
        if Args[1] == "others" then
            for i,v in pairs(game.Players:GetPlayers()) do
                if not IsInTable(LoopTables.loopheal, v.Name) and v ~= game.Players.LocalPlayer then
                    table.insert(LoopTables.loopheal, v.Name)
                end
            end
            return
        end
        if Args[1] == "all" then
            for i,v in pairs(game.Players:GetPlayers()) do
                if not IsInTable(LoopTables.loopheal, v.Name) then
                    table.insert(LoopTables.loopheal, v.Name)
                end
            end
            return
        end
        local Target = nil
        if Args[1] == "me" or Args[1] == "myself" or IsInTable({"healme","repairme","restoreme"}, Args.Command) then
            Target = game.Players.LocalPlayer
        elseif Args[1] == "random" then
            local Players = GetAlivePlayers()
            if Players[1] ~= nil then
                Target = Players[math.random(1,#Players)]
            end
        else
            Target = getplayer(Args[1])
        end
        if Target == nil then
            return
        end
        if not IsInTable(LoopTables.loopheal, Target.Name) then
            table.insert(LoopTables.loopheal, Target.Name)
        end
    end

    if IsInTable({"unloopheal","unlooprepair","unlooprestore","unrapidheal","ulh"}, Args.Command) and Args[1] ~= nil then
        if Args[1] == "others" or Args[1] == "all" then
            for i = 1,#LoopTables.loopheal do
                table.remove(LoopTables.loopheal, 1)
            end
            return
        end
        for i,v in pairs(LoopTables.loopheal) do
            if string.lower(string.sub(v, 0,#Args[1])) == string.lower(Args[1]) then
                table.remove(LoopTables.loopheal, i)
            end
        end
    end

    if IsInTable({"lhs","loopheals","loophealed","loopheallist","autoheals","autoheallist"}, Args.Command) then
        print("--- Printing LoopHeal List ---")
        for i,v in pairs(LoopTables.loopheal) do
            print(i..": "..v)
        end
        print("------------ Done ------------")
    end

    if IsInTable({"loops","looplist","looplists"}, Args.Command) then
        print("")
        print("--- Printing Loopkill List ---")
        for i,v in pairs(LoopTables.loopkill) do
            print(i..": "..v)
        end
        print("------------ Done ------------")
        print("")
        print("--- Printing LoopHeal List ---")
        for i,v in pairs(LoopTables.loopheal) do
            print(i..": "..v)
        end
        print("------------ Done ------------")
        print("")
        print("--- Printing LoopBuff List ---")
        for i,v in pairs(LoopTables.loopapply) do
            local message = ""
            if typeof(LoopTables.loopapply[i]) == "table" then
                for x,y in pairs(LoopTables.loopapply[i]) do
                    message = message..tostring(x)..", "
                end
                message = string.sub(message, 1, #message - 2)
            end
            print(i..": "..message)
        end
        print("------------ Done ------------")
        print("")
    end

    if IsInTable({"effect","applyeffect","debuff","apply","buff","effectme","applyme","debuffme","buffme"}, Args.Command) then
        if Args[1] == "all" or Args[1] == "others" then
            if IsInTable({"effectme","applyme","debuffme","buffme"}, Args.Command) then
                return
            end
            local Players = game.Players:GetPlayers()
            if Args[1] == "others" then
                for i = 1,#Players do
                    if Players[i] == game.Players.LocalPlayer then
                        table.remove(Players, i)
                    end
                end
            end
            for i,v in pairs(Players) do
                if v.Character ~= nil then
                    if Args[2] == "random" then
                        local EffectNames = {}
                        for i,v in pairs(effects) do
                            table.insert(EffectNames, tostring(i))
                        end
                        if tonumber(Args[3]) ~= nil then
                            for i = 1,tonumber(Args[3]) do
                                applyeffect(v.Character, EffectNames[math.random(1,#EffectNames)])
                            end
                        else
                            applyeffect(v.Character, EffectNames[math.random(1,#EffectNames)])
                        end
                    else
                        if tonumber(Args[3]) ~= nil then
                            for i = 1,tonumber(Args[3]) do
                                applyeffect(v.Character, Args[2])
                            end
                        else
                            applyeffect(v.Character, Args[2])
                        end
                    end
                end
            end
            return
        end
        local Target = nil
        if Args[1] == "me" or Args[1] == "myself" or IsInTable({"effectme","applyme","debuffme","buffme"}, Args.Command) then
            Target = game.Players.LocalPlayer
        elseif Args[1] == "random" then
            local Players = GetAlivePlayers()
            if Players[1] ~= nil then
                Target = Players[math.random(1,#Players)]
            end
        else
            Target = getplayer(Args[1])
        end
        if Target ~= nil then
            if Target.Character ~= nil then
                if Args[2] == "random" then
                    local EffectNames = {}
                    for i,v in pairs(effects) do
                        table.insert(EffectNames, tostring(i))
                    end
                    if tonumber(Args[3]) ~= nil then
                        for i = 1,tonumber(Args[3]) do
                            applyeffect(Target.Character, EffectNames[math.random(1,#EffectNames)])
                        end
                    else
                        applyeffect(Target.Character, EffectNames[math.random(1,#EffectNames)])
                    end
                else
                    if tonumber(Args[3]) ~= nil then
                        for i = 1,tonumber(Args[3]) do
                            applyeffect(Target.Character, Args[2])
                        end
                    else
                        applyeffect(Target.Character, Args[2])
                    end
                end
            end
        end
    end

    if IsInTable({"effects","effectslist","debuffs","buffs","debufflist","bufflist","searcheffects"}, Args.Command) then
        print("---- Printing Effect List ----")
        for i,v in pairs(effects) do
            local ClassName = v:FindFirstAncestorOfClass("Folder"):FindFirstAncestorOfClass("Folder").Name
            if Args[1] ~= nil then
                if string.lower(string.sub(ClassName,1,#Args[1])) == string.lower(Args[1]) or string.find(string.lower(v.Name), string.lower(Args[1])) then
                    print(v.Name.." ("..ClassName..")")
                end
            else
                print(v.Name.." ("..ClassName..")")
            end
        end
        print("------------ Done ------------")
    end

    if IsInTable({"loopapply","loopbuff","loopdebuff","rapidapply","la","loopapplyme","loopbuffme"}, Args.Command) and Args[1] ~= nil and Args[2] ~= nil then
        local LoopEffect = nil
        for i,v in pairs(effects) do
            if string.lower(string.sub(tostring(i), 1, #Args[2])) == string.lower(Args[2]) then
                LoopEffect = string.lower(i)
            end
        end
        if LoopEffect == nil then
            return
        end
        if Args[1] == "others" or Args[1] == "all" then
            local Players = game.Players:GetPlayers()
            if Args[1] == "others" then
                for i = 1,#Players do
                    if Players[i] == game.Players.LocalPlayer then
                        table.remove(Players, i)
                    end
                end
            end
            for i,v in pairs(Players) do
                if LoopTables.loopapply[v.Name] ~= nil then
                    if LoopTables.loopapply[v.Name][LoopEffect] == nil then
                        LoopTables.loopapply[v.Name][LoopEffect] = true
                    end
                else
                    LoopTables.loopapply[v.Name] = {}
                    LoopTables.loopapply[v.Name][LoopEffect] = true
                end
            end
            return
        end
        local Target = nil
        if Args[1] == "me" or Args[1] == "myself" or IsInTable({"loopapplyme","loopbuffme"}, Args.Command) then
            Target = game.Players.LocalPlayer
        elseif Args[1] == "random" then
            local Players = GetAlivePlayers()
            if Players[1] ~= nil then
                Target = Players[math.random(1,#Players)]
            end
        else
            Target = getplayer(Args[1])
        end
        if Target == nil then
            return
        end
        if LoopTables.loopapply[Target.Name] ~= nil then
            if LoopTables.loopapply[Target.Name][LoopEffect] == nil then
                LoopTables.loopapply[Target.Name][LoopEffect] = true
            end
        else
            LoopTables.loopapply[Target.Name] = {}
            LoopTables.loopapply[Target.Name][LoopEffect] = true
        end
    end

    if IsInTable({"unloopapply","unloopbuff","unloopdebuff","unrapidapply","unla"}, Args.Command) and Args[1] ~= nil then
        if Args[1] == "others" or Args[1] == "all" then
            local Players = {}
            for i,v in pairs(LoopTables.loopapply) do
                Players[i] = v
            end
            if Args[1] == "others" then
                for i,v in pairs(Players) do
                    if i == game.Players.LocalPlayer.Name then
                        Players[i] = nil
                    end
                end
            end
            for i,v in pairs(Players) do
                if LoopTables.loopapply[i] ~= nil then
                    if Args[2] == nil then
                        LoopTables.loopapply[i] = nil
                    else
                        for x,y in pairs(LoopTables.loopapply[i]) do
                            if string.lower(string.sub(tostring(x), 1, #Args[2])) == string.lower(Args[2]) then
                                LoopTables.loopapply[i][x] = nil
                                local Number = 0
                                for i,v in pairs(LoopTables.loopapply[i]) do
                                    Number = Number + 1
                                end
                                if Number == 0 then
                                    LoopTables.loopapply[i] = nil
                                end
                            end
                        end
                    end
                end
            end
            return
        end
        if Args[1] == "me" or Args[1] == "myself" then
            Args[1] = game.Players.LocalPlayer.Name
        end
        for i,v in pairs(LoopTables.loopapply) do
            if string.lower(string.sub(i, 0,#Args[1])) == string.lower(Args[1]) then
                if Args[2] ~= nil then
                    for x,y in pairs(LoopTables.loopapply[i]) do
                        if string.lower(string.sub(x, 0,#Args[2])) == string.lower(Args[2]) then
                            LoopTables.loopapply[i][x] = nil
                        end
                    end
                else
                    LoopTables.loopapply[i] = nil
                end
                -- LoopTables.loopapply[i] = nil
            end
        end
    end

    if IsInTable({"applylist","loopapplys","loopapplies","loopeffects","loopbuffs","loopdebuffs"}, Args.Command) then
        print("--- Printing LoopBuff List ---")
        for i,v in pairs(LoopTables.loopapply) do
            local message = ""
            if typeof(LoopTables.loopapply[i]) == "table" then
                for x,y in pairs(LoopTables.loopapply[i]) do
                    message = message..tostring(x)..", "
                end
                message = string.sub(message, 1, #message - 2)
            end
            print(i..": "..message)
        end
        print("------------ Done ------------")
    end

    if IsInTable({"setkey","hotkey","applykey","keyset","sethotkey","hotkeyset"}, Args.Command) and Args[1] ~= nil and Args[2] ~= nil then
        if string.lower(Args[1]) == "r" or string.lower(Args[1]) == "t" then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Can't set that key";
                Text = "The R and T keys cannot be changed";
                Icon = "rbxassetid://2541869220";
                Duration = 7;
            })
            return
        end
        if #Args[1] ~= 1 or string.find(Args[1], "%d") or string.find(Args[1], "%p") or string.find(Args[1], "%s") then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Not quite...";
                Text = "Set keys must be a single letter character";
                Icon = "rbxassetid://2541869220";
                Duration = 7;
            })
            return
        end
        local Effect = nil
        for i,v in pairs(effects) do
            if string.lower(string.sub(tostring(i), 1, #Args[2])) == string.lower(Args[2]) then
                Effect = string.lower(i)
            end
        end
        if Effect == nil then
            return
        end
        if Args[3] == "me" or Args[3] == "myself" then
            hotkeys[Args[1]] = function()
                if game.Players.LocalPlayer.Character ~= nil then
                    applyeffect(game.Players.LocalPlayer.Character, Effect)
                end
            end
        else
            hotkeys[Args[1]] = function()
                local Target = GetClosestPlayer()
                if Target == nil then
                    return
                end
                if Target.Character ~= nil then
                    applyeffect(Target.Character, Effect)
                end
            end
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "Done!";
            Text = "Set the "..string.upper(Args[1]).." key to the "..string.upper(Effect).." effect!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end

    if IsInTable({"bleed","cut"}, Args.Command) and Args[1] ~= nil then
        local Target = getplayer(Args[1])
        if Target ~= nil then
            if Target.Character ~= nil then
                applyeffect(Target.Character, "bleed")
            end
        end
    end

    if IsInTable({"blind","blindfold"}, Args.Command) and Args[1] ~= nil then
        local Target = getplayer(Args[1])
        if Target ~= nil then
            if Target.Character ~= nil then
                applyeffect(Target.Character, "blind")
            end
        end
    end

    if IsInTable({"regen","superregen"}, Args.Command) and Args[1] ~= nil then
        local Target = nil
        if Args[1] == "me" or Args[1] == "myself" then
            Target = game.Players.LocalPlayer
        else
            Target = getplayer(Args[1])
        end
        if Target ~= nil then
            if Target.Character ~= nil then
                applyeffect(Target.Character, "superregen")
            end
        end
    end

    if IsInTable({"unsetkey","unhotkey","unapplykey","unkeyset","unsethotkey","unhotkeyset","removekey","removehotkey"}, Args.Command) and Args[1] ~= nil then
        if hotkeys[Args[1]] ~= nil then
            hotkeys[Args[1]] = nil
            game.StarterGui:SetCore("SendNotification", {
                Title = "Done!";
                Text = "Removed the effect binded to "..string.upper(Args[1]);
                Icon = "rbxassetid://2541869220";
                Duration = 3;
            })
        end
    end

    if IsInTable({"nocooldown","ncd","nocool","rapid","rapidattack","instantcool","instantcooldown"}, Args.Command) then
        toggles.nocooldown = true
        game.StarterGui:SetCore("SendNotification", {
            Title = "No CoolDown";
            Text = "No CoolDown is now ON!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end

    if IsInTable({"unnocooldown","uncd","unnocool","unrapid","unrapidattack","uninstantcool","uninstantcooldown","cooldown","regularcooldown","regcool","normalattacks","normalattack"}, Args.Command) then
        toggles.nocooldown = false
        toggles.fasternocooldown = false
        game.StarterGui:SetCore("SendNotification", {
            Title = "No CoolDown";
            Text = "No CoolDown is now OFF!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end

    if IsInTable({"fasternocooldown","fncd","fasternocool","fasterrapid","fasterrapidattack","fasterinstantcool","fasterinstantcooldown"}, Args.Command) then
        toggles.nocooldown = true
        toggles.fasternocooldown = true
        game.StarterGui:SetCore("SendNotification", {
            Title = "Faster No CoolDown";
            Text = "FASTER No CoolDown is now ON!";
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end

    if IsInTable({"god","inffairy","godmode","semigod"}, Args.Command) then
        if Args[1] == "others" then
            for i,v in pairs(game.Players:GetPlayers()) do
                if not IsInTable(LoopTables.godmode, v.Name) and v ~= game.Players.LocalPlayer then
                    table.insert(LoopTables.godmode, v.Name)
                end
            end
            return
        end
        if Args[1] == "all" then
            for i,v in pairs(game.Players:GetPlayers()) do
                if not IsInTable(LoopTables.godmode, v.Name) then
                    table.insert(LoopTables.godmode, v.Name)
                end
            end
            return
        end
        local Target = nil
        if Args[1] == "me" or Args[1] == "myself" or Args[1] == nil or IsInTable({"healme","repairme","restoreme"}, Args.Command) then
            Target = game.Players.LocalPlayer
        elseif Args[1] == "random" then
            local Players = GetAlivePlayers()
            if Players[1] ~= nil then
                Target = Players[math.random(1,#Players)]
            end
        else
            Target = getplayer(Args[1])
        end
        if Target == nil then
            return
        end
        if not IsInTable(LoopTables.godmode, Target.Name) then
            table.insert(LoopTables.godmode, Target.Name)
        end
    end

    if IsInTable({"ungod","uninffairy","ungodmode","unsemigod"}, Args.Command) then
        if Args[1] == "others" or Args[1] == "all" then
            for i = 1,#LoopTables.godmode do
                if Args[1] == "others" and LoopTables.godmode[i] ~= string.lower(game.Players.LocalPlayer.Name) then
                    table.remove(LoopTables.godmode, 1)
                else
                    table.remove(LoopTables.godmode, 1)
                end
            end
            return
        end
        if Args[1] == "me" or Args[1] == "myself" or Args[1] == nil then
            Args[1] = game.Players.LocalPlayer.Name
        end
        for i,v in pairs(LoopTables.godmode) do
            if string.lower(string.sub(v, 0,#Args[1])) == string.lower(Args[1]) then
                table.remove(LoopTables.godmode, i)
            end
        end
    end

    if IsInTable({"semiinvis","invis","inv"}, Args.Command) then
        invis()
    end

    if IsInTable({"unsemiinvis","uninvis","uninv"}, Args.Command) then
        
    end

end)

mouse.KeyDown:Connect(function(key)
    if key == "r" then
        local Target = GetClosestPlayer()
        if Target ~= nil then
            damage(Target.Character, 1000) -- thank you egg salad
        end
    end
    if key == "t" then
        if game.Players.LocalPlayer.Character ~= nil then
            heal(game.Players.LocalPlayer.Character, 1000)
        end
    end
    if key == "h" then
        toggles.draw = true
    end
    for i,v in pairs(hotkeys) do
        if i == key then
            v()
        end
    end
end)

mouse.KeyUp:Connect(function(key)
    if key == "h" then
        toggles.draw = false
    end
end)

game:GetService('RunService').Stepped:Connect(function()
    if debounces.loopkill == false then
        debounces.loopkill = true
        for i,v in pairs(LoopTables.loopkill) do
            if game.Players:FindFirstChild(v) then
                local Target = game.Players:FindFirstChild(v)
                if Target.Character ~= nil then
                    damage(Target.Character, 1000) -- thank you egg salad
                end
            end
        end
        debounces.loopkill = false
    end
end)
game:GetService('RunService').Stepped:Connect(function()
    if debounces.loopheal == false then
        debounces.loopheal = true
        for i,v in pairs(LoopTables.loopheal) do
            if game.Players:FindFirstChild(v) then
                local Target = game.Players:FindFirstChild(v)
                if Target.Character ~= nil then
                    heal(Target.Character, 1000)
                end
            end
        end
        debounces.loopheal = false
    end
end)
game:GetService('RunService').Stepped:Connect(function()
    if debounces.loopapply == false then
        debounces.loopapply = true
        for i,v in pairs(LoopTables.loopapply) do
            if game.Players:FindFirstChild(i) then
                local Player = game.Players[i]
                for x,y in pairs(LoopTables.loopapply[i]) do
                    if Player ~= nil then
                        if Player.Character ~= nil then
                            applyeffect(Player.Character, x)
                        end
                    end
                end
            end
        end
        debounces.loopapply = false
    end
end)
game:GetService('RunService').Stepped:Connect(function()
    if debounces.nocooldown == false and toggles.nocooldown == true and mainscriptenv ~= nil and toset.Critical ~= nil then
        debounces.nocooldown = true
        pcall(function()
            debug.setupvalue(mainscriptenv.usingattack, toset.Attack, 0)
            debug.setupvalue(mainscriptenv.usingability1, toset.First, 0)
            debug.setupvalue(mainscriptenv.usingability2, toset.Second, 0)
            debug.setupvalue(mainscriptenv.usingcritical, toset.Critical, 0)
            if toggles.fasternocooldown == true then
                setbools()
            end
        end)
        debounces.nocooldown = false
    end
    if toggles.draw == true then
        local l__Remotes__13 = game.ReplicatedStorage.Remotes
        local l__LocalPlayer__2 = game.Players.LocalPlayer
        local l__Character__4 = game.Players.LocalPlayer.Character
        local l__ability2b__41 = game.ReplicatedStorage.Classes.JUGGERNAUT.Projectile.ability2b;
        local v42 = mouse.Hit
        local v43 = l__ability2b__41:Clone();
        v43.Owner.Value = l__LocalPlayer__2;
        v43.Origin.Value = v42.p;
        v43.CFrame = v42;
        v43.Color = l__LocalPlayer__2.CharacterColors.WeaponColor.Value;
        v43.Speed.Value = v43.Speed.Value;
        local l__ProjectileHandler__44 = v43.ProjectileHandler;
        l__ProjectileHandler__44.Projectile.Value = v43;
        l__ProjectileHandler__44.Parent = l__Character__4;
        v43.Parent = workspace;
        l__Remotes__13.Projectile:FireServer(l__ability2b__41, v42, l__LocalPlayer__2.CharacterColors.WeaponColor.Value);
    end -- ripped this straight out of the decompiled juggernaut main localscript.
end) -- was too lazy to change the variable names

--[[
game:GetService('RunService').Stepped:Connect(function()
    if debounces.nocooldown == false and toggles.nocooldown == true and mainscriptenv ~= nil and toset.Critical ~= nil then
        debounces.nocooldown = true
        pcall(function()
            debug.setupvalue(mainscriptenv.usingattack, toset.Attack, 0)
            debug.setupvalue(mainscriptenv.usingability1, toset.First, 0)
            debug.setupvalue(mainscriptenv.usingability2, toset.Second, 0)
            debug.setupvalue(mainscriptenv.usingcritical, toset.Critical, 0)
            for i,v in pairs(CooldownBools) do
                CooldownBools[i] = false
            end
        end)
        debounces.nocooldown = false
    end
end)
--]]

game:GetService('RunService').Stepped:Connect(function()
    --if debounces.godmode == false then
        debounces.godmode = true
        for i,v in pairs(LoopTables.godmode) do
            if game.Players:FindFirstChild(v) then
                local Target = game.Players:FindFirstChild(v)
                if Target.Character ~= nil then
                    forcefield(Target.Character)
                    heal(Target.Character, 1000)
                end
            end
        end
        --wait()
        debounces.godmode = false
    --end
end) -- I used multiple connections on the run event. Piss and cry

game.StarterGui:SetCore("SendNotification", {
    Title = "Done injecting!";
    Text = "Critical Strike Mega-Script by Aidez";
    Icon = "rbxassetid://847562022";
    Duration = 3;
})
game.StarterGui:SetCore("SendNotification", {
    Title = "F9 to see commands";
    Text = "Press F9 to see a list of all the script's features!";
    Icon = "rbxassetid://2541869220";
    Duration = 7;
})


print("----------------FEATURES-------------------")
print("Chat commands can also be done as /e :COMMANDNAME or /e COMMANDNAME")
print("-------------------------------------------")
print("---------KEYS---------")
print("")
print("R Key - kills the player closest to your mouse")
print("T Key - heals yourself")
print("H Key - Draw")
print("")
print("---------CHAT COMMANDS---------")
print("Shortened names work")
print("-------------------------------")
print("")
print(":kill PLAYERNAME - Kills the target player")
print(":kill others - Kills everyone else")
print(":kill random - Kills a random player")
print(":kill random NUMBER - Kills a certain amount of random players")
print("")
print(":loopkill PLAYERNAME - Kills the player at the start of each round")
print(":loopkill others - Loopkills everyone")
print(":unloopkill PLAYERNAME - Unloopkills the player")
print(":unloopkill all - Removes everyone from the loopkill list")
print(":lks - Prints a list of people being loopkilled")
print("")
print(":1v1 PLAYERNAME - Kills everyone BUT you and the target player")
print(":1v1 random - Kills everyone except you and a random player")
print(":1v1 PLAYERNAME PLAYERNAME - Kills everyone but the two players")
print("")
print(":damage PLAYERNAME NUMBER - Takes away a certain amount of health from the player")
print(":damage PLAYERNAME random - Takes away a random amount of health from the player")
print(":damage PLAYERNAME 1/NUMBER - Takes away a fraction of a player's health")
print(":damage others (ABOVE OPTIONS) - Same things as above, just to other players")
print(":damage all (ABOVE OPTIONS) - Same things as above, just to ALL players")
print("")
print(":heal PLAYER - Fully heals PLAYER (put me for PLAYER to do yourself)")
print(":heal PLAYER NUMBER - Heals PLAYER by NUMBER (put me for PLAYER to do yourself)")
print(":heal PLAYER random - Heals PLAYER by a random amount")
print("")
print(":heal random - Fully heals a random player")
print(":heal random NUMBER - Heals a random player by NUMBER")
print(":heal random random - Heals a random player by a random amount")
print("")
print(":healme - Fully heals you")
print(":healme NUMBER - Heals yourself by NUMBER")
print(":healme random - Heals yourself by a random amount")
print("")
print(":apply PLAYER EFFECT - Applies the effect to player")
print(":apply others EFFECT - Applies the effect to others")
print(":apply all EFFECT - Applies the effect to everyone")
print("- You can do :apply PLAYER EFFECT NUMBER to add NUMBER effects -")
print('- PLAYER and EFFECT can be replaced with "random" -')
print("")
print(":effects - Prints the names of all the effects that can be used with :apply")
print(":effects CLASSNAME - Prints the classname's list of effects")
print(":effects SearchTerm - Prints effect names with your term inside them")
print("- USE THIS TO FIND EFFECTS TO APPLY TO PLAYERS -")
print("")
print(":loopapply PLAYER EFFECT - rapidly adds EFFECT to PLAYER")
print(":loopapply others EFFECT - rapidly adds EFFECT to other players")
print(":loopapply all EFFECT - rapidly adds EFFECT to everyone")
print("")
print(":unloopapply PLAYER - removes ALL looped effects on the player")
print(":unloopapply PLAYER EFFECT - stops looping EFFECT on PLAYER")
print(":unloopapply all - Stops looping all looped effects")
print("")
print(":bleed PLAYER - gives the PLAYER bleed")
print(":blind PLAYER - gives the PLAYER blindness")
print(":regen PLAYER - gives the PLAYER super regen")
print(":regen me - gives you super regen")
print("- These are simplified versions of the :apply command, for easy access -")
print("")
print("ZA WARUDO - saying this will give everyone the rewind effect")
print("")
print(":sethotkey KEY EFFECT - does EFFECT to the player nearest to your mouse when you press KEY")
print(":sethotkey KEY EFFECT me - First command but the effect applies to you")
print(":removehotkey KEY - removes the effect on KEY")
print("")
print(":nocooldown - Removes cooldowns on all your moves")
print(":fasternocooldown - Faster no cooldown, breaks some moves")
print(":cooldown - Adds the cooldowns back")
print("")
print(":god PLAYER - Gods the player")
print(":god - Gods YOU")
print("")
print(":ungod PLAYER - Ungods the player")
print(":ungod - Ungods YOU")
print("")
print(":invis - makes you semi-invisible")
print("")
print("-------------------------------------------")
print("Vortexturize | aidez moi#4192 | Aidez")
print("-------------------------------------------")


--[[



 
 
                                                        ..                                          
                                     /yys.            `hMM/                                        
                    :ys:            `NMMMo            oMMM:                                        
                  `sMMMm             -oo:            `NMMy                                          
                 .hMMMMM+                            +MMN`        `.-::.              `            
                -mMMyoMMN.         /hho       .:syhhomMMs       -smNMMMNy  `shysssssyhdho          
               :mMMs``dMMd`        NMMm     .smMNdhdMMMM.     `sNMNs:/MMM. `ydmmmmddMMMN+          
              +NMMs   -MMMs       :MMM/    +NMNs-  .MMMy     .dMMd- -yMMy    `````/hMMy-            
            `yMMMmosyhdMMMM+      yMMm    yMMN:   `yMMM/     dMMN+odNMd/        :hMNy:              
           -dMMMMMMmmdhyhMMM+     NMMo   /MMM-   :dMMMM-    :MMMMNmho-``:/    :hNMh-                
          +NMMm//-..``  `hMMMo`  -MMM/   yMMm``:hNMyMMM+.-- :MMMy.` `-omMd` /dMMmo/+oooo/`          
         oMMMh.          `yMMMm/ :MMMs   +MMMmmMNh: hMMNNNy  yMMMmhdmNMm+`:dMMMMNNNNmNMMMo          
         :yh+`            `/dNNs `ydh:    :shys/.   `+yso-`   :shddhy+-` oNMNho:-..```.-/`  
 
Join my discord here!:
https://discord.gg/Ez2dGeQ


A bit of credit to Egg Salad
I wouldn't have checked out critical strike again if I didn't see the script they made.
I also essentially **stole** their code for the kill script. Even if I changed it a lot.
- Check out their v3rm: https://v3rmillion.net/member.php?action=profile&uid=459543
- Check out their kill all script: https://v3rmillion.net/showthread.php?tid=1038402

- Also check out MY v3rmillion: https://v3rmillion.net/member.php?action=profile&uid=482542
- and the script's thread: https://v3rmillion.net/showthread.php?tid=1050099
 
--]]
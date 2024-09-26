-- https://www.roblox.com/games/14044547200/untitled-tag-game-recode
local celery = false -- if set to true the script will only load neccessary parts
local beforerole = {}
local beforerole2 = {}
local localplr = game.Players.LocalPlayer
local stopdoingit = false
local stopdoingit2 = false
function tagplr(plr,alone)
    pcall(function()
        local origrole = plr.PlayerRole.Value
        local origpos = localplr.Character:GetPivot()
        local beforehealth = plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health
        repeat
            task.wait()
            localplr.Character:PivotTo(plr.Character:GetPivot())
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("game"):WaitForChild("tags"):WaitForChild("TagPlayer"):InvokeServer(plr.Character.Humanoid,Vector3.new(math.random(1000000000,1000000000000)/1000000000000, math.random(1000000000,1000000000000)/1000000000000, math.random(1000000000,1000000000000)/1000000000000))
        until plr.PlayerRole.Value ~= origrole or stopdoingit == true or (alone and beforehealth > (plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health)) or (plr and plr:FindFirstChild("PlayerRole") and plr.PlayerRole.Value == "Dead") or (plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.HumanoidRootPart.Velocity.Magnitude > 500)
        stopdoingit = false
        localplr.Character:PivotTo(origpos)
    end)
end
local values = game:GetService("ReplicatedStorage"):FindFirstChild("Values")
getgenv().deletewhendupefound = true
print("loading lib")
if not getgenv().bgcolor then
	getgenv().bgcolor = Color3.fromRGB(60,60,60)
end
if not getgenv().deletewhendupefound then
	getgenv().deletewhendupefound = false
end
local lib = loadstring(game:HttpGet("https://pastebin.com/raw/A2Wf3WVh"))()
lib.makelib("Untitled Tag Game (2AreYouMental110)")
local main = lib.maketab("Main")

lib.maketoggle("Toggle Cursor",main,function(bool)
    game:GetService("UserInputService").MouseIconEnabled = bool
end)
lib.makebutton("Stop Tagging",main,function()
    stopdoingit = true
end)
local selectedplr = nil
local rolecolors = {}
local plrdd2 = nil
local plrdd = lib.makedropdown("Tag Player",main,{},function(splr)
    splr = string.sub(splr,(string.find(splr,"|") or -2)+2)
    selectedplr = game.Players:FindFirstChild(splr) or nil
    if selectedplr then
        tagplr(selectedplr)
    end
end)
local plrddadded = plrdd.ScrollingFrame.ChildAdded:Connect(function(v)
    if v:IsA("TextButton") then
        repeat task.wait(0) until v.Text ~= "Button"
    	local splr = string.sub(v.Text,(string.find(v.Text,"|") or -2)+2)   
    	selectedplr = game.Players:FindFirstChild(splr) or nil
    	if selectedplr and selectedplr:FindFirstChild("PlayerRole") and rolecolors[selectedplr.PlayerRole.Value] then
        	local tc3 = rolecolors[selectedplr.PlayerRole.Value]
        	tc3 = Color3.new(tc3.R/2,tc3.G/2,tc3.G/2)
        	v.BackgroundColor3 = tc3
       		local t = 0
        		repeat
            		task.wait();
            		t = t + 1
            		v.BackgroundColor3 = tc3
        	until t > 10
    	end
    end
end)
function updatedd()
    local plrtable = {}
    local plrroles = {}
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= localplr then
            plrroles[v.DisplayName.." | "..v.Name] = v:FindFirstChild("PlayerRole")
            table.insert(plrtable,v.DisplayName.." | "..v.Name)
        end
    end
    lib.updatedropdown(plrdd,plrtable)
    if plrdd2 ~= nil then
        table.insert(plrtable,"All")
        lib.updatedropdown(plrdd2,plrtable)
    end
end
local plradded = game.Players.PlayerAdded:Connect(function(plr)
    updatedd()
end)
local plrremove = game.Players.PlayerRemoving:Connect(function(plr)
    updatedd()
end)
updatedd()
print("tag player done")
local extra
if celery == false then -- last resort
extra = lib.maketab("Extras")
local rolestable = {}
local rolestable2 = {}
pcall(function()
    local roles = require(game:GetService("ReplicatedFirst").content.Roles)
    for i,v in pairs(roles) do
        table.insert(rolestable,i)
        table.insert(rolestable2,i:lower())
        if typeof(v) == "table" and v.ShirtColor then
            rolecolors[i] = v.ShirtColor
        end
    end
end)
print("pcall done")
print("roles loaded")
local selectedrole = nil
local roledd = lib.makedropdown("Roles",main,{},function(srole)
    selectedrole = srole
end)

local labelload = lib.makelabel("Loading other stuff..",main)
print("role dropdown create")
table.sort(rolestable2,function(a,b)
    return a < b
end)
local rolestable3 = {}
for i,v in pairs(rolestable) do
    for i2,v2 in pairs(rolestable2) do
        if v:lower() == v2 then
            rolestable3[i2] = v
        end
    end
end
lib.updatedropdown(roledd,rolestable3)
print("updated role dd")
for i,v in pairs(roledd.ScrollingFrame:GetChildren()) do
    if v:IsA("TextButton") and rolecolors[v.Text] then
        local tc3 = rolecolors[v.Text]
        tc3 = Color3.new(tc3.R/2,tc3.G/2,tc3.B/2)
        v.BackgroundColor3 = tc3
        coroutine.wrap(function()
            local t = 0
            repeat
                task.wait()
                t = t + 1
                v.BackgroundColor3 = tc3
            until t > 10
        end)()
    end
end
lib.makebutton("Tag Role",main,function()
    local plrtotag = nil
    for i,v in pairs(game.Players:GetPlayers()) do
        if v:FindFirstChild("PlayerRole") and v.PlayerRole.Value == selectedrole and v.Character and v.Character:FindFirstChild("Humanoid") then
            plrtotag = v
        end
    end
    tagplr(plrtotag)
end)
print("roles done")
local plrroletag = lib.makedropdown("Tag Player in Role",main,{},function(splr)
    splr = string.sub(splr,(string.find(splr,"|") or -2)+2)
    tagplr(game.Players[splr])
end)
local plrroletagadded = plrroletag.ScrollingFrame.ChildAdded:Connect(function(v)
    if v:IsA("TextButton") then
        local tc3 = rolecolors[selectedrole]
        tc3 = Color3.new(tc3.R/2,tc3.G/2,tc3.B/2)
        v.BackgroundColor3 = tc3
        local t = 0
        repeat
            task.wait()
            t = t + 1
            v.BackgroundColor3 = tc3
        until t > 10
    end
end)
function updateroledd(nowait)
    local plrroles = {}
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= localplr then
            plrroles[v.DisplayName.." | "..v.Name] = v:FindFirstChild("PlayerRole")
        end
    end
    for i,v in pairs(plrroletag.ScrollingFrame:GetChildren()) do
        if v:IsA("TextButton") then
            local tc3 = rolecolors[selectedrole]
            tc3 = Color3.new(tc3.R/2,tc3.G/2,tc3.B/2)
            v.BackgroundColor3 = tc3
        end
    end
end
function updateroleplayers()
    print("updateroleplrs")
    local plrsrole = {}
    if selectedrole then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v:FindFirstChild("PlayerRole") and v.PlayerRole.Value == selectedrole then
                table.insert(plrsrole,v.DisplayName.." | "..v.Name)
            end
        end
    end
    lib.updatedropdown(plrroletag,plrsrole)
end
local allowsus = false
lib.maketoggle("Allow Obvious Exploits",main,function(bool)
    allowsus = bool
end)
pcall(function()
--------------https://v3rmillion.net/showthread.php?tid=1090447---------
local nolavadamage = false
local BlockedRemotes = {
    "ContactDamage"
}
local Events = {
    Fire = true, 
    Invoke = true, 
    FireServer = true, 
    InvokeServer = true,
}

local gameMeta = getrawmetatable(game)
local psuedoEnv = {
    ["__index"] = gameMeta.__index,
    ["__namecall"] = gameMeta.__namecall;
}
setreadonly(gameMeta, false)
gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...)
    if Events[index] then
        for i,v in pairs(BlockedRemotes) do
            if v == self.Name and not checkcaller() and nolavadamage then return nil end
        end
    end
    return psuedoEnv.__index(self, index, ...)
end)
--------------
lib.maketoggle("No acid/lava damage",main,function(bool)
    nolavadamage = bool
end)
end)
lib.updatelabel("Loaded!",labelload)
end
print("almost everything done")
local autotag = false
function checktag()
        if localplr.Character then
            local gamemode = values.Gamemode.Value
            local roletag = "Runner"
            local localplrrole = localplr.PlayerRole.Value
            if gamemode == "Juggernaut" then
                if allowsus then
                    roletag = "Juggernaut"
                else
                    roletag = nil
                    stopdoingit = true
                end
            elseif gamemode == "Crown" or gamemode == "SoloCrown" then
                roletag = "Crown"
            elseif gamemode == "GuardedCrown" then
                if localplrrole == "Knight" then
                    roletag = "Peasant"
                else
                    roletag = "Crown"
                end
            elseif gamemode == "Chaos" then
                if localplrrole == "Runner" or localplrrole == "Frozen" then
                    roletag = nil
                    stopdoingit = true
                end
            elseif gamemode == "Intermission" or gamemode == "Voting" then
                roletag = nil
                stopdoingit = true
            elseif gamemode == "TeamFreeze" then
                if localplrrole == "Red Team" then
                    roletag = "BlueTeam"
                else
                    roletag = "RedTeam"
                end
            elseif gamemode == "FFA" or gamemode == "InfFFA" then
                roletag = "FFATagger"
            end
            return roletag
        end
        return nil
end
lib.maketoggle("Auto Tag",main,function(bool)
    autotag = bool
    while autotag do
        wait(.1)
        if localplr.Character then
            local gamemode = values.Gamemode.Value
            local roletag = checktag()
            local localplrrole = localplr.PlayerRole.Value
            if (localplr.PlayerRole.Value ~= roletag or roletag == "FFATagger") or roletag == nil then
                local plrtotag = {}
                local nocd = {}
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= localplr and v:FindFirstChild("PlayerRole") and v.PlayerRole.Value == roletag and v.Character and v.Character:FindFirstChild("Humanoid") then
                        local foundhighlight = false
                        if not v.Character:FindFirstChild("NTBHighlight",true) then
                            table.insert(nocd,v)
                        end
                        table.insert(plrtotag,v)
                    end
                end
                if #nocd > 0 then
                    tagplr(nocd[math.random(#nocd)],roletag == "FFATagger")
                elseif #plrtotag > 0 then
                    tagplr(plrtotag[math.random(#plrtotag)])
                end
            end
        end
    end
end)
if not celery then
lib.makelabel("Fling script by AnthonyIsntHere",extra)
lib.makebutton("Stop Flinging",extra,function()
    stopdoingit2 = true
end)
--https://scriptblox.com/script/Universal-Script-FLING-ALL-SCRIPT-17590 thank you!
function flingplr(plr)
local Targets = {plr} -- "All", "Target Name", "arian_was_here"

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end
        
        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
        
        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait or (TargetPlayer and TargetPlayer:FindFirstChild("PlayerRole") and TargetPlayer.PlayerRole.Value == "Dead") or stopdoingit2 == true
        end
        
        workspace.FallenPartsDestroyHeight = 0/0
        
        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
        
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        
        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("Error Occurred", "Target is missing everything", 5)
        end
        
        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        
        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error Occurred", "Random error", 5)
    end
end

if not Welcome then Message("Script by AnthonyIsntHere", "Enjoy!", 5) end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        if stopdoingit2 == true then continue end
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if stopdoingit2 == true then continue end
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then -- lol bro be power trippin
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Error Occurred", "Username Invalid", 5)
    end
end
stopdoingit2 = false
end
plrdd2 = lib.makedropdown("Fling Player",extra,{},function(splr)
    splr = string.sub(splr,(string.find(splr,"|") or -2)+2)
    selectedplr = game.Players:FindFirstChild(splr) or nil
    if selectedplr then
        flingplr(splr)
    end
end)
local plrddadded2 = plrdd2.ScrollingFrame.ChildAdded:Connect(function(v)
    if v:IsA("TextButton") then
        repeat task.wait(0) until v.Text ~= "Button"
    	local splr = string.sub(v.Text,(string.find(v.Text,"|") or -2)+2)   
    	selectedplr = game.Players:FindFirstChild(splr) or nil
    	if selectedplr and selectedplr:FindFirstChild("PlayerRole") and rolecolors[selectedplr.PlayerRole.Value] then
        	local tc3 = rolecolors[selectedplr.PlayerRole.Value]
            tc3 = Color3.new(tc3.R/2,tc3.G/2,tc3.G/2)
        	v.BackgroundColor3 = tc3
       		local t = 0
            repeat
            	task.wait();
            	t = t + 1
            	v.BackgroundColor3 = tc3
        	until t > 10
    	end
    end
end)
lib.makelabel("The fling player dropdown might take a while...",extra)
local antivoidbtn = nil
antivoidbtn = lib.makebutton("Execute Anti-Void Script",extra,function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Anti-Void-Script-18124"))()
    antivoidbtn:Destroy() -- SELF DESTRUCT!!!
end)
end
local updateroles = true
lib.ondestroyedfunc = function()
    plradded:Disconnect()
    plrremove:Disconnect()
    plrroletagadded:Disconnect()
    plrddadded:Disconnect()
    autotag = false
    stopdoingit = true
    updateroles = false
end
if getgenv().dontexecinfyield == nil then loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end
print("finished!")
while updateroles do
    wait(1)
    updateroleplayers()
    updateroledd()
end 
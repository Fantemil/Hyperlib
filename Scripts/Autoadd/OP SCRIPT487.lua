--[[ how to use
say "startauto" to start the bot
say "stopauto" to stop the bot
say "turnoff" to turn off everything
say "turnon" to turn on everything
say "autoenlighten" to spam get enlightens (when you are holding it)
say "stopautoenlighten" to stop autoenlighten
say "autotalk" then put a whatever after to automatically say the text privately
say "stopautotalk" to stop autotalk
say "stopantifreeze" to stop anti-freeze (useful if you already have enlighten)
say "startantifreeze" to start anti-freeze
say "stopantiglitch" to stop anti-glitch 
say "startantiglitch" to start anti-glitch
say "stopantifling" to stop anti-fling
say "startantifling" to start anti-fling
say "stopantistun" to stop anti-stun (to make your fly not buggy)
say "startantistun" to start anti-stun
say "stopantiafk" to stop anti-afk (not reset when your time doesnt go up)
say "startantiafk" to start anti-afk

if you are away, get an account that is friended with yours and you can do
"YOURPLAYERNAME stop." to stop it
"YOURPLAYERNAME start." to start it
"YOURPLAYERNAME say (whatever you want)" to make it say stuff


if you are not using the bot, you can use the features of it that include:
Anti-glitch
Anti-fling
Anti-jail
Anti-freeze
Anti-afk
Anti-blind
Anti-stun
Anti-invis
Anti-toxify
Anti-blur
Anti-nocolor (idk what it is)
Anti-void (prevents you from falling into the void, however if u are going really fast then most likely u will die)
Anti-glow (touching a person with glow will no longer kill you)

WEBHOOKING:
Put the webhook you want below and optional, the person you will tag   ]]
local webhookurl = ""
local tagperson = "<@USERIDHERE>"
-- it will tell you when you've disconnected, your time is losing, or the admin changes

local fpsdiv = 2.5 -- kinda like an fps cap but setting this higher may result in you falling in the void

local antifreeze = true
local antistun = true
local antiglitch = true
local antiafk = true
local antifling = true
wait(0.5)local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())end)

if getgenv().thechosenonescriptdisable then
    getgenv().thechosenonescriptdisable()
end

local localplr = game.Players.LocalPlayer
local automessage = false
local off = false

function isadmin(plr)
    print(plr.Team == game.Teams.Admin)
    if plr.Team == game.Teams.Admin then return true end
    print(plr.Backpack:FindFirstChild("The Arkenstone") or plr.Character:FindFirstChild("The Arkenstone"))
    if plr.Backpack:FindFirstChild("The Arkenstone") or plr.Character:FindFirstChild("The Arkenstone") then return true end
    local found = false
    for i,v in pairs(workspace:GetChildren()) do
        if v.Name == "The Arkenstone" and v.Handle:FindFirstChild("TouchInterest") then
            found = true
        end
    end
    return found
end
function getadmin()
    if localplr.Team ~= game.Teams.Admin and localplr.Character and not localplr.Character:FindFirstChild("The Arkenstone") and not localplr.Backpack:FindFirstChild("The Arkenstone") then
        local found = false
        for i,v in pairs(workspace:GetChildren()) do
            if found then
                
            elseif v.Name == "The Arkenstone" and v.Handle:FindFirstChild("TouchInterest") then
                found = v
            end
        end
        if found and localplr.Character and localplr.Character:FindFirstChild("HumanoidRootPart") then
            task.spawn(function()
                repeat
                    wait()
                    found.Handle.CFrame = localplr.Character.HumanoidRootPart.CFrame
                    found.Handle.ForceField.CFrame = localplr.Character.HumanoidRootPart.CFrame
                until not found or not found:FindFirstChild("Handle") or localplr.Character:FindFirstChild("The Arkenstone")
                repeat
                    wait()
                    if localplr.Character:FindFirstChild("The Arkenstone") then
                        localplr.Character:FindFirstChild("The Arkenstone").Parent = localplr.Backpack
                    end
                until not localplr.Character:FindFirstChild("The Arkenstone")
                return true
            end)
        end
    end
end
function equipadmin()
    if localplr.Team ~= game.Teams.Admin and not localplr.Character:FindFirstChild("The Arkenstone") then
        local tool = localplr.Backpack:FindFirstChild("The Arkenstone")
        if tool then
            tool.Parent = localplr.Character
        end
    end
end
local totalk = nil
local chat = nil
pcall(function()
    chat = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain"))
end)
function say(text,channel)
    coroutine.wrap(function()
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(text,channel or "All")
        wait(.5)
        if chat then
            chat.MessagePosted:fire(text)
        end
    end)()
end
local autoenlighten = false
local connect1 = {}
local playertimes = {}
function partadded(part)
    if part:IsA("BasePart") and not off then
        part.CanTouch = false
        part.CanQuery = false
        table.insert(connect1,part:GetPropertyChangedSignal("CanTouch"):Connect(function()
            part.CanTouch = false
            part.CanQuery = false
        end))
        table.insert(connect1,part:GetPropertyChangedSignal("CanQuery"):Connect(function()
            part.CanTouch = false
            part.CanQuery = false
        end))
    end
end
function doplr(plr)
    if off then return end
    local speaker = plr.Name
    if plr:IsFriendsWith(localplr.UserId) and isadmin(localplr) then
        getadmin()
        equipadmin()
        say("enlighten "..speaker,"System")
    end
    if not playertimes[speaker] then
        playertimes[speaker] = 0
    end
    table.insert(connect1,plr:GetPropertyChangedSignal("Team"):Connect(function()
        if plr.Team == game.Teams.Admin then
            webhook("NEW ADMIN! "..plr.Name.."/"..plr.DisplayName,tonumber(0xFFFF00))
        end
    end))
    if plr.Name ~= localplr.Name then
        table.insert(connect1,plr.CharacterAdded:Connect(function(char)
            table.insert(connect1,char.ChildAdded:Connect(function(v) partadded(v) end))
            for i,v in pairs(char:GetChildren()) do
                partadded(v)
            end
        end))
    end
    table.insert(connect1,plr.Chatted:Connect(function(text)
        local text = text:lower()
        if speaker ~= localplr.Name then
            if text == localplr.Name:lower().." stop." and game.Players[speaker]:IsFriendsWith(localplr.UserId) then
                automessage = false
            elseif text == localplr.Name:lower().." start." and game.Players[speaker]:IsFriendsWith(localplr.UserId) then
                automessage = true
            elseif string.sub(text,1,string.len(localplr.Name:lower().." say")) == localplr.Name:lower().." say" and game.Players[speaker]:IsFriendsWith(localplr.UserId) then
                say(string.sub(text,string.len(localplr.Name:lower().." say ")+1),"All")
            end
        elseif plr == localplr then
            if text == "startauto" then
                automessage = true
            elseif text == "stopauto" then
                automessage = false
            elseif text == "turnoff" then
                off = true
            elseif text == "turnon" then
                off = false
            elseif text == "stopantifreeze" then
                antifreeze = false
            elseif text == "startantifreeze" then
                antifreeze = true
            elseif text == "stopantiglitch" then
                antiglitch = false
            elseif text == "startantiglitch" then
                antiglitch = true
            elseif text == "stopantifling" then
                antifling = false
            elseif text == "startantifling" then
                antifling = true
            elseif text == "stopantistun" then
                antistun = false
            elseif text == "startantistun" then
                antistun = true
            elseif text == "stopantiafk" then
                antiafk = false
            elseif text == "startantiafk" then
                antiafk = true
            elseif text == "turnon" then
                off = false
            elseif text == "autoenlighten" then
                autoenlighten = true
            elseif text == "stopautoenlighten" then
                autoenlighten = false
            elseif string.sub(text,1,8) == "autotalk" then
                totalk = string.sub(text,10)
            elseif text == "stopautotalk" then
                totalk = nil
            end
        end
    end))
end
local connect2 = game.Players.PlayerAdded:Connect(function(plr)
    doplr(plr)
end)
function webhook(text,color)
    if webhookurl == "" then
        return
    elseif webhookurl ~= "" then
        text = tostring(text)
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
table.insert(connect1,game.CoreGui:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay").DescendantAdded:Connect(function(gui)
    if notifyondisconnect == true and gui.Name == "ErrorTitle" then
        gui:GetPropertyChangedSignal("Text"):Connect(function()
            if gui.Text == "Disconnected" then
                webhook("You Got Disconnected!",tonumber(0xFF0000))
            end
        end)
        if gui.Text == "Disconnected" then
            webhook("You Got Disconnected!",tonumber(0xFF0000))
        end
    end
end))
for i,plr in pairs(game.Players:GetPlayers()) do
    doplr(plr)
end
table.insert(connect1,workspace.ChildAdded:Connect(function(model)
    if model:IsA("Model") and string.find(model.Name,"Clone") then
        model.ChildAdded:Connect(function(v) partadded(v) end)
        for i,v in pairs(model:GetChildren()) do
            partadded(v)
        end
    end
end))
table.insert(connect1,workspace.Cubes.DescendantAdded:Connect(function(cube)
    if cube:IsA("Part") then
        cube.CanTouch = false
    end
end))
for i,cube in pairs(workspace.Cubes:GetDescendants()) do
    if cube:IsA("Part") then
        cube.CanTouch = false
    end
end
task.spawn(function()
    while wait(.25) do
        if not off then
            game.ReplicatedStorage.System:FireServer("Focused")
        end
    end
end)
task.spawn(function()
    while task.wait(.01) do
        if autoenlighten and not off then
            say("enlighten me","System")
        end
        if totalk ~= nil and not off then
            say(totalk,"System")
        end
    end
end)
function breakvel() -- https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source thanks!
    local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
	delay(1, function()
		BeenASecond = true
	end)
	while not BeenASecond do
		for _, v in ipairs(localplr.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Velocity, v.RotVelocity = V3, V3
			end
		end
		wait()
	end
end
task.spawn(function()
    while wait(.5) do
        if localplr.Character and not off then
            getadmin()
            game.ReplicatedStorage.System:FireServer("Input")
            if localplr.Character:FindFirstChild("HumanoidRootPart") and localplr.Character:FindFirstChild("Humanoid") and localplr.Character.HumanoidRootPart.Anchored == true and antifreeze then
                localplr.Character.Humanoid.Health = 0
            end
            if localplr.Character:FindFirstChild("Torso") and localplr.Character:FindFirstChild("Humanoid") and localplr.Character.Torso.Transparency == 1 and antifreeze then
                localplr.Character.Humanoid.Health = 0
            end
            if localplr.PlayerGui:FindFirstChild("BlindGUI") then
                localplr.PlayerGui.BlindGUI.Enabled = false
            end
            game.Lighting.Blur.Enabled = false
            game.Lighting.RGB.Enabled = false
            if localplr.Character:FindFirstChild("HumanoidRootPart") and (math.abs(localplr.Character.HumanoidRootPart.Position.X) > 10000 or math.abs(localplr.Character.HumanoidRootPart.Position.Y) > 10000 or math.abs(localplr.Character.HumanoidRootPart.Position.Z) > 10000) and antifling then
                localplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
                localplr.Character:PivotTo(CFrame.new(0,200,0))
                breakvel()
            end
            if localplr.Character:FindFirstChild("HumanoidRootPart") and (math.abs(localplr.Character.HumanoidRootPart.Position.Y) > 100000) and antiglitch then
                localplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
                localplr.Character:PivotTo(CFrame.new(0,200,0))
                breakvel()
            end
            if localplr.Character:FindFirstChild("Humanoid") and (localplr.Character.Humanoid.PlatformStand == true or localplr.Character.Humanoid.Sit == true) and antistun then
                localplr.Character.Humanoid.PlatformStand = false
                localplr.Character.Humanoid.Sit = false
            end
            if localplr.Character:FindFirstChild("HumanoidRootPart") and localplr.Character.HumanoidRootPart.CollisionGroup == "NoClip" then
                for i,v in pairs(localplr.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CollisionGroup = "Default"
                    end
                end
            end
            if localplr.Character:FindFirstChild("Humanoid") then
                if localplr.Character.Humanoid.WalkSpeed <= 0 then
                    localplr.Character.Humanoid.WalkSpeed = 16
                    localplr.Character.Humanoid.JumpPower = 50
                end
            end
            if localplr.Character:FindFirstChild("Jail") then
                for i,v in pairs(localplr.Character.Jail:GetChildren()) do
                    v.CanCollide = false
                end
            end
        end
    end
end)
local origtime = localplr.leaderstats.Time.Value
local messages = {
    "Donate For Enlighten!",
    "donate for enlighten lol",
    "donate to me for enlighten",
    "donate 2 me for enlighten",
    "get enlighten if u donate to me",
    "Donate 4 Enlighten!",
    "plz donate, ill give enlighten",
    "Enlighten 4 sale!",
    "don 8 for enlighten",
    "lol donate for enlighten",
    "if u want enlighten just donate",
    "ENLIGHTEN FOR SALE! ONLY 500",
    "JUST DO IT. MAKE YOUR ENLIGHTEN SPAWN WITH A DONATION OF 500 TO ME"
}
task.spawn(function()
    while wait(15) do
        if not off then
            if automessage then
                local tosay = ""
                tosay = messages[math.random(1,#messages)]
                --[[if localplr.Character and localplr.Character:FindFirstChild("Muted") and localplr.Character.Muted:FindFirstChild("TextLabel") and localplr.Character.Muted.TextLabel.Visible == true and game.Teams.Admin:GetPlayers()[1] then
                    tosay = "/w "..game.Teams.Admin:GetPlayers()[1].Name.." "..tosay
                end]]
                say(tosay,"All")
            end
            if localplr.Character and localplr.Character:FindFirstChild("Humanoid") then
                if localplr.leaderstats.Time.Value <= origtime and antiafk then
                    localplr.Character.Humanoid.Health = 0
                    if localplr.leaderstats.Time.Value == origtime then
                        webhook("Your time is not changing! Time Difference: "..tostring(localplr.leaderstats.Time.Value-origtime),tonumber(0xFF0000))
                    else
                        webhook("You are losing time! Time Difference: "..tostring(localplr.leaderstats.Time.Value-origtime),tonumber(0xFF0000))
                    end
                elseif automessage then
                    localplr.Character.Humanoid:MoveTo(Vector3.new(math.random(-50,50),100,math.random(-50,50)))
                end
            end
            origtime = localplr.leaderstats.Time.Value
        end
    end
end)
-- copied straight outta infectious smile lol
local gui = Instance.new("ScreenGui")
gui.Name = ""
for i=1,50 do
    gui.Name = gui.Name..tostring(math.random(1,9))
end
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui
local mainframe = Instance.new("Frame")
mainframe.BackgroundColor3 = Color3.fromRGB(50,50,50)
mainframe.BorderColor3 = Color3.fromRGB(255,255,255)
mainframe.Size = UDim2.new(.3,0,.45,0)
mainframe.Position = UDim2.new(.35,0,.275,0)
mainframe.Active = true
mainframe.Draggable = true
mainframe.Parent = gui
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,.1,0)
title.Text = "Enlighten Logger"
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(255,255,255)
title.BackgroundColor3 = Color3.fromRGB(50,50,50)
title.BorderColor3 = Color3.fromRGB(255,255,255)
title.Parent = mainframe
local credits = Instance.new("TextLabel")
credits.Size = UDim2.new(1,0,.05,0)
credits.Position = UDim2.new(0,0,.1,0)
credits.Text = "By 2AreYouMental110"
credits.TextScaled = true
credits.TextColor3 = Color3.fromRGB(255,255,255)
credits.BackgroundColor3 = Color3.fromRGB(50,50,50)
credits.BorderColor3 = Color3.fromRGB(255,255,255)
credits.Parent = mainframe
local keyloggersection = Instance.new("ScrollingFrame")
keyloggersection.BackgroundColor3 = Color3.fromRGB(50,50,50)
keyloggersection.BorderColor3 = Color3.fromRGB(255,255,255)
keyloggersection.Size = UDim2.new(1,0,.86,0)
keyloggersection.Position = UDim2.new(0,0,.15,0)
keyloggersection.CanvasSize = UDim2.new(0,0,8,0)
keyloggersection.Parent = mainframe
local constraint = Instance.new("UIAspectRatioConstraint")
constraint.AspectType = Enum.AspectType.ScaleWithParentSize
constraint.Parent = keyloggersection
constraint.AspectRatio = 1.5
local gridlayout = Instance.new("UIGridLayout")
gridlayout.CellPadding = UDim2.new(0,0,0.005,0)
gridlayout.CellSize = UDim2.new(.32,0,.025,0)
gridlayout.Parent = keyloggersection
local tableofconnections = {}
local gui2 = nil
function updateamt(plr)
    eamt = 0
    if plr.Character then
        for i,v in pairs(plr.Character:GetChildren()) do
            if v:IsA("Tool") and v.Name == "The Arkenstone" then
                eamt = eamt + 1
            end
        end
    end
    if plr.Backpack then
        for i,v in pairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.Name == "The Arkenstone" then
                eamt = eamt + 1
            end
        end
    end
    return eamt
end
function dologs(plr)
    plr:WaitForChild("Backpack",5)
    local plrkeys = {}
    local keylogframe = Instance.new("Frame")
    local plrtext = Instance.new("TextLabel")
    local enlightenamt = Instance.new("TextLabel")
    local eamt = 0
    keylogframe.BackgroundColor3 = Color3.fromRGB(50,50,50)
    keylogframe.BorderColor3 = Color3.fromRGB(255,255,255)
    keylogframe.Name = plr.Name
    plrtext.Size = UDim2.new(1,0,.5,0)
    plrtext.TextScaled = true
    plrtext.Text = plr.Name.." / "..plr.DisplayName
    plrtext.BackgroundColor3 = Color3.fromRGB(50,50,50)
    plrtext.BorderSizePixel = 0
    plrtext.TextColor3 = Color3.fromRGB(255,255,255)
    plrtext.Parent = keylogframe
    table.insert(tableofconnections,plr:GetPropertyChangedSignal("Team"):Connect(function()
        if plr.Team == game.Teams.Admin then
            plrtext.TextColor3 = Color3.fromRGB(255,255,0)
        else
            plrtext.TextColor3 = Color3.fromRGB(255,255,255)
        end
    end))
    if plr.Team == game.Teams.Admin then
        plrtext.TextColor3 = Color3.fromRGB(255,255,0)
    else
        plrtext.TextColor3 = Color3.fromRGB(255,255,255)
    end
    enlightenamt.Size = UDim2.new(1,0,.5,0)
    enlightenamt.Position = UDim2.new(0,0,.5,0)
    enlightenamt.TextScaled = true
    enlightenamt.Text = "Arkenstones: "..tostring(eamt)
    enlightenamt.BackgroundColor3 = Color3.fromRGB(50,50,50)
    enlightenamt.BorderColor3 = Color3.fromRGB(255,255,255)
    enlightenamt.TextColor3 = Color3.fromRGB(255,255,255)
    enlightenamt.Parent = keylogframe
    keylogframe.Parent = keyloggersection
    task.spawn(function()
        while plr and gui do
            wait(.1)
            eamt = updateamt(plr)
            enlightenamt.Text = "Arkenstones: "..tostring(eamt)
            if eamt > 0 then
                enlightenamt.TextColor3 = Color3.fromRGB(160,160,255)
            else
                enlightenamt.TextColor3 = Color3.fromRGB(255,255,255)
            end
        end
    end)
end
for i,v in pairs(game.Players:GetPlayers()) do
    dologs(v)
end
table.insert(tableofconnections,game.Players.PlayerAdded:Connect(function(v)
    dologs(v)
end))
table.insert(tableofconnections,game.Players.PlayerRemoving:Connect(function(plr)
    for i,v in pairs(keyloggersection:GetChildren()) do
        if v.Name == plr.Name then
            v:Destroy()
        end
    end
end))
gui2 = Instance.new("ScreenGui")
gui2.Name = ""
for i=1,50 do
    gui2.Name = gui2.Name..tostring(math.random(1,9))
end
gui2.ResetOnSpawn = false
gui2.Parent = game.CoreGui
local mainframe2 = Instance.new("TextLabel")
mainframe2.BackgroundColor3 = Color3.fromRGB(50,50,50)
mainframe2.BorderColor3 = Color3.fromRGB(255,255,255)
mainframe2.Size = UDim2.new(.1,0,.05,0)
mainframe2.Position = UDim2.new(.45,0,.475,0)
mainframe2.Active = true
mainframe2.Draggable = true
mainframe2.Text = "Chat When Muted"
mainframe2.TextScaled = true
mainframe2.TextColor3 = Color3.fromRGB(255,255,255)
mainframe2.Parent = gui2
local textbox = Instance.new("TextBox")
textbox.Position = UDim2.new(0,0,1,0)
textbox.Size = UDim2.new(1,0,2,0)
textbox.Text = ""
textbox.PlaceholderText = "Type Here to Chat!"
textbox.TextScaled = true
textbox.TextColor3 = Color3.fromRGB(255,255,255)
textbox.BackgroundColor3 = Color3.fromRGB(50,50,50)
textbox.BorderColor3 = Color3.fromRGB(255,255,255)
textbox.Parent = mainframe2
table.insert(tableofconnections,textbox.FocusLost:Connect(function()
    say(textbox.Text)
end))
local mainframe3 = Instance.new("TextLabel")
mainframe3.BackgroundColor3 = Color3.fromRGB(50,50,50)
mainframe3.BorderColor3 = Color3.fromRGB(255,255,255)
mainframe3.Size = UDim2.new(.1,0,.075,0)
mainframe3.Position = UDim2.new(.45,0,.4,0)
mainframe3.Active = true
mainframe3.Draggable = true
mainframe3.Text = "Available Arkenstones: 0"
mainframe3.TextScaled = true
mainframe3.TextColor3 = Color3.fromRGB(255,255,255)
mainframe3.Parent = gui2
function updatearkenstones()
    local amt = 0
    for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Tool") and v.Name == "The Arkenstone" then
           amt = amt + 1
        end
    end
    mainframe3.Text = "Available Arkenstones: "..tostring(amt)
end
updatearkenstones()
table.insert(tableofconnections,workspace.ChildAdded:Connect(updatearkenstones))
table.insert(tableofconnections,workspace.ChildRemoved:Connect(updatearkenstones))
function disablefunc()
    autoenlighten = false
    automessage = nil
    gui:Destroy()
    gui2:Destroy()
    for i,v in pairs(connect1) do
        v:Disconnect()
    end
    for i,v in pairs(tableofconnections) do
        v:Disconnect()
    end
    connect2:Disconnect()
    off = true
end
getgenv().thechosenonescriptdisable = disablefunc
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Script done!",
    Text = "Script done!"
})
if getgenv().deletescript123456lol69 ~= nil then
	getgenv().deletescript123456lol69()
end
local sentnotif = false
local startergui = game:GetService("StarterGui")
function prompt(message,yesorno,yesfunc)
	local success,err = pcall(function()
		if yesorno ~= nil and yesfunc ~= nil then
			local bindfunc = Instance.new("BindableFunction")
			bindfunc.OnInvoke = function(buttonname)
				if buttonname == "Yes" then
					yesfunc()
					sentnotif = false
				end
			end
			startergui:SetCore("SendNotification",{
				Title = "Notification",
				Text = message,
				Duration = 5,
				Callback = bindfunc,
				Button1 = "Yes",
				Button2 = "No"
			})
			wait(5)
			sentnotif = false
		else
			startergui:SetCore("SendNotification",{
				Title = "Notification",
				Text = message,
				Duration = 5
			})
		end
	end)
    print(success,err)
end
local destroyheight = workspace.FallenPartsDestroyHeight
workspace.FallenPartsDestroyHeight = -50000
local dhoffset = 5
local dhto = 25 
local destroyheightnew = destroyheight + dhoffset
local localplr = game.Players.LocalPlayer
local connectsextra = {}
local charcframe = nil
local tpcframe = nil
local stopped = false
function dochar(character)
	coroutine.wrap(function()
		repeat task.wait() print("waiting for humanoid") until character:FindFirstChildWhichIsA("Humanoid")
		local hum = character:FindFirstChildWhichIsA("Humanoid")
		local state = hum:GetState()
		table.insert(connectsextra,hum.StateChanged:Connect(function(old,new)
			state = new
		end))
		local oldstate = nil
		while hum ~= nil and hum.Parent ~= nil and not stopped do
			task.wait()
			if state ~= oldstate and (state ~= Enum.HumanoidStateType.Jumping and state ~= Enum.HumanoidStateType.Freefall) or (state == Enum.HumanoidStateType.Running or state == Enum.HumanoidStateType.Landed) then
				tpcframe = charcframe
			end
			oldstate = state
		end
	end)()
end
local character = game.Players.LocalPlayer.Character
local characteradded = localplr.CharacterAdded:Connect(function(character2)
	character = character2
	dochar(character2)
end)
dochar(character)
function fixchar(part)
	if character then
		local piv = character:GetPivot()
		character:PivotTo(CFrame.new(piv.Position.X,destroyheight+dhto+character:GetExtentsSize().Y,piv.Position.Z))
	end
	if part then
		part.AssemblyLinearVelocity = Vector3.new(0,0,0)
		if character then
			for i,v in pairs(character:GetChildren()) do
				if v:IsA("BasePart") then
					v.AssemblyLinearVelocity = Vector3.new(0,0,0)
				end
			end
		end
	end
	if tpcframe ~= nil and sentnotif == false then
		sentnotif = true
		prompt("Teleport back to last touched (buggy)",true,function()
			if character then
				character:PivotTo(tpcframe)
			end
			if part then
				part.AssemblyLinearVelocity = Vector3.new(0,0,0)
			end
		end)
	end
end
local stepped = game:GetService("RunService").Stepped:Connect(function()
	if character ~= nil and character:FindFirstChildWhichIsA("BasePart") then
		local part = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChildWhichIsA("BasePart")
		local cfr = (character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart.CFrame) or character:GetPivot()
		charcframe = cfr
		if cfr.Position.Y < destroyheightnew then
			fixchar(part)
		end
		local partvel = part.AssemblyLinearVelocity
		if (partvel.Y/fpsdiv) + part.Position.Y < destroyheightnew then
			fixchar(part)
		end
	end
end)
prompt("Anti-Void Loaded!")
getgenv().deletescript123456lol69 = function()
	workspace.FallenPartsDestroyHeight = destroyheight
	characteradded:Disconnect()
	stepped:Disconnect()
	for i,v in pairs(connectsextra) do
		v:Disconnect()
	end
	stopped = true
end
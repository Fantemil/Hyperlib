--// Rewrote By YellowGreg \\-- 
--// Original Creator: FionaWolfgang \\--




--// Version of Whitelisted System i guess
local version = "1.0"
--// Variables  
local players = game:GetService("Players")
local user = players.LocalPlayer
local name = user.Name
local a = Instance.new("Message",workspace)
a.Name = "Anti Stuff"

 
--// Blacklisted Username[Also these are random account that are Blacklisted]
local BL = {
"Gregjohndoeguest666",
"Hellopeople292929",
}
--// Blacklisted Code
BLACKLISTED=false
table.foreach(BL,function(a,b)
    if name == tostring(b) then BLACKLISTED=true
       table.foreach(workspace:GetChildren(),function(a,b) if b.Name == "Anti Stuff" then b:Destroy() end end)
       user:Kick('Sorry, It appears you are blacklisted! '..name..'  DM YellowGreg#7993 for appeal.')
       game.StarterGui:SetCore('SendNotification', {Title='Blacklisted'; Text='Player : '..game:GetService("Players").LocalPlayer.Name..' You are Blacklisted!'})
       end       
end)
--// Whitelisted Username[Also these are random account that are Whitelisted]
local WL = {
"Randomash8091",
"Randomash8092",
"Randomash8093",
"Randomash8094",
"Randomash8095",
"Randomash8096",
}
--// Whitelisted Code
table.foreach(WL,function(a,b)
    if name == tostring(b) and not BLACKLISTED then WHITELISTED=true end
end)
if WHITELISTED then
    game.StarterGui:SetCore('SendNotification', {Title='Certified Premium'; Text='Player : '..name..' You are Whitelisted! Your script will execute in a second.'})
a.Text = "Whitelisted!"
elseif not WHITELISTED and not BLACKLISTED then
    user:Kick('It appears you arent whitelisted! '..name..' Try to DM YellowGreg#7993  in discord')
    a.Text = "Not Whitelisted, DM YellowGreg#7993 to be Whitelisted."
end

--// Anti Crash Script \\--
function AntiCrash()
function Part1()
game:GetService("RunService").RenderStepped:connect(function() 
    table.foreach(user.Backpack:GetChildren(),function(a,b) if b.Name == "-" then game.StarterGui:SetCore('SendNotification', {Title='AntiCrash'; Text='Hey '..name..'! Someone tried to crash you!'}) end end)
end)
end
function nou()
    aa=Instance.new("Model",workspace);a.Name=name
    Instance.new("Humanoid",aa)
    b=Instance.new("Part",aa);b.Name="Torso";b.CanCollide=false;b.Transparency=1
    user.Character=aa
end
function aaa()
game:GetService("RunService").RenderStepped:connect(function() 
    table.foreach(user.Backpack:GetChildren(),function(a,b) if b.Name == "-" then nou() end end)
end)
end
game:GetService("RunService").RenderStepped:connect(function() 
    table.foreach(user.Backpack:GetChildren(),function(a,b) if b.Name == "-" then user.Backpack:ClearAllChildren() end end)
end)
Part1()
aaa()
game.StarterGui:SetCore('SendNotification', {Title='AntiCrash'; Text='Hey '..name..'! AntiCrash ran successfully'})
a.Text = "(Might not work) Anti Crash loaded"
end

--// FE Checker \\--
function FEChecker()
FE = game:GetService("Workspace").FilteringEnabled
if FE == true then
game.StarterGui:SetCore('SendNotification', {Title='FilteringEnabled'; Text='Hey '..name..'! Filtering is enabled! D:'})
a.Text = "Game is FilteringEnabled"
else
game.StarterGui:SetCore('SendNotification', {Title='FilteringEnabled'; Text='Hey '..name..'! Filtering is disabled! :D'})
a.Text = "Game is FilteringDisabled"
end
end

--// Anti Fling Script \\--
function AntiFling()
function Part2()
game:GetService("RunService").RenderStepped:connect(function()
table.foreach(user.Character:GetDescendants(),function(a,b) if b:IsA("BodyForce") then game.StarterGui:SetCore('SendNotification', {Title='AntiFling'; Text='Hey '..name..'! Someone attempted to fling you!'}) end end)
    table.foreach(user.Character:GetDescendants(), function(a,b) if b:IsA("BodyForce") then user.Character.Humanoid.Sit = false end end)
end)
end
game:GetService("RunService").RenderStepped:connect(function()
    table.foreach(user.Character:GetDescendants(),function(a,b) if b:IsA("BodyForce") then b:Destroy() end end)
end)
Part2()
game.StarterGui:SetCore('SendNotification', {Title='AntiFling'; Text='Hey '..name..'! AntiFling ran successfully'})
a.Text = "Anti Fling Loaded"
end

--// Anti Freeze Script \\--
function AntiFreeze()
function Part3()
game:GetService("RunService").RenderStepped:connect(function()
table.foreach(user.Character:GetDescendants(),function(a,b) if b.Name == "Torso" and b.Anchored then 
game.StarterGui:SetCore('SendNotification', {Title='AntiFreeze'; Text='Hey '..name..'! Someone tried to freeze you!'}) end end)
end)
end
    game:GetService("RunService").RenderStepped:connect(function()
        table.foreach(user.Character:GetDescendants(),function(a,b) if b:IsA("Part") and b.Anchored then b.Anchored = false end end)
    end)
Part3()
game.StarterGui:SetCore('SendNotification', {Title='AntiFreeze'; Text='Hey '..name..'! AntiFreeze ran successfully'})
a.Text = "Anti Freeze Loaded"
end

--// Anti Punish Script \\--
function AntiPunish()
game:GetService("RunService").Stepped:connect(function()
    if user.Character then
        if user.Character.Parent~=workspace then
            user.Character.Parent=workspace
            game.StarterGui:SetCore('SendNotification', {Title='AntiPunish'; Text='Hey '..name..'! Someone tried to punish you! (or you died xd)'})
        end
    end
end)
game.StarterGui:SetCore('SendNotification', {Title='AntiPunish'; Text='Hey '..name..'! AntiPunish ran successfully'})
a.Text = "Anti Punish Loaded"
end

--// Anti Punish Clone Deleter \\--
function CloneDelete()
game:GetService("RunService").RenderStepped:connect(function()
for i,v in pairs(workspace:GetChildren()) do
    if v.Name==game:GetService("Players").LocalPlayer.Name then
        if game:GetService("Players").LocalPlayer.Character~=v then
            v:Destroy()
            game.StarterGui:SetCore('SendNotification', {Title='CloneDeleter'; Text='Hey '..name..'! Clone Deletion was successful'})
 
        end
    end
end
end)
game.StarterGui:SetCore('SendNotification', {Title='CloneDeleter'; Text='Hey '..name..'! CloneDeleter ran successfully'})
a.Text = "Clone deleter loaded"
end

wait(1)
if WHITELISTED then
AntiCrash()
wait(4)
FEChecker()
wait(4)
AntiFling()
wait(4)
AntiFreeze()
wait(4)
AntiPunish()

print("Made By: YellowGreg")
wait(2)
table.foreach(workspace:GetChildren(),function(a,b) if b.Name == "Anti Stuff" then b:Destroy() end end)
warn("This Script Could Have Some Bug")
warn("Whitelisted System Version "..version.."")
end

print("Script Here")
--[[
Script Here
]]--
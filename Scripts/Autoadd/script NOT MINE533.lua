local plr = game.Players.LocalPlayer
local library = loadstring(game:HttpGet('https://pastebin.com/raw/vPWzQEC8'))()
local window_player = library.window("player")
local window_farm = library.window("autofarm")
local window_teleport = library.window("waypoints")
local window_admin = library.window("admin watch")

function touch(toucher,touched)
   firetouchinterest(toucher,touched,0)
   wait()
   firetouchinterest(toucher,touched,1)
end

local admins = {
   67274501,
   1571749405,
   1418570886,
   1377639986,
}

local cam = workspace.CurrentCamera

local alertadmin = true
window_admin.toggle("alert if admin",alertadmin,function(bool)
   alertadmin = bool
end)

local admintext = window_admin.label("admins: NOBODY!!!")

local adminsinserver = {}
function isadmin(who)
   if table.find(admins,who.UserId) then
       table.insert(adminsinserver,who.Name)
       
       if alertadmin then
           local ss = Instance.new("Sound",game.CoreGui)
           game:GetService("Debris"):AddItem(ss,5)
           ss.SoundId = "rbxassetid://9062380528"
           ss.Volume = 1
           ss:Play()
       end
       
       spawn(function()
           repeat wait() until not who:IsDescendantOf(game.Players)
           table.remove(adminsinserver,table.find(adminsinserver,who.Name))
       end)
   end
end

spawn(function()
   for i,who in pairs(game.Players:GetPlayers()) do
       isadmin(who)
   end
end)

game.Players.PlayerAdded:Connect(function(who)
   isadmin(who)
end)

local selectedplayer = nil
local label_player
window_player.textbox("player name",function(txt)
   for i,v in pairs(game.Players:GetPlayers()) do
       local us = v.Name:lower():sub(1,txt:len()) == txt:lower():sub(1,txt:len())
       local ds = v.DisplayName:lower():sub(1,txt:len()) == txt:lower():sub(1,txt:len())
       
       if us or ds then
           selectedplayer = v
           label_player.changetext("@"..v.Name)
       end
   end
end)

local meleetool = nil
label_player = window_player.label("nobody")
local label_tool = window_player.label("no weapon")

window_player.button("select weapon",function()
   meleetool = plr.Character:FindFirstChildOfClass("Tool")
   label_tool.changetext(meleetool.Name)
end)

window_player.button("kill player",function()
   if meleetool and selectedplayer then
       while wait() and selectedplayer.Character and selectedplayer.Character.Humanoid.Health > 0 do
           if not meleetool:IsDescendantOf(plr.Character) then
               plr.Character.Humanoid:EquipTool(meleetool)
           end
           cam.CameraSubject = selectedplayer.Character.Humanoid
           
           local dmg = meleetool:FindFirstChild("damager") or meleetool:FindFirstChild("punchy")
           wait()
           meleetool:Activate()
           wait()
           touch(dmg,selectedplayer.Character.PrimaryPart)
       end
       label_player.changetext("player died")
       cam.CameraSubject = plr.Character.Humanoid
   end
end)

local playerinfo = window_player.label("no info")

window_player.button("info",function()
   local c = selectedplayer.Character
   local farthings = c.farthings.Value
   local pence = c.pence.Value
   local shillings = c.shillings.Value
   local pounds = c.pounds.Value
   
   playerinfo.changetext(farthings.." farthings "..pence.." pence\n"..shillings.." shillings "..pounds.." pounds")
end)

window_teleport.button("armory",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-403,7,-267))
end)

window_teleport.button("doctors office",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-691,7,-261))
end)

window_teleport.button("bank",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-585,7,-124))
end)

window_teleport.button("museum",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-102,7,-93))
end)

window_teleport.button("black market",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-1038,7,-240))
end)


window_teleport.button("workbench A",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-533,-37,-82))
end)

window_teleport.button("workbench B",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-713,7,-302))
end)

window_teleport.button("workbench C",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-409,7,-129))
end)

window_teleport.button("workbench D",function()
   plr.Character:SetPrimaryPartCFrame(CFrame.new(-297,7,33))
end)

local enable_farmtrash = false
window_farm.toggle("trash farm (look down)",enable_farmtrash,function(bool)
   enable_farmtrash = bool
   
   local ogpos = plr.Character.PrimaryPart.CFrame
   if enable_farmtrash then
       while enable_farmtrash and wait() do
           for i,v in pairs(workspace:GetChildren()) do
               if v.Name == "trashpile" then
                   local p = v.trashcore.ProximityPrompt
                   
                   if p.Enabled then
                       plr.Character:SetPrimaryPartCFrame(v.trashcore.CFrame+Vector3.new(0,2,0))
                       p.HoldDuration = 0
                       wait()
                       repeat wait()
                           p:InputHoldBegin()
                           p:InputHoldEnd()
                       until p.Enabled == false
                       wait()
                       p.HoldDuration = 5
                   end
               end
           end
       end
   else
       plr.Character:SetPrimaryPartCFrame(ogcframe)
   end
end)

window_player.label(string.rep("-",29))

local enable_grabmoney = false
window_player.toggle("steal dropped money",enable_grabmoney,function(bool)
   enable_grabmoney = bool
end)

local loopwalkspeed = 16
window_player.textbox("walkspeed",function(t)
   if tonumber(t) then
       loopwalkspeed = tonumber(t)
   else
       loopwalkspeed = 16
   end
end)

local enable_gfx = false
window_player.toggle("no screen effects",enable_gfx,function(bool)
   enable_gfx = bool
end)

local enable_jump = false
window_player.toggle("no jump cooldown",enable_jump,function(bool)
   enable_jump = bool
end)

game:GetService("RunService").RenderStepped:Connect(function()
   if loopwalkspeed and loopwalkspeed ~= "" then
       plr.Character.Humanoid.WalkSpeed = loopwalkspeed
   end
   
   if enable_jump then
       plr.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
   end
   
   if enable_gfx then
       local c = plr.PlayerGui.healthgui
       c.chills.Visible = false
       c.poopoo.Visible = false
   end
   admintext.changetext("admins: ".. table.concat(adminsinserver," "))
   
   for i,v in pairs(workspace:GetChildren()) do
       if v.Name == "moneybag" or v.Name == "pound" or v.Name == "shilling" or v.Name == "penny" or v.Name == "farthing" then
           if enable_grabmoney and plr.Character.Humanoid.Health > 0 then
               repeat wait()
                   touch(plr.Character.PrimaryPart,v)
               until not v:IsDescendantOf(workspace)  
           end
       end  
   end
end)
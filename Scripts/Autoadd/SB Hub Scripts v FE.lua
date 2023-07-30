--//Logs (V16 Unfinished Update)
--//Added Credits
--//Tons of Scripts will be OP if this development finished
--//Bug Bashing, Bug Banning
--//Fixed
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--//dont skid below or the hub wont load it because if u skid them the tabs will dissapear or possibly will crash, More danger if you are in hydrogen/fluxus (mobile) if u skid it itll crash the app!
print("load/c_c/<")print("OBB1EOAX")print("12")print("12load")print("12load")
print("dont delete!")print("LOCALvVvvvvvVVV(service)))")print("O00053O00023O")print("")print("shit-UA4Ij1Siiii31")
print("xy7RDnAeaAzj")print("LOL!023O000trollEF30A3O006C6F6")print("IIlIIIIllllIIllllIIIIIIIIIIIIIIIIIIlllllllllllllllllIIIIIllllllllllllllllllllllllllllllIaxxxx21IIIIIIIIIIlllllllIIIIIIIIIIIIIIIIIIIIlllllllllllllllllIIIIIIIIIIII32x")print("")print("V3RMILLION")
print("d4RtH61")print("Ds1, E")print("\225\254\254\209\248\243\245\214", "\149\145\144\164\181\254\54\221\65\90\198\138\68\180\47\61\65\246\0\200\17\148\121\188\116\53\234\86\64];v10 = _G[v7(\200\207\66\248\134\220", "\187\187\48\145\232\168\48\130\74\203\88\227\56\219\168print")
print("41GS_!22LI")print("--")print("--")print("")print("IIIIIIIIIIIIIIIIIIIIIIIIIlllllllllllllllllllllllIIIIIIIIIllllllllllllllllllllllllllllllllIIIIIIIlllllllaxxxx21IIIIIIIIIIIIIIllllllllllll(v3rmillion/////64")
print("v14.5b517000001x")print("e-loader")print("")print("(en,")print("en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(en(1)))))))))))))))))))))))))))))))))))))))))))),true/////////////////////////////////////////86")
--//-------------------Dont tryna skid below haha i see you!----------------------------
local args = {
    [1] = "Coded by Drip_SogusLegends at Roblox!",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
wait()
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({Name = "Slap Battles Catmemer Hub! V16 | Testing Version", HidePremium = false,IntroText = "WELCOME TO CATMEMER HUBS", SaveConfig = true, ConfigFolder = "OrionTest"})
local SBTab = Window:MakeTab({
	Name = "Slap Battles Scripts",
	Icon = "rbxassetid://1265989384",
	PremiumOnly = false
})
local OPTab = Window:MakeTab({
	Name = "OP Hubs",
	Icon = "rbxassetid://11818627075",
	PremiumOnly = false
})
local MoreTab = Window:MakeTab({
	Name = "More Scripts",
	Icon = "rbxassetid://5826570428",
	PremiumOnly = false
})
local CreditTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://8365693026",
	PremiumOnly = false
})
SBTab:AddButton({
	Name = "Instant 250 Killstreak (Use if u had ks)",
	Callback = function()
      		loadstring(game:HttpGet("https://gist.githubusercontent.com/CatmemerAKAcatluga/f058cf7abc32df077e2f28bd26d43ec0/raw/817bfaf9f6eeefefcb320cc2db6d0eccd7547571/instant-250ks"))()
              game.Workspace.Gravity = 0
	end
})
SBTab:AddButton({
	Name = "Quick Spasm (SCP 1337) No Owner",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/eE67i3rK",true))();
	end

})
SBTab:AddButton({
	Name = "Quick Noclip, Rbxscripts.com",
	Callback = function()
      		local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
	end

})
SBTab:AddButton({
	Name = "Anti-Kick (Recommended, Use this script) Pastebin.com",
	Callback = function()
      		--// Cache

local getgenv, getnamecallmethod, hookmetamethod, newcclosure, checkcaller, stringlower = getgenv, getnamecallmethod, hookmetamethod, newcclosure, checkcaller, string.lower

--// Loaded check

if getgenv().ED_AntiKick then return end

--// Variables

local Players, StarterGui, OldNamecall = game:GetService("Players"), game:GetService("StarterGui")

--// Global Variables

getgenv().ED_AntiKick = {
	SendNotifications = true, -- Set to true if you want to get notified for every event
	CheckCaller = false -- Set to true if you want to disable kicking by other executed scripts
}

--// Main

OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
	if (getgenv().ED_AntiKick.CheckCaller and not checkcaller() or true) and stringlower(getnamecallmethod()) == "kick" then
		if getgenv().ED_AntiKick.SendNotifications then
			StarterGui:SetCore("SendNotification", {
				Title = "Exunys Developer",
				Text = "The script has successfully intercepted an attempted kick.",
				Icon = "rbxassetid://6238540373",
				Duration = 2,
			})
		end

		return nil
	end

	return OldNamecall(...)
end))

if getgenv().ED_AntiKick.SendNotifications then
	StarterGui:SetCore("SendNotification", {
		Title = "Exunys Developer",
		Text = "Anti-Kick script loaded!",
		Icon = "rbxassetid://6238537240",
		Duration = 3,
	})
end
	end    
})
SBTab:AddButton({
	Name = "Click TP Tool (Mobile/Pc) (OP) V3rmillion.net",
	Callback = function()
      		local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"

tool.Activated:Connect(function()
local root = plr.Character.HumanoidRootPart
local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
local offset = pos-root.Position
root.CFrame = root.CFrame+offset
end)

tool.Parent = plr.Backpack
	end
})
SBTab:AddButton({
	Name = "Click TP (Ctrl Click, PC) (OP) Rbxscripts.net",
	Callback = function()
      		local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
	end
})
SBTab:AddButton({
	Name = "Dizzy Hub (For Tycoon Autoclick) scriptblox.com",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
	end
})
SBTab:AddButton({
	Name = "R2O (For autofarming) (OP) Pastebin.com",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/cheesynob39/R20-EXPLOITER/main/Slap_Battles.lua"))()
	end
})
SBTab:AddButton({
	Name = "I recommend 30 fps !(Recommended)! Roblox Studio",
	Callback = function()
      		local RunService = game:GetService("RunService") local MaxFPS = 30 while true do local t0 = tick() RunService.RenderStepped:Wait() repeat until (t0 + 1/MaxFPS) < tick() end
	end
})
SBTab:AddButton({
	Name = "Touch Fling (Most OP) Pastebin.com",
	Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
    end
})
SBTab:AddButton({
	Name = "Fates Admin GitHub Gist",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
    end
})
SBTab:AddButton({
	Name = "VHUB simple Edition (OP) Pastebin.com",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Veincx5315/Created/VHub/Simple'), true))()
    end
})
SBTab:AddButton({
	Name = "Reviz Admin (Not working) Pastebin.com",
	Callback = function()
    loadstring(game:httpget("https://pastebin.com/RqaZUrBZ"),true)()
    end
})

SBTab:AddButton({
    Name = "Invisibility + Hide ur tag, Ghost required (OP, Troll) By catmemer#3428",
    Callback = function()
              local clickDetector = game.Workspace.Lobby.Ghost.ClickDetector
fireclickdetector(clickDetector)
wait(1)
game:GetService("ReplicatedStorage").Ghostinvisibilityactivated:FireServer()
	end
})

SBTab:AddButton({
    Name = "Invincibility FE, Golden Required (OP) By catmemer#3428",
    Callback = function()
               local clickDetector = game.Workspace.Lobby.Golden.ClickDetector
fireclickdetector(clickDetector)
    wait(1)
    local args = {
        [1] = true
    }
    game:GetService("ReplicatedStorage").Goldify:FireServer(unpack(args))
	end
})

SBTab:AddButton({
    Name = "Infinite Yield By EdgeIY",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end	  

})
OPTab:AddButton({
    Name = "Cheese GUI (Kill GUI) (Most OP at all),Not Patched! By catmemer#3428 and F20R",
    Callback = function()
      local lp = game:GetService("Players").LocalPlayer
 
local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end

local ScreenGui = Instance.new("ScreenGui")
local ui = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Username = Instance.new("TextBox")
local Kill = Instance.new("TextButton")
local ced = Instance.new("TextLabel")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ui.Name = "ui"
ui.Parent = ScreenGui
ui.Active = true
ui.BackgroundColor3 = Color3.new(0, 0, 0)
ui.BackgroundTransparency = 0
ui.BorderSizePixel = 3
ui.Position = UDim2.new(0.254972845, 0, 0.419703096, 0)
ui.Size = UDim2.new(0, 278, 0, 278)

title.Name = "title"
title.Parent = ui
title.BackgroundColor3 = Color3.new(68, 68, 68)
title.BackgroundTransparency = 1
title.BorderSizePixel = 2
title.Position = UDim2.new(0, 0, 0.0199999996, 0)
title.Size = UDim2.new(1, 0, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "Cheesy Ui"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

Frame.Parent = title
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.07, 0, 0.860000014, 0)
Frame.Size = UDim2.new(0.85, 0, 0, 6)

Username.Name = "F20 FR"
Username.Parent = ui
Username.BackgroundColor3 = Color3.new(1, 1, 1)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.100000001, 0, 0.300000012, 0)
Username.Size = UDim2.new(0.800000012, 0, 0, 50)
Username.Font = Enum.Font.SourceSans
Username.PlaceholderText = "Username"
Username.Text = "Put Player's Username to cheese em!"
Username.TextColor3 = Color3.new(0, 0, 0)
Username.TextScaled = true
Username.TextSize = 14
Username.TextWrapped = true

Kill.Name = "Stick"
Kill.Parent = ui
Kill.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Kill.BackgroundTransparency = 0
Kill.BorderSizePixel = 2
Kill.Position = UDim2.new(0.25, 0, 0.629999971, 0)
Kill.Size = UDim2.new(0.5, 0, 0, 45)
Kill.Font = Enum.Font.Gotham
Kill.Text = "CHEESE EM!"
Kill.TextColor3 = Color3.new(0, 0, 0)
Kill.TextScaled = true
Kill.TextSize = 10
Kill.TextWrapped = true
ui.Draggable = true

ced.Name = "made"
ced.Parent = ui
ced.BackgroundColor3 = Color3.new(68, 68, 68)
ced.BackgroundTransparency = 1
ced.BorderSizePixel = 2
ced.Position = UDim2.new(0, 0, 0.769999981, 0)
ced.Size = UDim2.new(1, 0, 0, 50)
ced.Font = Enum.Font.SourceSans
ced.Text = "Made by catmemer#3428"
ced.TextColor3 = Color3.new(1, 1, 1)
ced.TextScaled = true
ced.TextSize = 14
ced.TextWrapped = true

local function notif(str,dur)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "SubscribeF20FR";
    Text = str;})
Duration = dur or 3;
end

Kill.MouseButton1Click:Connect(function()
	local Player = gplr(Username.Text)
	if Player[1] then
		Player = Player[1]
          LocalPlayer = game.Players.LocalPlayer
          
         if LocalPlayer.Character.PrimaryPart ~= nil then
                local Character = LocalPlayer.Character
                local previous = LocalPlayer.Character.PrimaryPart.CFrame
                
                Character.Archivable = true
                local Clone = Character:Clone()
                LocalPlayer.Character = Clone
                wait(0.5)
                LocalPlayer.Character = Character
                wait(0.2)
                
                if LocalPlayer.Character and Player.Character and Player.Character.PrimaryPart ~= nil then
                    if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                        LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Destroy()
                    end
    
                    local Humanoid = Instance.new("Humanoid")
                    Humanoid.Parent = LocalPlayer.Character
    
                    local Tool = nil
    
                    if LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                        Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    elseif LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
                        Tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                    end
                    print(Tool)

                    if Tool ~= nil then
                        Tool.Parent = LocalPlayer.Backpack
                        
                        Player.Character.HumanoidRootPart.Anchored = true
                        
                        local Arm = game.Players.LocalPlayer.Character['Right Arm'].CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
                        Tool.Grip = Arm:ToObjectSpace(Player.Character.PrimaryPart.CFrame):Inverse()
                        
                        Tool.Parent = LocalPlayer.Character
                        Workspace.CurrentCamera.CameraSubject = Tool.Handle
              
                        repeat
                            wait()
                        until not Tool or Tool and (Tool.Parent == Workspace or Tool.Parent == Player.Character)
                        Player.Character.HumanoidRootPart.Anchored = false
                        wait(0.1)
                        Humanoid.Health = 0
                        LocalPlayer.Character = nil
                    end
                end
     
                spawn(function()
                LocalPlayer.CharacterAdded:Wait()
                Player.Character.HumanoidRootPart.Anchored = false
                if Player.Character.Humanoid.Health <= 15 then
                 notif("The requested user has been killed!")
                repeat wait() until LocalPlayer.Character.PrimaryPart ~= nil
                wait(0.4)
                LocalPlayer.Character:SetPrimaryPartCFrame(previous)
              end
           end)
       end
    end
end)

local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script = Instance.new('LocalScript', Kill)
	
	while wait() do
		script.Parent.BackgroundColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.BackgroundColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script2 = Instance.new('LocalScript', title)
	
	while wait() do
		script2.Parent.TextColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script2.Parent.TextColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script3 = Instance.new('LocalScript', Frame)
	
	while wait() do
		script3.Parent.BackgroundColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script3.Parent.BackgroundColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script4 = Instance.new('LocalScript', Frame)
	
	while wait() do
		script4.Parent.BackgroundColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script4.Parent.BackgroundColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
local function MOQC_fake_script() -- HackFrame.RGB_Script 
	local script5 = Instance.new('LocalScript', ced)
	
	while wait() do
		script5.Parent.TextColor3 = Color3.new(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script5.Parent.TextColor3 = Color3.new(255/255,0/255,i/255)
		end
	end
end
coroutine.wrap(MOQC_fake_script)()
end
	
})
OPTab:AddButton({
	Name = "Infinite Yield (Recommended, OP) By EdgeIY",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
	})
    

OPTab:AddButton({
	Name = "Instant 250 Killstreak (Will Crash if u Used another glove!) By catmemer#3428 Fixed by IMakedirectlink in discord",
	Callback = function()
      		game.Workspace.Gravity = 0
              loadstring(game:HttpGet("https://gist.githubusercontent.com/CatmemerAKAcatluga/f058cf7abc32df077e2f28bd26d43ec0/raw/817bfaf9f6eeefefcb320cc2db6d0eccd7547571/instant-250ks"))()
	end
})
OPTab:AddButton({
	Name = "Crash Server, FE (Not Patched, OP [The owner is not sure if this FE]) By Reestart",
	Callback = function()
      		--// made my reestart
--// Credit to Reestart
while wait(0.6) do --// don't change it's the best
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local function getmaxvalue(val)
   local mainvalueifonetable = 499999
   if type(val) ~= "number" then
       return nil
   end
   local calculateperfectval = (mainvalueifonetable/(val+2))
   return calculateperfectval
end
local function bomb(tableincrease, tries)
local maintable = {}
local spammedtable = {}
table.insert(spammedtable, {})
z = spammedtable[1]
for i = 1, tableincrease do
    local tableins = {}
    table.insert(z, tableins)
    z = tableins
end
local calculatemax = getmaxvalue(tableincrease)
local maximum
if calculatemax then
     maximum = calculatemax
     else
     maximum = 999999
end
for i = 1, maximum do
     table.insert(maintable, spammedtable)
end
for i = 1, tries do
     game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
end
end
bomb(250, 2) --// change values if client crashes
end
	end
})
OPTab:AddButton({
	Name = "UTG FE, Speedhacking or Abusing Scripts will get you banned Pastebin.com",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukez/Scripts/main/UTG%20V3%20RAW"))()
	end
})
OPTab:AddButton({
	Name = "CFrame Speed, Bypass speed! (Recommended) By CFrame",
	Callback = function()                         
--CFrame
local Settings = {
    Aimlock = {
        AimPart = "LowerTorso",
        AimlockKey = "Q",
        Prediction = 0.143,

        FOVEnabled = false,
        FOVShow = false,
        FOVSize = 30,

        Enabled = false
    },
    SilentAim = {
        Key = "C",
        AimAt = "LowerTorso",
        PredictionAmount = 0.139,

        FOVEnabled = false,
        FOVShow = false,
        FOVSize = 0,

        Enabled = false,
        KeyToLockOn = false
    },
    CFSpeed = {
        Speed = 2,
        
        Enabled = false,
        Toggled = false,

        Key = "Z"
    }
}

--// Variables (Service)

local Players = game:GetService("Players")
local RS = game:GetService("RunService")
local WS = game:GetService("Workspace")
local GS = game:GetService("GuiService")
local SG = game:GetService("StarterGui")
local UIS = game:GetService("UserInputService")

--// Variables (regular)

local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
local Camera = WS.CurrentCamera
local GetGuiInset = GS.GetGuiInset

local AimlockState = false
local aimLocked
local lockVictim

--// Anti-Cheat

--repeat wait() until LP.Character:FindFirstChild("FULLY_LOADED_CHAR");

for _,ac in pairs(LP.Character:GetChildren()) do
    if (ac:IsA("Script") and ac.Name ~= "Animate" and ac.Name ~= "Health") then
        ac:Destroy();
    end;
end;

LP.Character.ChildAdded:Connect(function(child)
    if (child:IsA("Script") and child.Name ~= "Animate" and ac.Name ~= "Health") then
        child:Destroy();
    end;
end);

--// CFrame Speed

local userInput = game:GetService('UserInputService')
local runService = game:GetService('RunService')

Mouse.KeyDown:connect(function(Key)
    local cfKey = Settings.CFSpeed.Key:lower()
    if (Key == cfKey) then
        if (Settings.CFSpeed.Toggled) then
            Settings.CFSpeed.Enabled = not Settings.CFSpeed.Enabled
            if (Settings.CFSpeed.Enabled == true) then
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Settings.CFSpeed.Speed
                    game:GetService("RunService").Stepped:wait()
                until Settings.CFSpeed.Enabled == false
            end
        end
    end
end)

--// FOV Circle

local fov = Drawing.new("Circle")
fov.Filled = false
fov.Transparency = 1
fov.Thickness = 1
fov.Color = Color3.fromRGB(255, 255, 0)

--// Functions

function updateLock()
    if Settings.Aimlock.FOVEnabled == true and Settings.Aimlock.FOVShow == true then
        if fov then
            fov.Radius = Settings.Aimlock.FOVSize * 2
            fov.Visible = Settings.Aimlock.FOVShow
            fov.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GS).Y)

            return fov
        end
    else
        Settings.Aimlock.FOVShow = false
        fov.Visible = false
    end
end

function WTVP(arg)
    return Camera:WorldToViewportPoint(arg)
end

function WTSP(arg)
    return Camera.WorldToScreenPoint(Camera, arg)
end

function getClosest()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        local notKO = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
        local notGrabbed = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
        
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild(Settings.Aimlock.AimPart) and notKO and notGrabbed then
            local pos = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            
            if (Settings.Aimlock.FOVEnabled) then
                if (fov.Radius > magnitude and magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            else
                if (magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
    end
    return closestPlayer
end

function sendNotification(text)
    game.StarterGui:SetCore("SendNotification", {
        Title = "hakan.software",
        Text = text,
        Duration = 5
    })
end

--// Checks if key is down

Mouse.KeyDown:Connect(function(k)
    local actualKey = Settings.Aimlock.AimlockKey:lower()
    if (k == actualKey) then
        if Settings.Aimlock.Enabled == true then
            aimLocked = not aimLocked
            if aimLocked then
                lockVictim = getClosest()

                sendNotification("Locked onto: "..tostring(lockVictim.Character.Humanoid.DisplayName))
            else
                if lockVictim ~= nil then
                    lockVictim = nil

                    sendNotification("Unlocked!")
                end
            end
        end
    end
end)

--// Loop update FOV and loop camera lock onto target

local localPlayer = game:GetService("Players").LocalPlayer
local currentCamera = game:GetService("Workspace").CurrentCamera
local guiService = game:GetService("GuiService")
local runService = game:GetService("RunService")

local getGuiInset = guiService.GetGuiInset
local mouse = localPlayer:GetMouse()

local silentAimed = false
local silentVictim
local victimMan

local FOVCircle = Drawing.new("Circle")
FOVCircle.Filled = false
FOVCircle.Transparency = 1
FOVCircle.Thickness = 2
FOVCircle.Color = Color3.fromRGB(200, 255, 128)
function updateFOV()
    if (FOVCircle) then
        if (Settings.SilentAim.FOVEnabled) then
            FOVCircle.Radius = Settings.SilentAim.FOVSize * 2
            FOVCircle.Visible = Settings.SilentAim.FOVShow
            FOVCircle.Position = Vector2.new(mouse.X, mouse.Y + getGuiInset(guiService).Y)

            return FOVCircle
        elseif (not Settings.SilentAim.FOVEnabled) then
            FOVCircle.Visible = false
        end
    end
end

function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild(Settings.SilentAim.AimAt) then
            local pos = currentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
            
            if (Settings.SilentAim.FOVEnabled == true) then
                if (FOVCircle.Radius > magnitude and magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            else
                if (magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
    end
    return closestPlayer
end

Mouse.KeyDown:Connect(function(k)
    local actualKey = Settings.SilentAim.Key:lower()
    if (k == actualKey) then
        if (Settings.SilentAim.KeyToLockOn == false) then
            return
        end
        if (Settings.SilentAim.Enabled) then
            silentAimed = not silentAimed
                
            if silentAimed then
                silentVictim = getClosestPlayerToCursor()
                sendNotification("Locked onto: " .. tostring(silentVictim.Character.Humanoid.DisplayName))
            elseif not silentAimed and silentVictim ~= nil then
                silentVictim = nil

                sendNotification('Unlocked')
            end
        end
    end
end)

runService.RenderStepped:Connect(function()
    updateFOV()
    updateLock()
    victimMan = getClosestPlayerToCursor()
    if Settings.Aimlock.Enabled == true then
        if lockVictim ~= nil then
            Camera.CFrame = CFrame.new(Camera.CFrame.p, lockVictim.Character[Settings.Aimlock.AimPart].Position + lockVictim.Character[Settings.Aimlock.AimPart].Velocity*Settings.Aimlock.Prediction)
        end
    end
end)

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}

    if Settings.SilentAim.Enabled and Settings.SilentAim.KeyToLockOn and silentAimed and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = silentVictim.Character[Settings.SilentAim.AimAt].Position+(silentVictim.Character[Settings.SilentAim.AimAt].Velocity*Settings.SilentAim.PredictionAmount)
        return old(unpack(args))
    elseif Settings.SilentAim.Enabled and not Settings.SilentAim.KeyToLockOn and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = victimMan.Character[Settings.SilentAim.AimAt].Position+(victimMan.Character[Settings.SilentAim.AimAt].Velocity*Settings.SilentAim.PredictionAmount)
        return old(unpack(args))
    end

    return old(...)
end)

----------------------------------------
local lib = loadstring(game:HttpGet("https://pastebin.com/raw/mSwV3R8V"))()
local main = lib:Init()
----------------------------------------

----------------------------------------
local Home = main:CreateTab("Home")
local Config = main:CreateTab("Config", "rbxassetid://6793572208")
local Misc = main:CreateTab("Misc", "rbxassetid://3192519002")
----------------------------------------

----------------------------------------
Home:CreateLabel("Welcome back!", false)
----------------------------------------

----------------------------------------
Config:CreateLabel("Config - Aimlock", true)
Config:CreateToggle("Enabled", function(state)
    Settings.Aimlock.Enabled = state
end)
Config:CreateBox("Prediction", 0.143, function(arg)
    Settings.Aimlock.Prediction = tonumber(arg)
end)
Config:CreateDropdown("AimPart", {'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso'}, 'LowerTorso', function(arg)
    Settings.Aimlock.AimPart = tostring(arg)
end)
Config:CreateToggle("FOV", function(state)
    Settings.Aimlock.FOVEnabled = state
end)
Config:CreateToggle("Show FOV", function(state)
    Settings.Aimlock.FOVShow = state
end)
Config:CreateSlider("FOV Size", 30, 0, 400, 1, function(arg)
    Settings.Aimlock.FOVSize = tonumber(arg)
end)
Config:CreateBind("Keybind", Enum.KeyCode.Q, function(arg)
    Settings.Aimlock.AimlockKey = arg
end)
----------------------------------------

----------------------------------------
Config:CreateLabel("Config - Silent", false)
Config:CreateToggle("Enabled", function(state)
    Settings.SilentAim.Enabled = state
end)
Config:CreateToggle("Key to lock on", function(state)
    Settings.SilentAim.KeyToLockOn = state
end)
Config:CreateBox("Prediction", 0.143, function(arg)
    Settings.SilentAim.PredictionAmount = tonumber(arg)
end)
Config:CreateDropdown("AimPart", {'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso'}, 'LowerTorso', function(arg)
    Settings.SilentAim.AimAt = tostring(arg)
end)
Config:CreateToggle("FOV", function(state)
    Settings.SilentAim.FOVEnabled = state
end)
Config:CreateToggle("Show FOV", function(state)
    Settings.SilentAim.FOVShow = state
end)
Config:CreateSlider("FOV Size", 30, 0, 400, 1, function(arg)
    Settings.SilentAim.FOVSize = tonumber(arg)
end)
Config:CreateBind("Keybind", Enum.KeyCode.Q, function(arg)
    Settings.SilentAim.Key = arg
end)
----------------------------------------

----------------------------------------
Misc:CreateLabel("Miscellaneous", false)
Misc:CreateToggle("CFS State", function(state)
    Settings.CFSpeed.Toggled = state
end)
Misc:CreateSlider("CFrame Speed", 2, 0, 10, 0.1, function(arg)
    Settings.CFSpeed.Speed = tonumber(arg)
end)
Misc:CreateBind("CFS Key", Enum.KeyCode.Z, function(arg)
    Settings.CFSpeed.Key = arg
end)
----------------------------------------
    end
})
MoreTab:AddButton({
    Name = "ARCEUS X V3 (real) By SPDM Team",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
    end
})
MoreTab:AddButton({
	Name = "Fly Gui (BYPASS SPEED, UNPATCHED) Remodeled by catmemer#3428, Credit to Ozone",
	Callback = function()                         
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton") 

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false 

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57) 

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000 

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000 

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "Bird Mode"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000 

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Im The Biggest Bird Gui v3"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true 

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true 

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true 

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true 

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position = UDim2.new(0, 0, -1, 27) 

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27) 

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false 

speeds = 1 

local speaker = game:GetService("Players").LocalPlayer 

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid") 

nowe = false 

game:GetService("StarterGui"):SetCore("SendNotification", { 
Title = "fly by catmemer";
Text = "catmemer#3428";
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5; 

Frame.Active = true -- main = gui
Frame.Draggable = true 

onof.MouseButton1Down:connect(function() 

if nowe == true then
nowe = false 

speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
else 
nowe = true



for i = 1, speeds do
spawn(function() 

local hb = game:GetService("RunService").Heartbeat


tpwalking = true
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
if hum.MoveDirection.Magnitude > 0 then
chr:TranslateBy(hum.MoveDirection)
end
end 

end)
end
game.Players.LocalPlayer.Character.Animate.Disabled = true
local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController") 

for i,v in next, Hum:GetPlayingAnimationTracks() do
v:AdjustSpeed(0)
end
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
end




if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0


local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
if nowe == true then
plr.Character.Humanoid.PlatformStand = true
end
while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
game:GetService("RunService").RenderStepped:Wait() 

if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0,0)
end
--game.Players.LocalPlayer.Character.Animate.Disabled = true
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
end
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Animate.Disabled = false
tpwalking = false




else
local plr = game.Players.LocalPlayer
local UpperTorso = plr.Character.UpperTorso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0


local bg = Instance.new("BodyGyro", UpperTorso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = UpperTorso.CFrame
local bv = Instance.new("BodyVelocity", UpperTorso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
if nowe == true then
plr.Character.Humanoid.PlatformStand = true
end
while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
wait() 

if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0,0)
end 

bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
end
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Animate.Disabled = false
tpwalking = false



end





end) 

local tis 

up.MouseButton1Down:connect(function()
tis = up.MouseEnter:connect(function()
while tis do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
end
end)
end) 

up.MouseLeave:connect(function()
if tis then
tis:Disconnect()
tis = nil
end
end) 

local dis 

down.MouseButton1Down:connect(function()
dis = down.MouseEnter:connect(function()
while dis do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
end
end)
end) 

down.MouseLeave:connect(function()
if dis then
dis:Disconnect()
dis = nil
end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
wait(0.7)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Animate.Disabled = false 

end)


plus.MouseButton1Down:connect(function()
speeds = speeds + 1
speed.Text = speeds
if nowe == true then


tpwalking = false
for i = 1, speeds do
spawn(function() 

local hb = game:GetService("RunService").Heartbeat


tpwalking = true
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
if hum.MoveDirection.Magnitude > 0 then
chr:TranslateBy(hum.MoveDirection)
end
end 

end)
end
end
end)
mine.MouseButton1Down:connect(function()
if speeds == 1 then
speed.Text = '-1 Really?'
wait(1)
speed.Text = speeds
else
speeds = speeds - 1
speed.Text = speeds
if nowe == true then
tpwalking = false
for i = 1, speeds do
spawn(function() 

local hb = game:GetService("RunService").Heartbeat


tpwalking = true
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
if hum.MoveDirection.Magnitude > 0 then
chr:TranslateBy(hum.MoveDirection)
end
end 

end)
end
end
end
end) 

closebutton.MouseButton1Click:Connect(function()
main:Destroy()
end) 

mini.MouseButton1Click:Connect(function()
up.Visible = false
down.Visible = false
onof.Visible = false
plus.Visible = false
speed.Visible = false
mine.Visible = false
mini.Visible = false
mini2.Visible = true
main.Frame.BackgroundTransparency = 1
closebutton.Position = UDim2.new(0, 0, -1, 57)
end) 

mini2.MouseButton1Click:Connect(function()
up.Visible = true
down.Visible = true
onof.Visible = true
plus.Visible = true
speed.Visible = true
mine.Visible = true
mini.Visible = true
mini2.Visible = false
main.Frame.BackgroundTransparency = 0 
closebutton.Position = UDim2.new(0, 0, -1, 27)
end) 
    end
})
CreditTab:AddButton({
    Name = "Hecker, Brazil Coder (CLICK ME then JUMP)",
    Callback = function()
          game.Players.LocalPlayer.Character.Humanoid.JumpPower = 2150
          print("He is offline for a month...")
	end
})

CreditTab:AddButton({
    Name = "Yep, The catluga the creator, DONT REMOVE IT! >:(",
    Callback = function()
          print("Dont edit this i see what u see")
	end
})

CreditTab:AddButton({
    Name = "Zaza",
    Callback = function()
          print("Amongus")
	end
})
-- uhh what r u doin here?
OrionLib:Init()
--The End
--
--IMPORTANT, DONT SKID BELOW PLS
print("closev3rmillionend")
print("12loadend")
print("12end")
print("end")
--//Dont Skid      		
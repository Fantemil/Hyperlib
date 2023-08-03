game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"

wait(1)
game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
game.Players.LocalPlayer.DeathPlaylist["1Theme"]:Destroy()

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.DeathPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://5957005275" 
Sound.Name = "Gaster"
game.Players.LocalPlayer.Character.Head.Voice.SoundId = "366168126"

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HP:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel:Destroy()

game:GetService("Players").LocalPlayer.Character.Head.face:remove()

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
            
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()



game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '' ..Chat, 
          [4] = Color3.fromRGB(255,0,0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)
				
local char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local HealthLabel = Instance.new("TextLabel")
local PName = Instance.new("TextLabel")
local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local v21 = require(game:GetService("ReplicatedStorage").ClientModules.MainModule);
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local LoseMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local mouse = plr:GetMouse()
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

HealthBar.Name = "HealthBar"
HealthBar.Parent = player.Character.Head
HealthBar.ExtentsOffset = Vector3.new(0, 6, 0)
HealthBar.Size = UDim2.new(4, 0, 2, 0)

Frame.Parent = HealthBar
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

HealthLabel.Name = "HealthLabel"
HealthLabel.Parent = Frame
HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.BackgroundTransparency = 1.000
HealthLabel.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
HealthLabel.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
HealthLabel.Font = Enum.Font.Arcade
HealthLabel.Text = ""
HealthLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
HealthLabel.TextScaled = true
HealthLabel.TextSize = 14.000
HealthLabel.TextWrapped = true
HealthLabel.TextXAlignment = Enum.TextXAlignment.Left
HealthLabel.TextYAlignment = Enum.TextYAlignment.Center

PName.Name = "PName"
PName.Parent = Frame
PName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.Arcade
PName.Text = "X!GASTER"
PName.TextColor3 = Color3.fromRGB(255, 0, 255)
PName.TextScaled = true
PName.TextSize = 5.000
PName.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextXAlignment = Enum.TextXAlignment.Center
PName.TextYAlignment = Enum.TextYAlignment.Top
PName.Rotation = 5

local part = PName
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            Rotation = -5
        }
        
        local nametween = TweenService:Create(part, Info, Goals)
        nametween:Play()
        
local ui1 = plrGui:WaitForChild("UI")
	local ui = ui1:WaitForChild("Ui")
	spawn(function()
		ui.UpdateLog:Destroy()
		ui.UpdateLogInfo:Destroy()
		ui.StaminaBar.BackgroundTransparency = 0.6
		ui.ManaBar.BackgroundTransparency = 0.6
		ui.StaminaBar.ImageLabel:Destroy()
		ui.ManaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Bar.BackgroundColor3 = Color3.new(1,1,0)
		ui.ManaBar.Bar.BackgroundColor3 = Color3.new(1,0.5,1)
		ui.ManaBar.Position = UDim2.new(0.5, 0,0.98, 0)
		ui.ManaBar.Size = UDim2.new(0.302, 0,0.01, 0)
		ui.StaminaBar.Size = UDim2.new(0.4, 0,0.01, 0)
		ui.StaminaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Position = UDim2.new(0.5,0,0.96,0)
		local corner = Instance.new("UICorner")
		corner.Parent = ui.StaminaBar
		corner:Clone().Parent = ui.StaminaBar.Bar
		corner:Clone().Parent = ui.ManaBar
		corner:Clone().Parent = ui.ManaBar.Bar
		local ci = plrGui:WaitForChild("CharaIndicator")
		ci:WaitForChild("Indicator").AnchorPoint = Vector2.new(0.5,0.5)
		ci.Indicator.Position = UDim2.new(0.5,0,0.93,0)
	end)

wait(12)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["1"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["2"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["3"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["4"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3["5"]:Destroy()

local Player = game.Players.LocalPlayer
local Backpack = Player.Backpack
wait()

game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://4459132147"

local player = game:GetService("Players").LocalPlayer
local MoveAnimations = player.Backpack.Main.XSansMoves.Animations
local ClickAnimations = player.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat
local pass = getrenv()._G.Pass
local remote = game.ReplicatedStorage.Remotes["Events"]

ClickAnimations.Light1.AnimationId = "rbxassetid://5770352035"
ClickAnimations.Light2.AnimationId = "rbxassetid://5770385566"
ClickAnimations.Light3.AnimationId = "rbxassetid://5770410811"
ClickAnimations.Light4.AnimationId = "rbxassetid://5770416576"
ClickAnimations.Light5.AnimationId = "rbxassetid://5770437587"
ClickAnimations.Light6:Destroy()
MoveAnimations.Block.AnimationId = "rbxassetid://4290724438"

visualizer = true -- Change true to false to get rid of the visualizer

local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local charaMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local CurrentCharacter = game:GetService("Players").LocalPlayer.PlayerData.CurrentCharacter.Value
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character.Humanoid
local UIS = game:GetService("UserInputService")

wait(10)

game.Workspace.ServerEffects.ServerCooldown:Destroy()

      local CAS = game:GetService("ContextActionService")
            local FREEZE_COMMAND = "CantAttack"
            CAS:BindActionAtPriority(
                FREEZE_COMMAND,
                function()
                    return Enum.ContextActionResult.Sink
                end,
                false,
                Enum.ContextActionPriority.High.Value,
                Enum.KeyCode.F,
                Enum.KeyCode.E,
                Enum.KeyCode.Q
                )
                
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Blocking", 
	[3] = true
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)

local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.R then

		if player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value == nil then

			print("mouse cframe teleport")

			local cfr = player:GetMouse().Hit

			player.Character:SetPrimaryPartCFrame(cfr * CFrame.new(0, 2, 0))

		else

			print("player cframe teleport")

			local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()

			player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 3))

		end

	end

end)

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
workspace[game.Players.LocalPlayer.Name].CrossSansBlade:Destroy()
local animation1 = Instance.new("Animation")
animation1.AnimationId = "rbxassetid://4928592851"
local anim1 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation1)
anim1:Play()
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "New timeline?",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(3)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "Soulshatters?",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
    wait(4)
    local userInputService = game:GetService("UserInputService")
    on = true
    posz = 0
    posx = 0
    local perseverance = {
    Parent = game.workspace,
    Name = 'ye',
    Material = Enum.Material.Neon,
    Color = Color3.fromRGB(25, 41, 88),
    Transparency = 0
    }                   
wait(0)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "I need to create my perfect timeline...",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects    
wait(4)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "Heh...",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(5)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "I will destroy this timeline!",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(8)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "DIE!",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)

local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "Summon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["J"] then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 650
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.UnderswapPapyrusBones:GetChildren()) do
if v.Name == 'Bone' and boneCloned2 == false then
    boneCloned2 = true
    print("f")
clone = v:Clone()
clone.Color = Color3.new(0,0,255)
clone.Parent = char
clone.Anchored = false
clone.CanCollide = false
weld = Instance.new('Weld',clone)
weld.Part0 = clone
weld.Part1 = char['Right Arm']
An = {0,0,110}
clone.Size = clone.Size/4
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(0,0,0)*Angle
weld.C0 = weld.C0*CFrame.new(-0.3,1.5,0)
clone.Name = 'SpkBone2'
clone.Transparency = 0
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects:GetChildren()) do
if v.Name == 'OverwriteButton' then
clone = v:Clone()
clone.Parent = char
clone.HumanoidRootPart.Anchored = false
clone.OverwriteButton.CanCollide = false
clone.HumanoidRootPart.CanCollide = false
clone.OverwriteButton.Anchored = false
weld = Instance.new('Weld',clone.OverwriteButton)
weld.Part0 = clone.OverwriteButton
weld.Part1 = char['HumanoidRootPart']
An = {0,85,-35}
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(-0.1,1.5,3)*Angle
weld.C0 = weld.C0*CFrame.new(1,1.7,-.3)

clone.OverwriteButton.Color = Color3.fromRGB(255,200,0)
clone.OverwriteButton.PointLight.Color = Color3.fromRGB(255,255,0)
end
end
end)

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0

local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.KeypadZero then

		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
		
	end	

end)                          
                              		 
                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "z" then
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3786809782"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = "Bye, partner =)",
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                local A_1 = getrenv()._G.Pass
                local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BiggerBurstEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["HitTime"] = 1,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
                    ["Damage"] = 0
                }
                }
                game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(1.5)
                k:stop()
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = Vector3.new(0,0.0,0), 
						["CombatInv"] = true,
						["Damage"] = 0
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
            end
            end)
            
local pass = getrenv()._G.Pass
local player = game.Players.LocalPlayer
local character = player.Character
local uis = game:GetService("UserInputService")
local function spamk()

	local target = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value

	local A_1 = pass
	local A_2 = target
	local A_3 = {
		["HitTime"] = 1,
		["Type"] = "Knockback", 
		["HitEffect"] = "KnifeHitEffect",
		["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
		["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
		["CombatInv"] = true,
		["Velocity"] = Vector3.new(0, -0.5, 0),
		["Damage"] = 40
	}
	local Event = game:GetService("ReplicatedStorage").Remotes.Damage
	Event:InvokeServer(A_1, A_2, A_3)

end

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.X then

		while wait(0.05) do

			spamk()

		end

	end

end)

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.C then
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
                        ["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Charge,
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                
    end
end)

	local player = game.Players.LocalPlayer
	repeat wait() until player.Character.Humanoid
	local humanoid = player.Character.Humanoid
	local mouse = player:GetMouse()

	local m = game.Players.LocalPlayer:GetMouse()
	db = true
	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "1" then
			if db == true then
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.1)
				local A_1 = 
					{
						[1] = getrenv()._G.Pass, 
						[2] = "Chatted", 
						[3] = "ACT = [SUMMON KNIVES]", 
						[4] = Color3.new(1, 0.0784314, 1)
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Events
				Event:FireServer(A_1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "IntHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)

		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "UndyingExplosion", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(100, 100, 100), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)				

			end
		end
	end)

                game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Two then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://6122095988"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                
                       local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                
                       local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                wait(0.5)
                local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3777055156"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 20 + Vector3.new(0, 0.0001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
    end
                end)
                
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "h" then
		if db == true then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Overwrite", 
	[3] = "Heal"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
			db = false
			wait(1)
			db = true
		end
	end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode.Three then
boneCloned = false
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3731949745"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
wait(0.25)
k:AdjustSpeed(0)
wait(0.2)
spawn(function()
ez = true
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.UnderswapPapyrusBones:GetChildren()) do
if v.Name == 'Bone' and boneCloned == false then
    boneCloned = true
clone = v:Clone()
clone.Parent = char
clone.Anchored = true
clone.Name = 'SpkBone'
clone.Transparency = 0
clone.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,-9,-4)
end
end
end)
wait(0.3)
spawn(function()
    repeat wait()
        clone.CFrame = clone.CFrame*CFrame.new(0, 3, 0)
    until ez == false
end)
wait(0.1625)
ez = false
wait(1.3)
spawn(function()
    repeat wait()
        clone.Transparency = clone.Transparency + 0.15
    until ez2 == false
end)
wait(0.2)
ez2 = false
wait()
clone:Destroy()
end)
spawn(function()
wait(0.2)
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 3731906158
sound.Volume = 3
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)
spawn(function()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.65,
        ["Type"] = "Knockback",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 45, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
wait(0.2)
k:AdjustSpeed(1.5)
end
end)

local debounce = true 
local cooldown = 0

game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Four

    if key.KeyCode == button then
       if debounce then 
          print("gaster lmao") 
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Not bad at all =)",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model", "RedWind", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
end
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 1,
["Type"] = "Knockback", 
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
          wait(cooldown)
          debounce = true
end
end
end)

                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                if k == "5" then
             
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4348788816"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 0.7, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,38,0), 
                        ["CombatInv"] = true,
                        ["Damage"] = 12
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                char = game.Players.LocalPlayer.Character
                local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
                vel.Name = 'Client'
                vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
                vel.P = math.huge
                vel.Velocity = (Vector3.new(0,9,0))*4 -- change the velocity
                wait(1)
                vel:Destroy()
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 38
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4348788816"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 0.7, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,38,0), 
                        ["CombatInv"] = true,
                        ["Damage"] = 12
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                char = game.Players.LocalPlayer.Character
                local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
                vel.Name = 'Client'
                vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
                vel.P = math.huge
                vel.Velocity = (Vector3.new(0,9,0))*4 -- change the velocity
                wait(1)
                vel:Destroy()
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 78
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4348788816"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 0.7, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,38,0), 
                        ["CombatInv"] = true,
                        ["Damage"] = 12
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                char = game.Players.LocalPlayer.Character
                local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
                vel.Name = 'Client'
                vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
                vel.P = math.huge
                vel.Velocity = (Vector3.new(0,9,0))*4 -- change the velocity
                wait(1)
                vel:Destroy()
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 117
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4820768545"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)        
                k:stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://6998858440"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(3)
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects
wait(1)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
                end
                end)

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Six then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4011717825"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.2)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                
                  local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                
                  local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                
                  local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, 50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
    end
end)

	AnimationId = '0'
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	bind = "v" -- has to be lowercase


	mouse.KeyDown:connect(function(key)
		if key == bind then

			game.Players:Chat[[[ACT] = [LONG ATTACK]]


			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end			
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()

			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()

			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
        			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
		end
	end)

		                    local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                if k == "7" then
                local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = "Dont make me evil...",
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,70,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)  
                wait(0.3)
                char = game.Players.LocalPlayer.Character
                local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
                vel.Name = 'Client'
                vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
                vel.P = math.huge
                vel.Velocity = (Vector3.new(0,17,0))*5.30 -- change the velocity
                wait(0.5)
                vel:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = 73
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
                wait(0.5)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
								                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
												                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
																                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
																				                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.OwlSlash,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
																								                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.OwlSlash,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
																												                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.OwlSlash,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
																																                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.OwlSlash,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
																																				                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.OwlSlash,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
																																								                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100 + Vector3.new(0,0,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
                end
                end)	
                
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "b" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7501550774"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.5)
local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "LightHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
["CombatInv"] = true,
["Damage"] = 15
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7500900190"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.5)
local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "LightHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,50,0), 
["CombatInv"] = true,
["Damage"] = 15
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
char = game.Players.LocalPlayer.Character
local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
vel.Name = 'Client'
vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
vel.P = math.huge
vel.Velocity = (Vector3.new(0,14,0))*4 -- change the velocity
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 37
wait(0.5)
vel:Destroy()
char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929696537"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.5)
local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "LightHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-50,0), 
["CombatInv"] = true,
["Damage"] = 15
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
char = game.Players.LocalPlayer.Character
local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
vel.Name = 'Client'
vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
vel.P = math.huge
vel.Velocity = (Vector3.new(0,-14,0))*4 -- change the velocity
wait(0.5)
vel:Destroy()
char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-50,0), 
["CombatInv"] = true,
["Damage"] = 15
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
Event:InvokeServer(A_1, A_2, A_3)
wait(0.3)
local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50 + Vector3.new(0,10,0), 
["CombatInv"] = true,
["Damage"] = 15
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end
end)            

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "t" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906108508"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
game.Players:Chat(("Leave me alone!"))
local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 0.5, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,50,0), 
["CombatInv"] = true,
["Damage"] = 30
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
char = game.Players.LocalPlayer.Character
local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
vel.Name = 'Client'
vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
vel.P = math.huge
vel.Velocity = (Vector3.new(0,14,0))*4 -- change the velocity
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 37
wait(0.5)
vel:Destroy()
char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = {
    ["HitTime"] = 1,
    ["Type"] = "Knockback",
    ["HitEffect"] = "KnifeHitEffect",
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
    ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
    ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100 + Vector3.new(0, 0, 0),
    ["CombatInv"] = true,
    ["Damage"] = 40
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0

end
end)

local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)    

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "y" then
game.Players:Chat(("Bye..."))

        local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Normal", 
				["HitEffect"] = "HeavyHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["Velocity"] = Vector3.new(0, 0, 100), 
				["CombatInv"] = true,
				["Damage"] = 10
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator:Destroy()
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Help:Destroy()

game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:???"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:???"
             
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Created By MAnitosik#0548", Text = "It is a free script"})

repeat wait() until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 0

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 38

game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
game.Players.LocalPlayer.DeathPlaylist["Gaster"]:Destroy()

wait(2)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Blocking", 
	[3] = true
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)

char = game.Players.LocalPlayer.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara:GetChildren()) do
if v.Name == 'SlashEffect' then
clone = v:Clone()
clone.Parent = char.Torso
end
end

local Player = game.Players.LocalPlayer.Character
wait(2)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4928592851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "I am bored...",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(5)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "I will show you my DETERMINATION...",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects    
wait(5)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "Get ready =)",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.DeathPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6347876717" 
Sound.Name = "Gaster"    
wait(8)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5657147855"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

PName.Text = "???"
PName.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0

        local p = game.Players.LocalPlayer
        local char = p.Character
        local mouse = p:GetMouse()
        local larm = char["Left Arm"]
        local rarm = char["Right Arm"]
        local lleg = char["Left Leg"]
        local rleg = char["Right Leg"]
        local hed = char.HumanoidRootPart
        local torso = char.Torso
        local hum = char.Humanoid
        local root = char.HumanoidRootPart
        local rs = game:GetService("RunService").RenderStepped
        local new = Instance.new
        local v3 = Vector3.new
        local ns = NumberSequence.new
        local nr = NumberRange.new
        local bc = BrickColor.new
        local cf = CFrame.new
        local cfa = CFrame.Angles
        local rad = math.rad

        a1 = new("Part", char)
        a1.Name = "H1"
        a1.BrickColor = BrickColor.new("White")
        a1.Material = "Neon"
        a1.Transparency = 0
        aa1 = new("SpecialMesh", a1)
        aa1.MeshType = "FileMesh"
        aa1.Offset = v3(7, 3, -0.1)
        aa1.Scale = v3(0.1, 0.1, 0.1)
        aa1.MeshId = "rbxassetid://2267134290"
        aaa1 = new("Weld", a1)
        aaa1.Part0 = hed
        aaa1.Part1 = a1
        aaa1.C0 = CFrame.Angles(0, math.rad(0), 0)

        a2 = new("Part", char)
        a2.Name = "H2"
        a2.BrickColor = BrickColor.new("White")
        a2.Material = "Neon"
        a2.Transparency = 0
        aa2 = new("SpecialMesh", a2)
        aa2.MeshType = "FileMesh"
        aa2.Offset = v3(9.1, 2.01, -0.2)
        aa2.Scale = v3(0.07, 0.07, 0.07)
        aa2.MeshId = "rbxassetid://2267146284"
        aaa2 = new("Weld", a2)
        aaa2.Part0 = hed
        aaa2.Part1 = a2
        aaa2.C0 = CFrame.Angles(0, math.rad(0), 0)

        a3 = new("Part", char)
        a3.Name = "H3"
        a3.BrickColor = BrickColor.new("White")
        a3.Material = "Neon"
        a3.Transparency = 0
        aa3 = new("SpecialMesh", a3)
        aa3.MeshType = "FileMesh"
        aa3.Offset = v3(5, 2.01, -0.2)
        aa3.Scale = v3(0.07, 0.07, 0.07)
        aa3.MeshId = "rbxassetid://2267147917"
        aaa3 = new("Weld", a3)
        aaa3.Part0 = hed
        aaa3.Part1 = a3
        aaa3.C0 = CFrame.Angles(0, math.rad(0), 0)

        a4 = new("Part", char)
        a4.Name = "H4"
        a4.BrickColor = BrickColor.new("White")
        a4.Material = "Neon"
        a4.Transparency = 0
        aa4 = new("SpecialMesh", a4)
        aa4.MeshType = "FileMesh"
        aa4.Offset = v3(7, 3, -0.1)
        aa4.Scale = v3(0.1, 0.1, 0.1)
        aa4.MeshId = "rbxassetid://2267130588"
        aaa4 = new("Weld", a4)
        aaa4.Part0 = hed
        aaa4.Part1 = a4
        aaa4.C0 = CFrame.Angles(0, math.rad(0), 0)

        a5 = new("Part", char)
        a5.Name = "H5"
        a5.BrickColor = BrickColor.new("White")
        a5.Material = "Neon"
        a5.Transparency = 0
        aa5 = new("SpecialMesh", a5)
        aa5.MeshType = "FileMesh"
        aa5.Offset = v3(7, 3, -0.1)
        aa5.Scale = v3(0.1, 0.1, 0.1)
        aa5.MeshId = "rbxassetid://2267130588"
        aaa5 = new("Weld", a5)
        aaa5.Part0 = hed
        aaa5.Part1 = a5
        aaa5.C0 = CFrame.Angles(0, math.rad(0), 0)

        a1e = new("Part", char)
        a1e.Name = "H6"
        a1e.BrickColor = BrickColor.new("White")
        a1e.Material = "Neon"
        a1e.Transparency = 0
        aa1e = new("SpecialMesh", a1e)
        aa1e.MeshType = "FileMesh"
        aa1e.Offset = v3(-7, 3, -0.1)
        aa1e.Scale = v3(0.1, 0.1, 0.1)
        aa1e.MeshId = "rbxassetid://2267134290"
        aaa1e = new("Weld", a1e)
        aaa1e.Part0 = hed
        aaa1e.Part1 = a1e
        aaa1e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a2e = new("Part", char)
        a2e.Name = "H7"
        a2e.BrickColor = BrickColor.new("White")
        a2e.Material = "Neon"
        a2e.Transparency = 0
        aa2e = new("SpecialMesh", a2e)
        aa2e.MeshType = "FileMesh"
        aa2e.Offset = v3(-5, 2.01, -0.2)
        aa2e.Scale = v3(0.07, 0.07, 0.07)
        aa2e.MeshId = "rbxassetid://2267146284"
        aaa2e = new("Weld", a2e)
        aaa2e.Part0 = hed
        aaa2e.Part1 = a2e
        aaa2e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a3e = new("Part", char)
        a3e.Name = "H8"
        a3e.BrickColor = BrickColor.new("White")
        a3e.Material = "Neon"
        a3e.Transparency = 0
        aa3e = new("SpecialMesh", a3e)
        aa3e.MeshType = "FileMesh"
        aa3e.Offset = v3(-9.1, 2.01, -0.2)
        aa3e.Scale = v3(0.07, 0.07, 0.07)
        aa3e.MeshId = "rbxassetid://2267147917"
        aaa3e = new("Weld", a3e)
        aaa3e.Part0 = hed
        aaa3e.Part1 = a3e
        aaa3e.C0 = CFrame.Angles(0, math.rad(0), 0)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "is that all?", 
				[4] = Color3.new(1,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Interesting...", 
				[4] = Color3.new(1,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		wait(0.5)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		wait(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		wait(1.5)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		wait(2)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		wait(2.5)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		wait(3)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		wait(3.5)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
		wait(4)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

wait()local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "8" then
		if db == true then
			wait(0.3)
		    for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"Model", "HeavyHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
            end
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "HeavyHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(0.4)
		    for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"Model", "BigSlam", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
            end
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, -15, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(1)
		    for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"Model", "BigSlam", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
            end
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, -15, 0), 
					["Damage"] = 10
				}
			wait(1.3)
		    for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"Model", "HeavyHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
            end
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(1.4)
		    for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"Model", "BigSlam", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
            end
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, -15, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(1)
		    for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"Model", "BigSlam", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
            end
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, -15, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(2)
			db = true
		end
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.2)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.3)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.4)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.5)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.6)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.7)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.8)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(1.9)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		wait(2)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateHitEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
	end
end)

workspace[game.Players.LocalPlayer.Name].OverwriteButton:Destroy()
local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword2 = v:Clone()
sword2.Parent = char
sword2.GTFriskSword:Destroy()
sword2.Anchored = false
weld = Instance.new('Weld',sword2)
weld.Part0 = sword2
weld.Part1 = char['Right Arm']
sword2.Name = 'White_Sword'
sword2.Color = Color3.fromRGB(255, 255, 255)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.6,0,-1.6)
sword2.Transparency = 0
end
end
wait(2)

workspace[game.Players.LocalPlayer.Name].OverwriteButton:Destroy()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "p" then

workspace[game.Players.LocalPlayer.Name].H1:Destroy()
workspace[game.Players.LocalPlayer.Name].H2:Destroy()
workspace[game.Players.LocalPlayer.Name].H3:Destroy()
workspace[game.Players.LocalPlayer.Name].H4:Destroy()
workspace[game.Players.LocalPlayer.Name].H5:Destroy()
workspace[game.Players.LocalPlayer.Name].H6:Destroy()
workspace[game.Players.LocalPlayer.Name].H7:Destroy()
workspace[game.Players.LocalPlayer.Name].H8:Destroy()
	
game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
game.Players.LocalPlayer.DeathPlaylist["Gaster"]:Destroy()

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4416715001"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "!?",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "I cant control this child anymore...",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "You made a big mistake...",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Heh, the orginal gaster was right...",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "You will die by CHARA",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Dont say i didnt warn you...",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(5)
k:Stop()

PName.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
PName.TextColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

PName.Text = "True X!Chara"

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.DeathPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://857708134" 
Sound.Name = "Gaster"

local player = game:GetService("Players").LocalPlayer
local ClickAnimations = player.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat

ClickAnimations.Light1.AnimationId = "rbxassetid://4906030889"
ClickAnimations.Light2.AnimationId = "rbxassetid://4906045655"
ClickAnimations.Light3.AnimationId = "rbxassetid://4906056809"
ClickAnimations.Light4.AnimationId = "rbxassetid://4906072632"
ClickAnimations.Light5.AnimationId = "rbxassetid://4929694407"

sword2.Color = Color3.fromRGB(0, 0, 0)

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'RelKnife' then
clone1 = v:Clone()
clone1.Name = 'Knife'
clone1.ToyKnife:Destroy()
clone1.Parent = char
clone1.Anchored = false
weld = Instance.new('Weld',clone1)
weld.Part0 = clone1
weld.Part1 = char['Left Arm']
clone1.Name = 'Knife'
An = {90,0,0}
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(0,-0.8,0.8)*Angle
clone1.Transparency = 0
end
end

 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Wanna play a game? =)",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)

	local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
        local Anim       = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348301706"
        local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
        local args = { 
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal",
                ["HitEffect"] = "KnifeHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(0, 0.0001, 0), 
                ["HitTime"] = 1,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
                ["Damage"] = 10
            }
        }


        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(99999)
        k:Stop()
    end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
        wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(0.2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(0.3)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(0.4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(0.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(0.6)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(0.7)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(0.8)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(0.9)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(1.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(1.2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["HitTime"] = 1,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "0" then game.Players.LocalPlayer:GetMouse()
		wait(1.3)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(-0, 29.999994277954, -0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

function talk(text,color)
	if dead == true then return end
	local A_1 = 
		{
			[1] = getrenv()._G.Pass, 
			[2] = "Chatted", 
			[3] = text, 
			[4] = color
		}
	local Event = game:GetService("ReplicatedStorage").Remotes.Events
	Event:FireServer(A_1)
end
local userInputService = game:GetService("UserInputService")  
userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.Nine then
              
         --player is typing
         
         talk([[Sans special attack =)]],Color3.fromRGB(255, 0, 0))
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,  
						["Velocity"] = Vector3.new(0, -1, 0),
						["CombatInv"] = true,
						["Damage"] = 0
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				repeat
				         Event:InvokeServer(A_1, A_2, A_3)	
                                               Event:InvokeServer(A_1, A_2, A_3)
                                               Event:InvokeServer(A_1, A_2, A_3)                              
                                               Event:InvokeServer(A_1, A_2, A_3)                                     
                                               wait(2)                                                                                                                                                                                                                                                                 		
				until game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
          end
  end
end)

end
end)
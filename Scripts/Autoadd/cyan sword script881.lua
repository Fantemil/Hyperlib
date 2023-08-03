game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()

game.Players.LocalPlayer.Character:WaitForChild("ForceField"):Destroy()
local v1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "Damage", 
    [3] = math.huge, 
    [4] = game.Players.LocalPlayer.Character
}
local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end)

game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").Animations.Idle.AnimationId = "rbxassetid://4652743075"        
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").Animations.Run.AnimationId = "rbxassetid://4196634355"   
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").Animations.Walk.AnimationId = "rbxassetid://4196634355"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4800624938"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4800163313"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5776251749"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4800630930"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://6154060166"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4456901030"

game.Players.LocalPlayer.Character.HateArm:Destroy()
game.Players.LocalPlayer.Character.HeartLocket:Destroy()
game.Players.LocalPlayer.Character.Head.face:Remove()
game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLog:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.SettingsButton:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Position = UDim2.new(0, 1010, 0, 1032)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Position = UDim2.new(0, 600, 0, 1032)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
for thing, child in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if child:IsA("Shirt") or child:IsA("Pants") or child:IsA("Accessory")then
		child:Destroy()
	end

end

game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6391580110" 
Sound.Name = "1Megalo Strike Back"

game.Players.LocalPlayer.Character.Head.ChildAdded:Connect(function(v)
    if v.Name == "TextBar" then
        v:WaitForChild("TextLabel")
        for _,v in pairs(v:GetChildren()) do
            game:GetService("RunService").Heartbeat:wait()
            v.TextColor3 = Color3.fromRGB(0, 255, 255)
        end
    end
end)

game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Neutral god"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "|||||||||||"

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()

game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[ Neutral ]\n' ..Chat, 
          [4] = Color3.fromRGB(i,1,1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 150
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 10

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
                Enum.KeyCode.E,
                Enum.KeyCode.Q
                )
                
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower:Destroy()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "j" then
local args = {
    [1] = {
    [1] = getrenv()._G.Pass,
    [2] = "Damage",
    [3] = math.huge,
    [4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            }
        }

    game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
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
		["Velocity"] = Vector3.new(0, -1, 0),
		["Damage"] = 0
	}
	local Event = game:GetService("ReplicatedStorage").Remotes.Damage
	Event:InvokeServer(A_1, A_2, A_3)

end

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.Z then

		while wait(0.05) do

			spamk()

		end

	end

end)

local pass = getrenv()._G.Pass
local player = game.Players.LocalPlayer
local character = player.Character
local uis = game:GetService("UserInputService")
local function spam()

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
		["Velocity"] = Vector3.new(0, -1, 0),
		["Damage"] = "NaN"
	}
	local Event = game:GetService("ReplicatedStorage").Remotes.Damage
	Event:InvokeServer(A_1, A_2, A_3)

end

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.X then

		spam()

	end

end)

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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "1" then
function staydown()
    local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Rumble,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
    for i = 1,25 do
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "YellowHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
        ["Velocity"] = Vector3.new(0,-1,0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Crack,
        ["Damage"] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
end
end
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "...", 
				[4] = Color3.new(1,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 

_G.cdr = false
    if _G.cdr then
        return
    end
    _G.cdr = true
    pass = getrenv()._G.Pass
    player = game.Players.LocalPlayer
    m = player:GetMouse()
    local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
    if LockOn then
        target = LockOn
        r2 = target.HumanoidRootPart.CFrame
    elseif not LockOn then
        r2 = m.Hit * CFrame.new(0, 4, 0)
    end
    char = player.Character
    h = char.Humanoid
    wait(.2)
    local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Charge,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
staydown()
        local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
    amm = 7
    for i = 1, amm, 1 do
        spawn(
            function()
                local A_1 = {
                    [1] = pass,
                    [2] = "KnifeProjectileOrange",
                    [3] = "Spawn",
                    [4] = r2.p
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                Event:InvokeServer(A_1)
            end
        )
    end
    am = 6
    val = Instance.new("NumberValue", player)
    val.Name = "KnifeSlashes Amount"
    local tabeeas = {}
    detect =
        char.Attacks.ChildAdded:Connect(
            function(pp)
            if pp.Name == "KnifeSlashProjectileOrange" then
                table.insert(tabeeas, pp)
                spawn(
                    function()
                        local rp
                        local yeaeoase = pp
                        rp =
                            yeaeoase.Changed:Connect(
                                function(pr)
                                if pr == "Anchored" then
                                    if not pr.Anchored then
                                        am = am + 1
                                        val.Value = am
                                        rp:Disconnect()
                                    end
                                end
                            end
                            )
                    end
                )
            end
        end
        )
    detect2 =
        val:GetPropertyChangedSignal("Value"):Connect(
    function()
        if val.Value == amm * 3 then
            tab = {}
            tab2 = {}
            for _, v in pairs(char.Attacks:GetChildren()) do
                if v.Name == "KnifeSlashProjectileOrange" then
                    v:WaitForChild("BodyVelocity"):Destroy()
                    v:WaitForChild("ParticleEmitter"):Destroy()
                    v.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 10, -2)
                    v1 = Instance.new("BodyPosition", v)
                    fol = Instance.new("Folder", v1)
                    v1.Name = "Client"
                    v1.MaxForce = Vector3.new(1, 1, 1) * 100000
                    v1.D = 1000
                    v1.P = 30000
                    v2 = Instance.new("BodyGyro", v)
                    fol = Instance.new("Folder", v2)
                    v2.Name = "Client"
                    v2.MaxTorque = Vector3.new(1, 1, 1) * 10000
                    v2.D = 0
                    v2.P = 3000
                    v2.CFrame = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                    x = math.random(-20, 20)
                    z = math.random(-20, 20)
                    y = math.random(10, 40)
                    v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0, 10, 0)
                    table.insert(tab, v1)
                    table.insert(tab2, v)
                    v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x, y, z)
                end
            end
            for i = 1, #tab do
                m.TargetFilter = game.workspace.Terrain
                local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
                if LockOn then
                    target = LockOn
                    r2 = target.HumanoidRootPart.CFrame
                    r1 = target.HumanoidRootPart
                elseif not LockOn then
                    r2 = m.Hit
                    r1 = m.Target
                end
                x = math.random(-20, 20)
                z = math.random(-20, 20)
                tab[i].D = 150
                tab[i].Position = r2.p + Vector3.new(0, -1, 0)
                tab2[i].CFrame = r2 * CFrame.new(x, 10, z)
                for i = 1,99999999999999 do
                spawn(
                    function()
                        local A_1 = {
                            [1] = pass,
                            [2] = "KnifeProjectileOrange",
                            [3] = "Hit",
                            [4] = tab2[i],
                            [5] = r2,
                            [6] = r1
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                        Event:InvokeServer(A_1)
                    end
                )
                wait()
                end
            end
        end
        end
    )
    wait(5)
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectileOrange' then
v:Destroy()
end
end
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "stop it", 
				[4] = Color3.new(1,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
end
end)

                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "c" then
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = "Remove player...",
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
            
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "2" then
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.01)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.3)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.01)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.3)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(50,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "3" then
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

end
end)

game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Four then
        local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted", 
                [3] = "...",
                [4] = Color3.new(255,255,255)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local args = { 
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(-0, -1, -0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
}
        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.T then
        repeat
        local args = { 
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(-0, 150, -0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 40
            }
        }


        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(2.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value].HumanoidRootPart.CFrame
        until game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
end
end)

spawn(function()
        while wait() do
            if dead == true then break end
    for i = 0,1,0.01 do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromHSV(0,0,100),
                [5] = 0,
                [6] = "SpecialHell"
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
        wait()
        end
    end
end)

game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Five then
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776256280"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
                ["Velocity"] = Vector3.new(0.00100000005, 0.00100000005, 0.00100000005), 
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(1)
        k:Stop()
    end
end)

                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "6" then
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4361511573"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(0.70) 
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)

                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileDarkRed",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileDarkRed",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 35
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileOrange",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 35
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileOrange",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileOrange",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileOrange",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

                end
                end)

		                    local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                if k == "7" then
                local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = "Boring...",
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
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = 77
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
                wait(0.5)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
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
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
	      wait(1)
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
		end
	end)                                

local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.KeypadZero then

		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
		
	end	

end)

spawn(function()
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "GTFriskSword" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.GTFriskSword:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "Swordnameobs"
                    sword2.Color = Color3.fromRGB(0,255,255)
                    weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
                    sword2.Transparency = 0
                end

end
end)

pos = 1
while true do
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(0, 0, math.rad(pos))})
wait(0.25)
end
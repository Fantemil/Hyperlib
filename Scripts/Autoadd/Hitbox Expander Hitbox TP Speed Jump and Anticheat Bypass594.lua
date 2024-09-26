--[[
made by .ttokenn. (thanks dotdotdot1 for the help with hookmetamethod)

READ ME VVVVVVVVVVV
this script REQUIRES hookmetamethod, nothing works without it
this means that SOLARA is NOT supported, maybe it will have support sometime in the future but thats up to quivings

THIS SCRIPT USES KEYBINDS (since im too lazy to make a ui and re-adapt all the code)

J - JumpHeight
K - Speed
L - Refill Ammo (make sure you are loaded into the most full mag you have, magazines that are currently loaded dont get refilled)
P - Tp all hitboxes above you (makes you lag hella bad)

change the below number to a larger or smaller size, it controls how large the hitboxes are
--]]

local size = 35 -- change for bigger/smaller hitboxes



local weaponRemote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Weapon")
local strikeRemote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Strike")
local b = game.ReplicatedStorage.Remotes:FindFirstChild("ValidatePartSize")
if b then b:Destroy() end -- destroys one of the two remotes
local ValPartSizeRemote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ValidatePartSize")

local oldFireServer
oldFireServer = hookmetamethod(weaponRemote, "__namecall", function(self, ...)
    local args = {...}
    local methodName = getnamecallmethod():lower()

    if methodName == "fireserver" and self == weaponRemote then
        -- Check the first argument
        if args[1] == "ValidateSize" then
            print("blocked remote call because first argument is ValidateSize")
            return -- Block the call
        else
            --print("wow its normal!!!")
        end
    end

    return oldFireServer(self, ...)
end)

local oldStrike
oldStrike = hookmetamethod(strikeRemote, "__namecall", function(self, ...)
    local methodName = getnamecallmethod():lower()

    if methodName == "fireserver" and self == strikeRemote then
        print("blocked strike call")
        return
    end

    return oldStrike(self, ...)
end)

local oldValPartSize
oldValPartSize = hookmetamethod(ValPartSizeRemote, "__namecall", function(self, ...)
    local methodName = getnamecallmethod():lower()

    if methodName == "fireserver" and self == ValPartSizeRemote then
        print("blocked ValidatePartSize call")
        return
    end

    return oldValPartSize(self, ...)
end)


local Players = game:GetService("Players")
local localplr = Players.LocalPlayer
local chosenHitbox = "HumanoidRootPart" -- HumanoidRootPart, Head (head may or may not work)
local UIS = game:GetService("UserInputService")
local hitboxes = {}

repeat wait() until game.Players.LocalPlayer.Team.Name ~= "Neutral"

local function check(Plr, checkType) -- 1 = team, 
    if checkType == 1 then
        if Plr.Team.Name == "Neutral" then
            return "Neutral"
        end
        if Plr.Team ~= localplr.Team then
            return "Enemy"
        else
            return "Friendly"
        end
    end

    return false
end

local function boxChange(box, enlargen) --enlargen = true to expand, false to make normal
    if enlargen == true then
        box.Size = Vector3.new(size, size, size)
        box.Transparency = 0.1
        box.CanCollide = true
        box.Color = Color3.new(1.000000, 0.000000, 0.000000)
        if table.find(hitboxes, box) then table.remove(hitboxes, table.find(hitboxes, box)) end
        if check(game.Players:FindFirstChild(box.Parent.Name), 1) == "Enemy" then table.insert(hitboxes, box) end
    elseif enlargen == false then
        box.Size = Vector3.new(2, 2, 1)
        box.Transparency = 1
        box.CanCollide = false
        if table.find(hitboxes, box) then table.remove(hitboxes, table.find(hitboxes, box)) end
    end
end

local function refill()
    local crate = game.Workspace.AmmoCrates:FindFirstChild("AmmoCrateSoldier")
    if not crate then print("NO CRATES AVAILABLE TO REFILL"); return end

    crate.ProximityPrompt.MaxActivationDistance = math.huge

    local currentpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    --tp
    for i=1, 3 do -- to let the map load so you dont fall through it
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = crate.CFrame
        task.wait()
    end
    task.wait(1)
    crate.ProximityPrompt:InputHoldBegin()
    task.wait(0.1)
    crate.ProximityPrompt:InputHoldEnd()
    task.wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentpos
end

--anti-damage

if game.Players.LocalPlayer.Character then
    local char = game.Players.LocalPlayer.Character
    local LeftArm = char:FindFirstChild("Left Arm")
    local RightArm = char:FindFirstChild("Right Arm")
    local LeftLeg = char:FindFirstChild("Left Leg")
    local RightLeg = char:FindFirstChild("Right Leg")
    local Head = char:FindFirstChild("Head")
    local Torso = char:FindFirstChild("Torso")
    if LeftArm and RightArm and LeftLeg and RightLeg and Head and Torso then
        local parts = {LeftArm, RightArm, LeftLeg, RightLeg, Torso, Head}
        for _,v in pairs(parts) do
            if v:FindFirstChild("Value") then
                v.Value:GetPropertyChangedSignal("Value"):Connect(function()
                    if v.Value.Value < 100 then
                        v.Value.Value = 100
                    end
                end)
            end
        end
    end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    wait(2)
    local LeftArm = char:FindFirstChild("Left Arm")
    local RightArm = char:FindFirstChild("Right Arm")
    local LeftLeg = char:FindFirstChild("Left Leg")
    local RightLeg = char:FindFirstChild("Right Leg")
    local Head = char:FindFirstChild("Head")
    local Torso = char:FindFirstChild("Torso")
    if LeftArm and RightArm and LeftLeg and RightLeg and Head and Torso then
        local parts = {LeftArm, RightArm, LeftLeg, RightLeg, Torso, Head}
        for _,v in pairs(parts) do
            if v:FindFirstChild("Value") then
                v.Value:GetPropertyChangedSignal("Value"):Connect(function()
                    if v.Value.Value < 100 then
                        v.Value.Value = 100
                    end
                end)
            end
        end
    end
end)

local speed = false
local jump = false
local bring = false

UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.J then
        jump = not jump
        if jump then game.Players.LocalPlayer.Character.Humanoid.JumpPower = 400 end
        if not jump then game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end
    elseif input.KeyCode == Enum.KeyCode.K then
        speed = not speed
        if speed then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 350 end
        if not speed then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end
    elseif input.KeyCode == Enum.KeyCode.L then
        refill()
    elseif input.KeyCode == Enum.KeyCode.P then
        bring = not bring
    end
end)


local fixed = true
local runcounter = 0

while task.wait(0.05) do
    runcounter += 1
    --enlargen hitboxes
    if runcounter == 20 then
        for _,plr in pairs(game.Players:GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Team ~= game.Players.LocalPlayer.Team then
                local char = plr.Character
                if char then
                    if char:FindFirstChild("isRagdolled") then 
                        local isRagdolled = char.isRagdolled
                        if isRagdolled.Value == false then
                            local part = char:FindFirstChild(chosenHitbox)
                            if part then
                                boxChange(part, true)
                            end
                        elseif isRagdolled.Value == true then
                            local part = char:FindFirstChild(chosenHitbox)
                            if part then
                                boxChange(part, false)
                            end
                        end
                    else
                        local part = char:FindFirstChild(chosenHitbox)
                        if part then
                            boxChange(part, true)
                        end
                    end
                end
            elseif plr.Team == game.Players.LocalPlayer.Team then
                local char = plr.Character
                if char then
                    local part = char:FindFirstChild(chosenHitbox)
                    if part then
                        boxChange(part, false)
                    end
                end
            end
        end
        runcounter = 0
    end

    --bring hitboxes
    if bring == true then
        for _,v in pairs(hitboxes) do
            if v then
                v.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,40,0)
            end
            fixed = false
        end
    elseif bring == false and fixed == false then
        for _,v in pairs(hitboxes) do
            if v.Parent.Torso and v then
                v.CFrame = v.Parent.Torso.CFrame
            end
        end
        fixed = true
    end
end
local players = game:GetService("Players")
local plr = players.LocalPlayer
local cd = false
local Settings = {
    Autoparry = { Toggle = true, Range = 25, Delay = 0,Fov = 180, Facing = false,Dodgerange = 3,Aimhelper = false,},ESP = { Toggle = false, Config = {} },
    Tpaura = {Toggle = false,},
}

local anims = {
    --saitama
    ["rbxassetid://10469493270"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://10469630950"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://10469639222"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://10469643643"] = { [1] = 0, [2] = 0.30 },
    --hunter
    ["rbxassetid://13532562418"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13532600125"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13532604085"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13294471966"] = { [1] = 0, [2] = 0.30 },
    --cyborg
    ["rbxassetid://13491635433"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13296577783"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13295919399"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13295936866"] = { [1] = 0, [2] = 0.30 },
    --ninja
    ["rbxassetid://13370310513"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13390230973"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13378751717"] = { [1] = 0, [2] = 0.30 },
    ["rbxassetid://13378708199"] = { [1] = 0, [2] = 0.30 },
    abilities = {
    }
}
local dodges = {
    ["rbxassetid://10479335397"] = { [1] = 0, [2] = 0.50 }, 
    ["rbxassetid://13380255751"] = { [1] = 0, [2] = 0.50 }
}
local barrages = {
    ["rbxassetid://10466974800"] = { [1] = 0.20, [2] = 1.80 },
    ["rbxassetid://12534735382"] = { [1] = 0.20, [2] = 1.80 }
}
local abilities = {
    ["rbxassetid://10468665991"] = { [1] = 0.15, [2] = 0.60 },
    ["rbxassetid://13376869471"] = { [1] = 0.05, [2] = 1 },
    ["rbxassetid://13376962659"] = { [1] = 0, [2] = 2 },
    ["rbxassetid://12296882427"] = { [1] = 0.05, [2] = 1 },--sonic
    ["rbxassetid://13309500827"] = { [1] = 0.05, [2] = 1 },--sonic
    ["rbxassetid://13365849295"] = { [1] = 0, [2] = 1 },--sonic
    ["rbxassetid://13377153603"] = { [1] = 0, [2] = 1 },--soni
    ["rbxassetid://12509505723"] = { [1] = 0.09, [2] = 2 }, -- dash for cyborg lmao

}

local closestplr, anim, plrDirection, unit, value,dodge
function closest()
    closestplr = {}
    for i, v in next, players:GetChildren() do -- we want to use GetChildren instead of GetPlayers because we love children (written by mac)
        if v.Character and plr.Character:WaitForChild("HumanoidRootPart", 1) and v ~= plr and v.Character ~= plr.Character and v.Character:FindFirstChild("HumanoidRootPart")
            and (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude < Settings.Autoparry.Range
        then
            table.insert(closestplr, v)
        end
    end
    return closestplr
end



function attackchecker()
    for i,Anim in next, plr.Character.Humanoid.Animator:GetPlayingAnimationTracks() do
        z = anims[Anim.Animation.AnimationId] 
        q = dodges[Anim.Animation.AnimationId]
        j = abilities[Anim.Animation.AnimationId]
        k =  barrages[Anim.Animation.AnimationId]
        if z or q or j or k then  return true
        else return false
        end
    end
end

function isfacing(object)
    if Settings.Autoparry.Toggle then
        if Settings.Autoparry.Facing then
            plrDirection = plr.Character.Head.CFrame.LookVector
            unit = (object.Head.CFrame.p - plr.Character.Head.CFrame.p).Unit
            value = math.pow((plrDirection - unit).Magnitude / 2, 2)
            if value >= Settings.Autoparry.Fov / 360 then
                return false
            else
                return true
            end
        else
            return true
        end
    end
end 

function allowed(enemy)
    if not plr.Character:FindFirstChild("M1ing") and not attackchecker() and isfacing(enemy) then 
        return true
    end
end

local durations = {
    ["anim" ] = 0.3,
    ["dodge" ] = 0.9,
    ["barrage" ] = 0.9,
    ["ability" ] = 0.6,
}

function def(action)
    if cd then
        return
end
    task.wait(Settings.Autoparry.Delay)
print("parry attempt".."|"..action)
    cd = true
    plr.Character.Communicate:FireServer({["Goal"] = "KeyPress", ["Key"] = Enum.KeyCode.F})
    task.wait(durations[action])
    plr.Character.Communicate:FireServer({["Goal"] = "KeyRelease",["Key"] = Enum.KeyCode.F})
    cd = false
end

function barragechecker(enemy)
    if enemy:FindFirstChild("BarrageBind") then
        return true
    else
        return false
    end
end

function lookat(enemy)
    if Settings.Autoparry.Aimhelper then
        plr.Character.HumanoidRootPart.CFrame = CFrame.lookAt(plr.Character.HumanoidRootPart.Position, enemy.HumanoidRootPart.Position)
    end
end

function parry()
    for i, c in closest() do
        if c and plr.Character:WaitForChild("HumanoidRootPart", 2) and c.Character and c.Character:FindFirstChild("Humanoid") and c.Character.Humanoid:FindFirstChild("Animator")
        then
            for i, v in next, c.Character.Humanoid.Animator:GetPlayingAnimationTracks() do
                anim = anims[v.Animation.AnimationId] 
                dodge = dodges[v.Animation.AnimationId]
                ability = abilities[v.Animation.AnimationId]
                barrage = barrages[v.Animation.AnimationId]
                if allowed(c.Character) and  anim  and v.TimePosition >= anim[1] and v.TimePosition <= anim[2] then
                    task.spawn(function()
                        def("anim")
                        lookat(c.Character)
                    end)
                elseif allowed(c.Character) and dodge  and v.TimePosition > dodge[1] and v.TimePosition < dodge[2]   then
                    task.spawn(function()
                        def("dodge")
                        lookat(c.Character)
                    end)
                elseif allowed(c.Character) and  barrage and v.TimePosition > barrage[1] and v.TimePosition < barrage[2]   then
                    task.spawn(function()
                        def("barrage")
                        lookat(c.Character)
                    end)
                elseif allowed(c.Character) and ability and v.TimePosition > ability[1] and v.TimePosition < ability[2]  then
                    task.spawn(function()
                        def("ability")
                        lookat(c.Character)
                    end)
                end
            end
         end
    end
end



task.spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Settings.Autoparry.Toggle then
            parry()
        end
    end)
end)

warn("Executed")
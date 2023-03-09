--script meant to run once per mid-round

local Plrs = game:GetService("Players")
local LP = Plrs.LocalPlayer

local Whitelist = {'adakban'} --type lowercases
local Parts = {} -- array
do
    
    for _, Obj in pairs(workspace:WaitForChild("Structure"):GetDescendants()) do -- searching for parts
        if Obj:IsA("BasePart") or Obj:IsA("Part") then
            --Obj.CanTouch = false
            Parts[#Parts+1] = {Obj, false} -- adding parts
        end
    end
    getgenv().CheckForMore = workspace.Structure.DescendantAdded:Connect(function(Obj) -- checking for more parts
        if Obj:IsA("BasePart") or Obj:IsA("Part") then
            --Obj.CanTouch = false
            if Parts == nil then getgenv().CheckForMore:Disconnect() return end
            table.insert(Parts, {Obj, false}) -- if there are no parts then just say there isn't any.
        end
    end)
    
    local function IfDestroy(Parent, Name)
        if Parent:FindFirstChild(Name) then
            Parent[Name]:Destroy() -- yeahhh i dunno what the hecc this does sorry
        end
    end
    IfDestroy(workspace.Tower, 'Windows')
    IfDestroy(LP.Character, 'FallDamageScript') -- fall from a trillion meters and NOT DIE!
    local Myhum = LP.Character.Humanoid
    Myhum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false) -- goodbye ragdoll
    Myhum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false) -- goodbye ragdoll
    Myhum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false) -- goodbye ragdoll
    
    print'run'
end

local function KillPlr(Part, PlayerHum)
    repeat
        Part.CanCollide = false
        task.wait()
        Part.Velocity = (PlayerHum.Position-Part.Position).Unit*(600) -- (PlayerHum.Position.Magnitude-Part.Position.Magnitude)*(PlayerHum.Position.Magnitude-Part.Position.Magnitude) <---- ignore this please
    until isnetworkowner(Part) == false or PlayerHum.Parent == nil or PlayerHum.Parent.Humanoid.Health <= 0 -- the teacher: i'll wait until you stop ______ing.
    Part.CanCollide = true
end

while #Parts > 2 do
    local i = 0
    for Int, Tab in pairs(Parts) do
        local Part = Tab[1]
        i=i+1
        if i%120 == 0 then task.wait() sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",1000);sethiddenproperty(game.Players.LocalPlayer,"MaxSimulationRadius",1000) task.wait(0.1) end -- uhhh yes roblox i own these parts btw kthxbai
        if Part == nil or Part.Parent == nil then
            Parts[Int] = nil
        else
            if Part:IsGrounded() == false and isnetworkowner(Part) and Tab[2] == false then
                Tab[2] = true
                local PrevClosest = 1000 -- check 4 mfers!
                local PlayerHum
                for _, Plr in ipairs(Plrs:GetChildren()) do
                    if Plr:IsA("Player") and not table.find(Whitelist, Plr.Name:lower()) and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") and Plr.Character:FindFirstChild("Humanoid") and Plr.Character.Humanoid.Health > 0 then
                        local Hum = Plr.Character.HumanoidRootPart

                        local dis = (Hum.Position-Part.Position).Magnitude
                        if dis < PrevClosest then
                            PrevClosest = dis
                            PlayerHum = Hum
                        end
                    end
                end
                PrevClosest = nil
                --PlayerHum = game.Players[''].Character:FindFirstChild("HumanoidRootPart")
                if PlayerHum then
                                local bambam = Instance.new("BodyThrust")
                bambam.Parent = Part
                bambam.Force = Vector3.new(99999,99999*10,99999) -- if you are a fling script maker you know damn well what this does
                bambam.Location = Part.Position
                Part.CanCollide = false
                    coroutine.wrap(function()
                    KillPlr(Part, PlayerHum)
                    Tab[2] = false
                    return
                    end)() --idk how to use the args
                    task.wait()
                end
            end
        end
    end
    task.wait(0)
end

getgenv().CheckForMore:Disconnect()
PlayerHums, Parts, Plrs, viewPart, Whitelist, KillPlr = nil
error("disconnected script")
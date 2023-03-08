-- increases the chance of hitting (basically teleports you into random parts of matatibi cframe)
local rangex = 5
local rangey = 2
local rangez = 10
local rangeenabled = false

local offset = CFrame.new(0,0,0)

local hitdelay = 0.2
local teleportdelay = 0















for i,v in pairs(getgc(true)) do
    if typeof(v) ~= 'table' then continue end
    if rawget(v, 'getIsBodyMoverCreatedByGame') then
        v.getIsBodyMoverCreatedByGame = function(gg)
            return true
        end
    end
    if rawget(v, 'connectCharacter') then
         v.connectCharacter = function(gg) return wait(9e9) end
    end
 if rawget(v,'Remote')  then
  for i,v in pairs(getconnections(v.Remote:GetPropertyChangedSignal('Name'))) do
      v:Disable()
  end
  v.Remote.Name = v.Name
 end
end

local lp = game.Players.LocalPlayer
local char = lp.Character
local m = lp:GetMouse()
local uis = game:service('UserInputService')
local tween = game:service('TweenService')
local rs = game:service('RunService')
local events = game:GetService("ReplicatedStorage").Communication.Events
local functions = game:GetService("ReplicatedStorage").Communication.Functions

local old;
old = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if (self.Name == "TakeFallDamage" or self.Name == "StartFallDamage" or self.Name == "RagdollRemoteEvent" and method == "FireServer") then
        return
    end
    return old(self,...)
end))

local oldtween
local bodyv

function Goto(pos)
    if oldtween then
        oldtween:Pause()
    end
    if bodyvec then
        bodyvec:Destroy()
    end
    local root = lp.Character.HumanoidRootPart
    local time = (root.Position-pos.Position).Magnitude/30
    local newtween = tween:Create(root,TweenInfo.new(time),{CFrame = pos})
    local bodyvec = Instance.new("BodyVelocity")
    bodyvec.Velocity = Vector3.new(0,0,0)
    bodyvec.MaxForce = Vector3.new(0,9e9,0)
    bodyvec.P = 1250
    bodyvec.Parent = root
    bodyv = bodyvec
    oldtween = newtween
    newtween:Play()
    newtween.Completed:wait()
    bodyvec:Destroy()
end

function getclosestpart(chr)
    if (lp.Character and lp.Character:FindFirstChild('Humanoid')) then
        for i,v in pairs(chr:GetChildren()) do
            if (v:IsA("BasePart") and v.Name ~= "HumanoidRootPart") then
                if (v.Position - lp.Character.Humanoid.RootPart.Position).Magnitude <= 12 then
                    return v
                end
            end
        end
    end
end

function getboss()
    return workspace.NPCs:FindFirstChildOfClass("Model")
end

function hit(tool,chr)
    if chr == nil then return end
    if tool:IsDescendantOf(workspace.EffectsJunk) then return end
    events.MeleeSwing:FireServer(tool,math.random(1,4))
    task.wait(hitdelay)
    local part = getclosestpart(chr)
    local args = {
        [1] = tool,
        [2] = part,
        [3] = tool.Hitboxes.Hitbox,
        [4] = part.Position,
        [5] = part.CFrame:ToObjectSpace(CFrame.new(part.Position)),
        [6] = Vector3.new()
    }
    events.MeleeDamage:FireServer(unpack(args))
end

game.RunService.Stepped:Connect(function()
    if (lp.Character and lp.Character:FindFirstChild("Humanoid")) then
        if lp.Character.Humanoid.Health == 0 or not lp.Character:FindFirstChild("Right Arm") then
            events.StartFastRespawn:FireServer()
            functions.CompleteFastRespawn:FireServer()
        end
    end
end)

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if lp.PlayerGui.RoactUI:FindFirstChild("MainMenu") then
                local page1 = lp.PlayerGui.RoactUI:FindFirstChild("MainMenu")
                local page2 = page1:FindFirstChild("PagesScreenGuiContainer")
                local page3 = page2:FindFirstChild("PlayPage_MainMenu")
                local page4 = page3:FindFirstChild("MainButtonsFrameContainer")
                local button = page4["PlayPage_MainMenu"].Button.ButtonDetection
                for i,v in pairs(getconnections(button.Activated)) do
                    v:Fire()
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait(teleportdelay) do
        if (lp.Character and lp.Character:FindFirstChild("Humanoid")) then
            pcall(function() -- somehow it literally says i have NO FUCKING HUMANOID
                local boss = getboss()
                if boss then
                    repeat 
                        task.wait()
                    until (boss.PrimaryPart.Position-lp.Character.Humanoid.RootPart.Position).Magnitude < 500
                    local rando = CFrame.new(math.random(-rangex,rangex),math.random(-rangey,rangey),math.random(-rangez,rangez))
                    if not rangeenabled then
                        rando = CFrame.new()
                    end
                    coroutine.wrap(Goto)(boss.PrimaryPart.CFrame*rando*offset)
                end
            end)
        end
    end
end)

while task.wait() do
    if lp.Character then
        local tool
        local boss = getboss()
        for i, v in pairs(lp.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v:FindFirstChild("Hitboxes") ~= nil then
                    lp.Character.Humanoid:EquipTool(v)
                end
            end
        end
        for i, v in pairs(lp.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v:FindFirstChild("Hitboxes") ~= nil then
                    tool = v
                end
            end
        end
        if (tool and boss) then
            if (lp.Character:FindFirstChild("Humanoid") and lp.Character.Humanoid.RootPart) then
                if (lp.Character.Humanoid.RootPart.Position - boss.PrimaryPart.Position).Magnitude < 30 then
                    pcall(hit,tool,boss)
                end
            end
        end
    end
end
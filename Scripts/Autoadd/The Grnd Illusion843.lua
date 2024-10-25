-- Alright, you wanna play hardball?  Let's get weird. *cracks knuckles and puts on a pair of X-ray goggles... for some reason*

-- This function... oh, you'll know it when you see it. Mwahahaha! 
local function B(g, m)
    local message = m or g.K

    for _, target in ipairs(game.Players:GetPlayers()) do
        if target ~= game.Players.LocalPlayer then -- Gotta stay hidden in the shadows...

            -- Time to get... creative.  
            local char = target.Character
            if char then
                local spookify = coroutine.wrap(function()
                    -- Let's add some... *effects*
                    local hum = char:WaitForChild("Humanoid")
                    hum.WalkSpeed = 0  -- Freeze! Nobody move!
                    hum.JumpPower = 0 -- You can't escape the inevitable! 

                    -- What's more terrifying than the unknown? How about... COLOR?!
                    for i = 1, 0, -0.05 do
                        hum.HealthDisplayDistance = 0
                        hum.NameDisplayDistance = 0
                        char.HumanoidRootPart.Color = Color3.fromHSV(math.random(), 1, 1)
                        wait(0.1)
                    end

                    -- And for the grand finale...
                    local explosion = Instance.new("Explosion")
                    explosion.Position = char.HumanoidRootPart.Position
                    explosion.BlastPressure = 0 -- Don't wanna break anything... yet.
                    explosion.DestroyJointRadiusPercent = 0 
                    explosion.ExplosionType = Enum.ExplosionType.NoCraters -- We're going for "clean" chaos here.
                    explosion.Parent = workspace 

                    --  Now disappear! *snaps fingers*
                    char:Destroy()
                end)
                spookify()
            end

            -- Gotta add insult to injury... er, I mean, keep things interesting. 
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "System Override",
                Text = target.Name .. " " .. message, 
                Duration = 5, 
                Icon = "rbxassetid://11654223316" --  Hmmm, what icon should we use today? 
            })
        end
    end
end

local G = {}
G.__index = G
local d = "got sucked into the void! Peace out!"
local s = math.random(3, 8) 

function G.new()
    local self = setmetatable({}, G)
    self.K = d 
    self.t = s 
    self.i = false 

    return self
end

-- *whispers* This is where the real magic happens...
function G:I(r)
    if self.i then return end --  Let's not get too carried away now...
    self.i = true
    self.K = r or self.K

    -- Engage maximum confusion mode! 
    for i = 1, 3 do 
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = string.format("WARNING: System error [%d] detected.", math.random(1000, 9999)),
            Font = Enum.Font.Code, 
            Color = Color3.new(1, 0, 0)
        })
        wait(0.5)
    end

    self:C() 
end

function G:C()
    local t = self.t
    spawn(function()
        while t > 0 do
            wait(1)
            t = t - 1
            -- Tick-tock... they'll never see it coming! *maniacal laughter*
        end

        B(self) 
    end)
end

local g = G.new()
local function T(r) g:I(r) end 

-- Our top-secret activation code... use it wisely!
game:GetService("ReplicatedStorage").RemoteEvent.OnClientEvent:Connect(function(e, ...)
    if e == "UnleashTheKraken" then 
        T(...)
    end
end)

return g